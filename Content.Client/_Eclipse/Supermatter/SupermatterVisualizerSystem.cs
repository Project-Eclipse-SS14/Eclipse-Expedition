using Content.Shared.Light;
using Content.Shared.Supermatter;
using Robust.Client.Animations;
using Robust.Client.GameObjects;

namespace Content.Client.Supermatter;

public sealed class SupermatterVisualizerSystem : VisualizerSystem<SupermatterVisualsComponent>
{
    public override void Initialize()
    {
        base.Initialize();
    }

    protected override void OnAppearanceChange(EntityUid uid, SupermatterVisualsComponent comp, ref AppearanceChangeEvent args)
    {
        if (args.Sprite == null)
            return;

        if (!AppearanceSystem.TryGetData<bool>(uid, SupermatterVisualState.Glowing, out var state, args.Component))
            return;

        if (comp.SpriteStateMap.TryGetValue(state, out var spriteState))
            SpriteSystem.LayerSetRsiState((uid, args.Sprite), 0, spriteState);
    }
}