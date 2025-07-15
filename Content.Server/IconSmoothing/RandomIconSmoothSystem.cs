using Content.Shared.IconSmoothing;
using Content.Shared.Maps;
using Robust.Shared.Random;

namespace Content.Server.IconSmoothing;

public sealed partial class RandomIconSmoothSystem : SharedRandomIconSmoothSystem
{
    [Dependency] private readonly IRobustRandom _random = default!;
    [Dependency] private readonly SharedAppearanceSystem _appearance = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<RandomIconSmoothComponent, MapInitEvent>(OnMapInit);
        SubscribeLocalEvent<RandomIconSmoothComponent, PostMapInitEvent>(OnPostMapInit); // Eclipse
    }

    private void OnMapInit(Entity<RandomIconSmoothComponent> ent, ref MapInitEvent args)
    {
        Init(ent); // Eclipse
    }

    // Eclipse-Start
    private void OnPostMapInit(Entity<RandomIconSmoothComponent> ent, ref PostMapInitEvent args)
    {
        Init(ent);
    }

    private void Init(Entity<RandomIconSmoothComponent> ent)
    {
        if (ent.Comp.RandomStates.Count == 0)
            return;

        var state = _random.Pick(ent.Comp.RandomStates);
        _appearance.SetData(ent, RandomIconSmoothState.State, state);
    }
    // Eclipse-End
}
