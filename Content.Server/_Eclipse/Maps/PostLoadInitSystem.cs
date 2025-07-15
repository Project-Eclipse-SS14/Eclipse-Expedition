using Content.Server.GameTicking;
using Content.Shared.Maps;

namespace Content.Server.Maps;

public sealed class DiscordAlertSystem : EntitySystem
{
    private EntityQuery<MetaDataComponent> _metaQuery;
    private static readonly PostMapInitEvent InitEventInstance = new();

    public override void Initialize()
    {
        base.Initialize();

        _metaQuery = GetEntityQuery<MetaDataComponent>();

        SubscribeLocalEvent<PostGameMapLoad>(OnPostGameMapLoad);
    }

    // This is used to initialize entities on grids that are postmapinit
    private void OnPostGameMapLoad(PostGameMapLoad args)
    {
        foreach (var gridUid in args.Grids)
        {
            if (!_metaQuery.TryComp(gridUid, out var meta))
                continue;

            // This only happens if the map that was just loaded was saved after init
            if (meta.EntityLifeStage == EntityLifeStage.MapInitialized)
                RecursiveInitEntities(gridUid);
        }
    }

    private void RecursiveInitEntities(EntityUid entity)
    {
        var toInitialize = new List<EntityUid> { entity };
        for (var i = 0; i < toInitialize.Count; i++)
        {
            var uid = toInitialize[i];
            // toInitialize might contain deleted entities.
            if (!_metaQuery.TryComp(uid, out var meta))
                continue;

            var enumerator = Transform(uid).ChildEnumerator;
            while (enumerator.MoveNext(out var child))
            {
                toInitialize.Add(child);
            }

            EntityManager.EventBus.RaiseLocalEvent(uid, InitEventInstance);
        }
    }
}