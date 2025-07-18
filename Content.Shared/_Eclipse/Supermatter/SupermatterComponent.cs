using Content.Shared.Damage.Prototypes;
using Content.Shared.Radio;
using Content.Shared.Tag;
using Robust.Shared.GameStates;
using Robust.Shared.Prototypes;
using Robust.Shared.Serialization;
using Robust.Shared.Serialization.TypeSerializers.Implementations.Custom.Prototype;

namespace Content.Shared.Supermatter;

[RegisterComponent, NetworkedComponent]
public sealed partial class SupermatterComponent : Component
{
    [DataField]
    public float Damage = 0;

    [DataField]
    public float DamageArchived = 0;

    [DataField]
    public float ExplosionPoint = 1000;

    [DataField]
    public float EmergencyPoint = 700;

    [DataField]
    public float WarningPoint = 100;

    [DataField]
    public Color EmergencyColor = new Color(199, 140, 32);

    [DataField]
    public Color WarningColor = new Color(255, 208, 79);

    [DataField]
    public Color BaseColor = new Color(146, 122, 16);

    [DataField]
    public float DamageRateLimit = 4.5f;

    [DataField]
    public float Power = 0;

    [DataField]
    public float GasEffeciency = 0.25f;

    [DataField]
    public float PowerFactor = 1.0f;

    [DataField]
    public float CriticalTemperature = 5000;

    [DataField]
    public float NitrogenRetardationFactor = 0.15f;

    [DataField]
    public float DecayFactor = 700;

    [DataField]
    public float ReactionPowerModifier = 1.1f;

    [DataField]
    public float PlasmaReleaseModifier = 1500;

    [DataField]
    public float OxygenReleaseModifier = 15000;

    [DataField]
    public float ThermalReleaseModifier = 15000;

    [DataField]
    public float RadiationReleaseModifier = 1;

    [DataField]
    public float ChargingFactor = 0.05f;

    [DataField]
    public bool SafeWarned = true;

    [DataField]
    public ProtoId<RadioChannelPrototype> AlertRadioChannel = "Engineering";

    [DataField]
    public ProtoId<RadioChannelPrototype> PublicRadioChannel = "Common";

    [DataField]
    public bool PublicAlerted = false;

    [DataField]
    public int WarningDelay = 20;

    [DataField]
    public float LightsOverloadChance = 0.1f;

    [DataField]
    public float BatteryDisableChance = 0.5f;

    [DataField]
    public float SmesDisableChance = 0.8f;

    [DataField]
    public float BreakSolarPanelChance = 0.1f;

    [DataField]
    public ProtoId<DamageTypePrototype> BreakSolarPanelDamageType = "Structural";

    [DataField]
    public float BreakSolarPanelDamageValue = 150;

    public TimeSpan LastWarning = TimeSpan.Zero;
}

[Serializable, NetSerializable]
public enum SupermatterVisualState : byte
{
    Glowing
}