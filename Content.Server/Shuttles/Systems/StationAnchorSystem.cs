using Content.Server.Popups;
using Content.Server.Power.EntitySystems;
using Content.Server.Shuttles.Components;
using Content.Shared.Construction.Components;
using Content.Shared.Maps;
using Content.Shared.Popups;

namespace Content.Server.Shuttles.Systems;

public sealed class StationAnchorSystem : EntitySystem
{
    [Dependency] private readonly ShuttleSystem _shuttleSystem = default!;
    [Dependency] private readonly PopupSystem _popupSystem = default!;

    public override void Initialize()
    {
        base.Initialize();
        SubscribeLocalEvent<StationAnchorComponent, UnanchorAttemptEvent>(OnUnanchorAttempt);
        SubscribeLocalEvent<StationAnchorComponent, AnchorStateChangedEvent>(OnAnchorStationChange);

        SubscribeLocalEvent<StationAnchorComponent, ChargedMachineActivatedEvent>(OnActivated);
        SubscribeLocalEvent<StationAnchorComponent, ChargedMachineDeactivatedEvent>(OnDeactivated);

        SubscribeLocalEvent<StationAnchorComponent, MapInitEvent>(OnMapInit);
        SubscribeLocalEvent<StationAnchorComponent, PostMapInitEvent>(OnPostMapInit); // Eclipse
    }

    private void OnMapInit(Entity<StationAnchorComponent> ent, ref MapInitEvent args)
    {
        Init(ent); // Eclipse
    }

    // Eclipse-Start
    private void OnPostMapInit(Entity<StationAnchorComponent> ent, ref PostMapInitEvent args)
    {
        Init(ent);
    }

    private void Init(Entity<StationAnchorComponent> ent)
    {
        if (!ent.Comp.SwitchedOn)
            return;

        SetStatus(ent, true);
    }
    // Eclipse-End

    private void OnActivated(Entity<StationAnchorComponent> ent, ref ChargedMachineActivatedEvent args)
    {
        SetStatus(ent, true);
    }

    private void OnDeactivated(Entity<StationAnchorComponent> ent, ref ChargedMachineDeactivatedEvent args)
    {
        SetStatus(ent, false);
    }

    /// <summary>
    /// Prevent unanchoring when anchor is active
    /// </summary>
    private void OnUnanchorAttempt(Entity<StationAnchorComponent> ent, ref UnanchorAttemptEvent args)
    {
        if (!ent.Comp.SwitchedOn)
            return;

        _popupSystem.PopupEntity(
            Loc.GetString("station-anchor-unanchoring-failed"),
            ent,
            args.User,
            PopupType.Medium);

        args.Cancel();
    }

    private void OnAnchorStationChange(Entity<StationAnchorComponent> ent, ref AnchorStateChangedEvent args)
    {
        if (!args.Anchored)
            SetStatus(ent, false);
    }

    private void SetStatus(Entity<StationAnchorComponent> ent, bool enabled, ShuttleComponent? shuttleComponent = default)
    {
        var transform = Transform(ent);
        var grid = transform.GridUid;
        if (!grid.HasValue || !transform.Anchored && enabled || !Resolve(grid.Value, ref shuttleComponent))
            return;

        if (enabled)
        {
            _shuttleSystem.Disable(grid.Value);
        }
        else
        {
            _shuttleSystem.Enable(grid.Value);
        }

        shuttleComponent.Enabled = !enabled;
        ent.Comp.SwitchedOn = enabled;
    }
}
