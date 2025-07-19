using Content.Server.Atmos.EntitySystems;
using Content.Server.Destructible;
using Content.Server.Explosion.EntitySystems;
using Content.Server.Light.Components;
using Content.Server.Light.EntitySystems;
using Content.Server.Power.Components;
using Content.Server.Power.EntitySystems;
using Content.Server.Power.SMES;
using Content.Server.Radio.EntitySystems;
using Content.Server.Solar.Components;
using Content.Shared.Atmos;
using Content.Shared.Damage;
using Content.Shared.Examine;
using Content.Shared.Projectiles;
using Content.Shared.Radiation.Components;
using Content.Shared.Supermatter;
using Robust.Server.GameObjects;
using Robust.Shared.Physics.Events;
using Robust.Shared.Prototypes;
using Robust.Shared.Random;
using Robust.Shared.Timing;

namespace Content.Server.Supermatter;

public sealed class SupermatterSystem : EntitySystem
{
    [Dependency]
    private readonly SharedPointLightSystem _lights = default!;
    [Dependency]
    private readonly AtmosphereSystem _atmosphere = default!;
    [Dependency]
    private readonly SharedAppearanceSystem _appearance = default!;
    [Dependency]
    private readonly IRobustRandom _random = default!;
    [Dependency]
    private readonly DamageableSystem _damageable = default!;
    [Dependency]
    private readonly RadioSystem _radio = default!;
    [Dependency]
    private readonly IGameTiming _timing = default!;
    [Dependency]
    private readonly PoweredLightSystem _poweredLight = default!;
    [Dependency]
    private readonly ApcSystem _apc = default!;
    [Dependency]
    private readonly BatterySystem _battery = default!;
    [Dependency]
    private readonly IPrototypeManager _prototypeManager = default!;
    [Dependency]
    private readonly ExplosionSystem _explosion = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<SupermatterComponent, ExaminedEvent>(OnExamine);
        SubscribeLocalEvent<SupermatterComponent, StartCollideEvent>(OnCollide);
    }

    private void OnCollide(Entity<SupermatterComponent> entity, ref StartCollideEvent args)
    {
        var target = args.OtherEntity;
        if (TryComp<ProjectileComponent>(target, out var projectile))
        {
            if (TryComp<SupermatterFoodComponent>(target, out var supermatterFood))
            {
                entity.Comp.Power += supermatterFood.Power * entity.Comp.ChargingFactor / entity.Comp.PowerFactor;
            }
            else
            {
                var damage = projectile.Damage * _damageable.UniversalProjectileDamageModifier;
                if (damage.AnyPositive())
                {
                    return;
                }
                entity.Comp.Damage += damage.GetTotal().Float();
            }
        }
        else
        {
            QueueDel(target);
            //TODO: better consumption visuals
            entity.Comp.Power += 200;
        }
    }

    private void OnExamine(Entity<SupermatterComponent> entity, ref ExaminedEvent args)
    {
        string integrityMessage;
        switch (GetIntegrity(entity.Comp))
        {
            case <= 30:
                integrityMessage = Loc.GetString("supermatter-system-examine-highly-unstable");
                break;
            case > 30 and < 70:
                integrityMessage = Loc.GetString("supermatter-system-examine-unstable");
                break;
            default:
                integrityMessage = Loc.GetString("supermatter-system-examine-stable");
                break;
        }
        args.PushMarkup(integrityMessage);

        if (!args.IsInDetailsRange)
            return;

        var displayPower = entity.Comp.Power;
        displayPower *= 0.85f + 0.3f * _random.NextFloat();

        int RoundToNearestMultiple(float val, int factor)
        {
            return (int)Math.Round(
                (val / (double)factor),
                MidpointRounding.AwayFromZero
            ) * factor;
        }

        var displayPowerInt = RoundToNearestMultiple(displayPower, 20);
        args.PushMarkup(Loc.GetString("supermatter-system-examine-energy", ("power", displayPowerInt)));
    }

    private void AnnounceWarning(Entity<SupermatterComponent> entity)
    {
        var integrity = GetIntegrity(entity.Comp);

        string alertMessage;
        if (entity.Comp.Damage > entity.Comp.EmergencyPoint)
        {
            alertMessage = Loc.GetString("supermatter-system-alert-emergency", ("integrity", integrity));
            entity.Comp.LastWarning = _timing.CurTime.Add(TimeSpan.FromSeconds(-(entity.Comp.WarningDelay * 4)));
        }
        else if (entity.Comp.Damage >= entity.Comp.DamageArchived)
        {
            entity.Comp.SafeWarned = false;
            alertMessage = Loc.GetString("supermatter-system-alert-warning", ("integrity", integrity));
            entity.Comp.LastWarning = _timing.CurTime;
        }
        else if (!entity.Comp.SafeWarned)
        {
            entity.Comp.SafeWarned = true;
            alertMessage = Loc.GetString("supermatter-system-alert-safe");
            entity.Comp.LastWarning = _timing.CurTime;
        }
        else
        {
            return;
        }

        _radio.SendRadioMessage(entity.Owner, alertMessage, entity.Comp.AlertRadioChannel, entity.Owner);

        if ((entity.Comp.Damage > entity.Comp.EmergencyPoint) && !entity.Comp.PublicAlerted)
        {
            _radio.SendRadioMessage(entity.Owner, Loc.GetString("supermatter-system-alert-emergency-public"), entity.Comp.PublicRadioChannel, entity.Owner);
            entity.Comp.PublicAlerted = true;
            // music?
        }
        else if (entity.Comp.SafeWarned && entity.Comp.PublicAlerted)
        {
            _radio.SendRadioMessage(entity.Owner, alertMessage, entity.Comp.PublicRadioChannel, entity.Owner);
            entity.Comp.PublicAlerted = false;
        }
    }

    private void ShiftLight(EntityUid uid, float luminosity, Color color, PointLightComponent? pointLight = null)
    {
        if (!Resolve(uid, ref pointLight))
        {
            return;
        }

        _lights.SetEnergy(uid, luminosity, pointLight);
        _lights.SetColor(uid, color, pointLight);
    }

    private void Explode(Entity<SupermatterComponent> ent)
    {
        //TODO: Effect 1: Radiation, weakening to all mobs on Z level

        // Effect 2: Electrical pulse
        var lightQuery = EntityQueryEnumerator<PoweredLightComponent>();
        while (lightQuery.MoveNext(out var lightEnt, out var light))
        {
            if (_random.Prob(ent.Comp.LightsOverloadChance))
                _poweredLight.TryDestroyBulb(lightEnt, light);
        }
        var apcQuery = EntityQueryEnumerator<ApcComponent>();
        while (apcQuery.MoveNext(out var uid, out var apc))
        {
            if (apc.MainBreakerEnabled)
                _apc.ApcToggleBreaker(uid, apc);
        }
        var batteryQuery = EntityQueryEnumerator<BatteryComponent>();
        var smesQuery = GetEntityQuery<SmesComponent>();
        while (batteryQuery.MoveNext(out var uid, out var battery))
        {
            float chance;
            if (smesQuery.HasComp(uid))
            {
                chance = ent.Comp.SmesDisableChance;
            }
            else
            {
                chance = ent.Comp.BatteryDisableChance;
            }
            if (_random.Prob(chance))
            {
                _battery.SetCharge(uid, 0, battery);
            }
        }

        // Effect 3: Break solar arrays
        var solarPanelQuery = EntityQueryEnumerator<SolarPanelComponent, DamageableComponent, DestructibleComponent>();
        var damageType = _prototypeManager.Index(ent.Comp.BreakSolarPanelDamageType);
        var damageSpecifier = new DamageSpecifier(damageType, ent.Comp.BreakSolarPanelDamageValue);
        while (solarPanelQuery.MoveNext(out var uid, out var _, out var damageable, out var _))
        {
            if (_random.Prob(ent.Comp.BreakSolarPanelChance))
            {
                _damageable.SetDamage(uid, damageable, damageSpecifier);
            }
        }

        // Effect 4: Medium scale explosion
        _explosion.TriggerExplosive(ent.Owner);
    }

    private int GetIntegrity(SupermatterComponent supermatter)
    {
        var integrity = supermatter.Damage / supermatter.ExplosionPoint;
        var integrityInt = (int)Math.Max(Math.Round(100 - integrity * 100), 0);
        return integrityInt;
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var transformQuery = GetEntityQuery<TransformComponent>();
        var radiationQuery = GetEntityQuery<RadiationSourceComponent>();

        var query = EntityQueryEnumerator<SupermatterComponent>();
        while (query.MoveNext(out var uid, out var supermatter))
        {
            if (!transformQuery.TryGetComponent(uid, out var transformComponent))
            {
                continue;
            }

            if (supermatter.Damage > supermatter.ExplosionPoint)
            {
                AnnounceWarning((uid, supermatter));
                Explode((uid, supermatter));
            }
            else if (supermatter.Damage > supermatter.EmergencyPoint)
            {
                ShiftLight(uid, 7, supermatter.EmergencyColor);
                if (_timing.CurTime - supermatter.LastWarning >= TimeSpan.FromSeconds(supermatter.WarningDelay * 10))
                {
                    AnnounceWarning((uid, supermatter));
                }
            }
            else if (supermatter.Damage > supermatter.WarningPoint)
            {
                ShiftLight(uid, 5, supermatter.WarningColor);
                if (_timing.CurTime - supermatter.LastWarning >= TimeSpan.FromSeconds(supermatter.WarningDelay * 10))
                {
                    AnnounceWarning((uid, supermatter));
                }
            }
            else
            {
                ShiftLight(uid, 4, supermatter.BaseColor);
            }

            // TODO: grav_pulling

            var mixture = _atmosphere.GetTileMixture((uid, transformComponent), true);

            GasMixture? removed = null;
            if (mixture is not null)
                removed = mixture.Remove(supermatter.GasEffeciency * mixture.TotalMoles);

            supermatter.DamageAccumulator += frameTime;

            if (mixture is null || removed is null || removed.TotalMoles == 0)
            {
                if (supermatter.DamageAccumulator >= supermatter.DamageFrequency)
                {
                    supermatter.DamageArchived = supermatter.Damage;
                    supermatter.Damage = Math.Max((supermatter.Power - 15 * supermatter.PowerFactor) / 10, 0);
                    supermatter.DamageAccumulator -= supermatter.DamageFrequency;
                }
            }
            // TODO: grav_pulling
            else
            {
                var damageIncreaseLimit = (supermatter.Power / 300) * (supermatter.ExplosionPoint / 1000) * supermatter.DamageRateLimit;

                if (supermatter.DamageAccumulator >= supermatter.DamageFrequency)
                {
                    supermatter.DamageArchived = supermatter.Damage;
                    supermatter.Damage = Math.Max(0, supermatter.Damage + Math.Clamp((removed.Temperature - supermatter.CriticalTemperature) / 150, -supermatter.DamageRateLimit, damageIncreaseLimit));
                    supermatter.DamageAccumulator -= supermatter.DamageFrequency;
                }

                var oxygen = Math.Clamp((removed.GetMoles(Gas.Oxygen) - (removed.GetMoles(Gas.Nitrogen) * supermatter.NitrogenRetardationFactor)) / removed.TotalMoles, 0, 1);
                float equilibriumPower;
                if (oxygen > 0.8)
                {
                    equilibriumPower = 400;
                    _appearance.SetData(uid, SupermatterVisualState.Glowing, true);
                }
                else
                {
                    equilibriumPower = 250;
                    _appearance.SetData(uid, SupermatterVisualState.Glowing, false);
                }

                var tempFactor = (float)Math.Pow(equilibriumPower / supermatter.DecayFactor, 3) / 800;
                supermatter.Power = Math.Max((removed.Temperature * tempFactor) * oxygen + supermatter.Power, 0);

                var deviceEnergy = supermatter.Power * supermatter.ReactionPowerModifier * frameTime * 2;

                removed.AdjustMoles(Gas.Plasma, Math.Max(deviceEnergy / supermatter.PlasmaReleaseModifier, 0));
                removed.AdjustMoles(Gas.Oxygen, Math.Max((deviceEnergy + removed.Temperature - Atmospherics.T0C) / supermatter.OxygenReleaseModifier, 0));

                var thermal_power = supermatter.ThermalReleaseModifier * deviceEnergy;

                _atmosphere.AddHeat(removed, thermal_power);
                _atmosphere.Merge(mixture, removed);
            }

            // TODO: hallucination

            if (radiationQuery.TryGetComponent(uid, out var radiationSource))
            {
                var radPower = supermatter.Power * supermatter.RadiationReleaseModifier;
                var range = (float)Math.Min(Math.Round(Math.Sqrt(radPower / 0.15)), 31);
                radiationSource.Intensity = radPower;
                radiationSource.Slope = radPower / range * 2;
            }
            supermatter.Power -= (float)Math.Pow(supermatter.Power / supermatter.DecayFactor, 3);
        }
    }
}