using Content.Shared;
using Content.Shared.Light.Components;
using Content.Shared.Light.EntitySystems;
using Content.Shared.Maps;
using Robust.Shared.Random;

namespace Content.Server.Light.EntitySystems;

/// <inheritdoc/>
public sealed class LightCycleSystem : SharedLightCycleSystem
{
    [Dependency] private readonly IRobustRandom _random = default!;

    // Eclipse-Start
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<LightCycleComponent, PostMapInitEvent>(OnCyclePostMapInit);
    }
    // Eclipse-End

    protected override void OnCycleMapInit(Entity<LightCycleComponent> ent, ref MapInitEvent args)
    {
        base.OnCycleMapInit(ent, ref args);

        CycleInit(ent); // Eclipse
    }

    // Eclipse-Start
    private void OnCyclePostMapInit(Entity<LightCycleComponent> ent, ref PostMapInitEvent args)
    {
        CycleInit(ent);
    }

    private void CycleInit(Entity<LightCycleComponent> ent)
    {
        if (ent.Comp.InitialOffset)
        {
            SetOffset(ent, _random.Next(ent.Comp.Duration));
        }
    }
    // Eclipse-End
}
