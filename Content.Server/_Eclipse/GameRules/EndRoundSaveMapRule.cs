using Content.Server.Chat.Managers;
using Content.Server.Discord;
using Content.Server.GameTicking.Rules.Components;
using Content.Server.RoundEnd;
using Content.Server.Station.Components;
using Content.Server.Station.Systems;
using Robust.Shared.ContentPack;
using Robust.Shared.EntitySerialization.Systems;

namespace Content.Server.GameTicking.Rules;

/// <summary>
/// This handles the dungeon and trading post spawning, as well as round end capitalism summary
/// </summary>
public sealed class EndRoundSaveMapRuleSystem : GameRuleSystem<EndRoundSaveMapRuleComponent>
{
    [Dependency]
    private readonly MapLoaderSystem _loader = default!;
    [Dependency]
    private readonly IResourceManager _resourceManager = default!;
    [Dependency]
    private readonly IChatManager _chatManager = default!;
    [Dependency]
    private readonly RoundEndSystem _roundEnd = default!;
    [Dependency]
    private readonly DiscordAlertSystem _discordAlert = default!;
    [Dependency]
    private readonly StationSystem _station = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<GameRunLevelChangedEvent>(OnRunLevelChanged);
    }

    private void OnRunLevelChanged(GameRunLevelChangedEvent ev)
    {
        if (ev.New is not GameRunLevel.PostRound)
            return;

        var query = AllEntityQuery<RoundEndSaveTargetComponent, StationDataComponent>();
        while (query.MoveNext(out var uid, out var saveData, out var stationData))
        {
            OnRoundEnd((uid, saveData, stationData));
        }
    }

    private async void OnRoundEnd(Entity<RoundEndSaveTargetComponent, StationDataComponent> ent)
    {
        var mapPath = ent.Comp1.DynamicMapPathGenerator.Generate();

        _resourceManager.UserData.CreateDir(mapPath.Directory);

        var gridUid = _station.GetLargestGrid(ent.Comp2);
        if (!gridUid.HasValue)
        {
            Log.Error("Failed to save map grid, preventing the round from restarting. (no save target)");
            _chatManager.DispatchServerAnnouncement(Loc.GetString("round-end-save-map-failed-announcement"), Color.Red);
            _roundEnd.CancelAfterEndCountdown();
            await _discordAlert.SendDiscordSaveFailedAlert();
            return;
        }

        try
        {
            if (!_loader.TrySaveGrid(gridUid.Value, mapPath))
            {
                Log.Error("Failed to save map grid, preventing the round from restarting. (save failed)");
                _chatManager.DispatchServerAnnouncement(Loc.GetString("round-end-save-map-failed-announcement"), Color.Red);
                _roundEnd.CancelAfterEndCountdown();
                await _discordAlert.SendDiscordSaveFailedAlert();
                return;
            }
        }
        catch (Exception e)
        {
            Log.Error($"Failed to save map grid, preventing the round from restarting. (save failed) Error: {e}");
            _chatManager.DispatchServerAnnouncement(Loc.GetString("round-end-save-map-failed-announcement"), Color.Red);
            _roundEnd.CancelAfterEndCountdown();
            await _discordAlert.SendDiscordSaveFailedAlert();
            return;
        }
    }
}