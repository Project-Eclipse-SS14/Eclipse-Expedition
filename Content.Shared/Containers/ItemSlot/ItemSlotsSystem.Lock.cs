using Content.Shared.Lock;
using Content.Shared.Maps;

namespace Content.Shared.Containers.ItemSlots;

public sealed partial class ItemSlotsSystem
{
    private void InitializeLock()
    {
        SubscribeLocalEvent<ItemSlotsLockComponent, MapInitEvent>(OnLockMapInit);
        SubscribeLocalEvent<ItemSlotsLockComponent, PostMapInitEvent>(OnLockPostMapInit); // Eclipse
        SubscribeLocalEvent<ItemSlotsLockComponent, LockToggledEvent>(OnLockToggled);
    }

    private void OnLockMapInit(Entity<ItemSlotsLockComponent> ent, ref MapInitEvent args)
    {
        LockInit(ent); // Eclipse
    }

    // Eclipse-Start
    private void OnLockPostMapInit(Entity<ItemSlotsLockComponent> ent, ref PostMapInitEvent args)
    {
        LockInit(ent);
    }

    private void LockInit(Entity<ItemSlotsLockComponent> ent)
    {
        if (!TryComp(ent.Owner, out LockComponent? lockComp))
            return;

        UpdateLocks(ent, lockComp.Locked);
    }
    // Eclipse-End

    private void OnLockToggled(Entity<ItemSlotsLockComponent> ent, ref LockToggledEvent args)
    {
        UpdateLocks(ent, args.Locked);
    }

    private void UpdateLocks(Entity<ItemSlotsLockComponent> ent, bool value)
    {
        foreach (var slot in ent.Comp.Slots)
        {
            if (!TryGetSlot(ent.Owner, slot, out var itemSlot))
                continue;

            SetLock(ent.Owner, itemSlot, value);
        }
    }
}
