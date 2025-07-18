using Content.Shared.Light;
using Robust.Shared.Audio;

namespace Content.Client.Supermatter;

[RegisterComponent]
[Access(typeof(SupermatterVisualizerSystem))]
public sealed partial class SupermatterVisualsComponent : Component
{
    [DataField("spriteStateMap")]
    [ViewVariables(VVAccess.ReadOnly)]
    public Dictionary<bool, string> SpriteStateMap = new()
    {
        [true] = "supermatter_glowing",
        [false] = "supermatter",
    };
}