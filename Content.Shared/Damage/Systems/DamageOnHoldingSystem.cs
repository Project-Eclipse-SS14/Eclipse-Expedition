using Content.Shared.Damage.Components;
using Content.Shared.Maps;
using Robust.Shared.Containers;
using Robust.Shared.Timing;

namespace Content.Shared.Damage.Systems;

public sealed class DamageOnHoldingSystem : EntitySystem
{
    [Dependency] private readonly SharedContainerSystem _container = default!;
    [Dependency] private readonly DamageableSystem _damageableSystem = default!;
    [Dependency] private readonly IGameTiming _timing = default!;

    public override void Initialize()
    {
        base.Initialize();
        SubscribeLocalEvent<DamageOnHoldingComponent, MapInitEvent>(OnMapInit);
        SubscribeLocalEvent<DamageOnHoldingComponent, PostMapInitEvent>(OnPostMapInit); // Eclipse
    }

    public void SetEnabled(EntityUid uid, bool enabled, DamageOnHoldingComponent? component = null)
    {
        if (Resolve(uid, ref component))
        {
            component.Enabled = enabled;
            component.NextDamage = _timing.CurTime;
        }
    }

    private void OnMapInit(EntityUid uid, DamageOnHoldingComponent component, MapInitEvent args)
    {
        Init(uid, component); // Eclipse
    }

    // Eclipse-Start
    private void OnPostMapInit(EntityUid uid, DamageOnHoldingComponent component, PostMapInitEvent args)
    {
        Init(uid, component);
    }

    private void Init(EntityUid uid, DamageOnHoldingComponent component)
    {
        component.NextDamage = _timing.CurTime;
    }
    // Eclipse-End

    public override void Update(float frameTime)
    {
        var query = EntityQueryEnumerator<DamageOnHoldingComponent>();
        while (query.MoveNext(out var uid, out var component))
        {
            if (!component.Enabled || component.NextDamage > _timing.CurTime)
                continue;
            if (_container.TryGetContainingContainer((uid, null, null), out var container))
            {
                _damageableSystem.TryChangeDamage(container.Owner, component.Damage, origin: uid);
            }
            component.NextDamage = _timing.CurTime + TimeSpan.FromSeconds(component.Interval);
        }
    }
}
