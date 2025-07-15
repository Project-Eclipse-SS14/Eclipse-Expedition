using Content.Server.Lightning;
using Content.Server.Tesla.Components;
using Content.Shared.Maps;
using Robust.Shared.Random;
using Robust.Shared.Timing;

namespace Content.Server.Tesla.EntitySystems;

/// <summary>
/// Fires electric arcs at surrounding objects.
/// </summary>
public sealed class LightningArcShooterSystem : EntitySystem
{
    [Dependency] private readonly IGameTiming _gameTiming = default!;
    [Dependency] private readonly LightningSystem _lightning = default!;
    [Dependency] private readonly IRobustRandom _random = default!;

    public override void Initialize()
    {
        base.Initialize();
        SubscribeLocalEvent<LightningArcShooterComponent, MapInitEvent>(OnShooterMapInit);
        SubscribeLocalEvent<LightningArcShooterComponent, PostMapInitEvent>(OnShooterPostMapInit); // Eclipse
    }

    private void OnShooterMapInit(EntityUid uid, LightningArcShooterComponent component, ref MapInitEvent args)
    {
        ShooterInit(uid, component); // Eclipse
    }

    // Eclipse-Start
    private void OnShooterPostMapInit(EntityUid uid, LightningArcShooterComponent component, ref PostMapInitEvent args)
    {
        ShooterInit(uid, component);
    }

    private void ShooterInit(EntityUid uid, LightningArcShooterComponent component)
    {
        component.NextShootTime = _gameTiming.CurTime + TimeSpan.FromSeconds(component.ShootMaxInterval);
    }
    // Eclipse-End

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<LightningArcShooterComponent>();
        while (query.MoveNext(out var uid, out var arcShooter))
        {
            if (arcShooter.NextShootTime > _gameTiming.CurTime)
                continue;

            ArcShoot(uid, arcShooter);
            var delay = TimeSpan.FromSeconds(_random.NextFloat(arcShooter.ShootMinInterval, arcShooter.ShootMaxInterval));
            arcShooter.NextShootTime += delay;
        }
    }

    private void ArcShoot(EntityUid uid, LightningArcShooterComponent component)
    {
        var arcs = _random.Next(1, component.MaxLightningArc);
        _lightning.ShootRandomLightnings(uid, component.ShootRange, arcs, component.LightningPrototype, component.ArcDepth);
    }
}
