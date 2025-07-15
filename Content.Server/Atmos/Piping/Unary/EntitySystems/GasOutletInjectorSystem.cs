using Content.Server.Atmos.EntitySystems;
using Content.Server.Atmos.Piping.Components;
using Content.Server.Atmos.Piping.Unary.Components;
using Content.Server.NodeContainer;
using Content.Server.NodeContainer.EntitySystems;
using Content.Server.NodeContainer.Nodes;
using Content.Shared.Atmos.Piping;
using Content.Shared.Interaction;
using Content.Shared.Maps;
using JetBrains.Annotations;

namespace Content.Server.Atmos.Piping.Unary.EntitySystems
{
    [UsedImplicitly]
    public sealed class GasOutletInjectorSystem : EntitySystem
    {
        [Dependency] private readonly AtmosphereSystem _atmosphereSystem = default!;
        [Dependency] private readonly SharedAppearanceSystem _appearance = default!;
        [Dependency] private readonly NodeContainerSystem _nodeContainer = default!;

        public override void Initialize()
        {
            base.Initialize();

            SubscribeLocalEvent<GasOutletInjectorComponent, AtmosDeviceUpdateEvent>(OnOutletInjectorUpdated);
            SubscribeLocalEvent<GasOutletInjectorComponent, ActivateInWorldEvent>(OnActivate);
            SubscribeLocalEvent<GasOutletInjectorComponent, MapInitEvent>(OnMapInit);
            SubscribeLocalEvent<GasOutletInjectorComponent, PostMapInitEvent>(OnPostMapInit); // Eclipse
        }

        private void OnMapInit(EntityUid uid, GasOutletInjectorComponent component, MapInitEvent args)
        {
            Init(uid, component); // Eclipse
        }

        // Eclipse-Start
        private void OnPostMapInit(EntityUid uid, GasOutletInjectorComponent component, PostMapInitEvent args)
        {
            Init(uid, component);
        }

        private void Init(EntityUid uid, GasOutletInjectorComponent component)
        {
            UpdateAppearance(uid, component);
        }
        // Eclipse-End

        private void OnActivate(EntityUid uid, GasOutletInjectorComponent component, ActivateInWorldEvent args)
        {
            if (args.Handled || !args.Complex)
                return;

            component.Enabled = !component.Enabled;
            UpdateAppearance(uid, component);
            args.Handled = true;
        }

        public void UpdateAppearance(EntityUid uid, GasOutletInjectorComponent component, AppearanceComponent? appearance = null)
        {
            if (!Resolve(uid, ref appearance, false))
                return;

            _appearance.SetData(uid, OutletInjectorVisuals.Enabled, component.Enabled, appearance);
        }

        private void OnOutletInjectorUpdated(EntityUid uid, GasOutletInjectorComponent injector, ref AtmosDeviceUpdateEvent args)
        {
            if (!injector.Enabled)
                return;

            if (!_nodeContainer.TryGetNode(uid, injector.InletName, out PipeNode? inlet))
                return;

            var environment = _atmosphereSystem.GetContainingMixture(uid, args.Grid, args.Map, true, true);

            if (environment == null)
                return;

            if (inlet.Air.Temperature < 0)
                return;

            if (environment.Pressure > injector.MaxPressure)
                return;

            var timeDelta = args.dt;

            // TODO adjust ratio so that environment does not go above MaxPressure?
            var ratio = MathF.Min(1f, timeDelta * injector.TransferRate * _atmosphereSystem.PumpSpeedup() / inlet.Air.Volume);
            var removed = inlet.Air.RemoveRatio(ratio);

            _atmosphereSystem.Merge(environment, removed);
        }
    }
}
