using Content.Server.Maps.PathGenerators;

namespace Content.Server.Maps;

public sealed partial class GameMapPrototype
{
    [DataField]
    public bool DynamicMapPath { get; private set; } = false;

    [DataField]
    public DynamicMapPathGenerator? DynamicMapPathGenerator { get; private set; } = default;
}
