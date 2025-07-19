using Content.Shared.Tag;
using Robust.Shared.GameStates;
using Robust.Shared.Serialization;
using Robust.Shared.Serialization.TypeSerializers.Implementations.Custom.Prototype;

namespace Content.Shared.Supermatter;

[RegisterComponent, NetworkedComponent]
public sealed partial class SupermatterFoodComponent : Component
{
    [DataField]
    public float Power = 20;
}