using Content.Server.Maps.PathGenerators;
using Robust.Shared.Utility;

namespace Content.Server.GameTicking.Rules.Components;

[RegisterComponent, Access(typeof(EndRoundSaveMapRuleSystem))]
public sealed partial class EndRoundSaveMapRuleComponent : Component
{

}

[RegisterComponent, Access(typeof(EndRoundSaveMapRuleSystem))]
public sealed partial class RoundEndSaveTargetComponent : Component
{
    [DataField(required: true)]
    public DynamicMapPathGenerator DynamicMapPathGenerator { get; private set; } = default!;
}