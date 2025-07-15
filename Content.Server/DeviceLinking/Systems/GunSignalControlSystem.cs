using Content.Server.DeviceLinking.Components;
using Content.Shared.DeviceLinking.Events;
using Content.Shared.Maps;
using Content.Shared.Weapons.Ranged.Components;
using Content.Shared.Weapons.Ranged.Systems;

namespace Content.Server.DeviceLinking.Systems;

public sealed partial class GunSignalControlSystem : EntitySystem
{
    [Dependency] private readonly DeviceLinkSystem _signalSystem = default!;
    [Dependency] private readonly SharedGunSystem _gun = default!;

    public override void Initialize()
    {
        SubscribeLocalEvent<GunSignalControlComponent, MapInitEvent>(OnInit);
        SubscribeLocalEvent<GunSignalControlComponent, PostMapInitEvent>(OnPostMapInit); // Eclipse
        SubscribeLocalEvent<GunSignalControlComponent, SignalReceivedEvent>(OnSignalReceived);
    }

    private void OnInit(Entity<GunSignalControlComponent> gunControl, ref MapInitEvent args)
    {
        Init(gunControl); // Eclipse
    }

    // Eclipse-Start
    private void OnPostMapInit(Entity<GunSignalControlComponent> gunControl, ref PostMapInitEvent args)
    {
        Init(gunControl);
    }

    private void Init(Entity<GunSignalControlComponent> gunControl)
    {
        _signalSystem.EnsureSinkPorts(gunControl, gunControl.Comp.TriggerPort, gunControl.Comp.TogglePort, gunControl.Comp.OnPort, gunControl.Comp.OffPort);
    }
    // Eclipse-End

    private void OnSignalReceived(Entity<GunSignalControlComponent> gunControl, ref SignalReceivedEvent args)
    {
        if (!TryComp<GunComponent>(gunControl, out var gun))
            return;

        if (args.Port == gunControl.Comp.TriggerPort)
            _gun.AttemptShoot(gunControl, gun);

        if (!TryComp<AutoShootGunComponent>(gunControl, out var autoShoot))
            return;

        if (args.Port == gunControl.Comp.TogglePort)
            _gun.SetEnabled(gunControl, autoShoot, !autoShoot.Enabled);

        if (args.Port == gunControl.Comp.OnPort)
            _gun.SetEnabled(gunControl, autoShoot, true);

        if (args.Port == gunControl.Comp.OffPort)
            _gun.SetEnabled(gunControl, autoShoot, false);
    }
}
