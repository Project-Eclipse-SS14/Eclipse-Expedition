using Robust.Shared.Utility;

namespace Content.Server.Maps.PathGenerators;

[ImplicitDataDefinitionForInheritors]
public abstract partial class DynamicMapPathGenerator
{
    public abstract ResPath Generate();
}
