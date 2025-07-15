using Content.Server.Chemistry.Components;
using Content.Shared.Chemistry.Events;
using Content.Shared.Maps;
using Content.Shared.Projectiles;
using Robust.Shared.Timing;

namespace Content.Server.Chemistry.EntitySystems;

/// <summary>
/// System for handling injecting into an entity while a projectile is embedded.
/// </summary>
public sealed class SolutionInjectWhileEmbeddedSystem : EntitySystem
{
    [Dependency] private readonly IGameTiming _gameTiming = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<SolutionInjectWhileEmbeddedComponent, MapInitEvent>(OnMapInit);
        SubscribeLocalEvent<SolutionInjectWhileEmbeddedComponent, PostMapInitEvent>(OnPostMapInit); // Eclipse
    }

    private void OnMapInit(Entity<SolutionInjectWhileEmbeddedComponent> ent, ref MapInitEvent args)
    {
        Init(ent); // Eclipse
    }

    // Eclipse-Start
    private void OnPostMapInit(Entity<SolutionInjectWhileEmbeddedComponent> ent, ref PostMapInitEvent args)
    {
        Init(ent);
    }

    private void Init(Entity<SolutionInjectWhileEmbeddedComponent> ent)
    {
        ent.Comp.NextUpdate = _gameTiming.CurTime + ent.Comp.UpdateInterval;
    }
    // Eclipse-End

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<SolutionInjectWhileEmbeddedComponent, EmbeddableProjectileComponent>();
        while (query.MoveNext(out var uid, out var injectComponent, out var projectileComponent))
        {
            if (_gameTiming.CurTime < injectComponent.NextUpdate)
                continue;

            injectComponent.NextUpdate += injectComponent.UpdateInterval;

            if (projectileComponent.EmbeddedIntoUid == null)
                continue;

            var ev = new InjectOverTimeEvent(projectileComponent.EmbeddedIntoUid.Value);
            RaiseLocalEvent(uid, ref ev);

        }
    }
}
