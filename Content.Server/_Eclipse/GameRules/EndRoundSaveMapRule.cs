using Content.Server.Chat.Managers;
using Content.Server.Discord;
using Content.Server.GameTicking.Rules.Components;
using Content.Server.RoundEnd;
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

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<GameRunLevelChangedEvent>(OnRunLevelChanged);
    }

    private void OnRunLevelChanged(GameRunLevelChangedEvent ev)
    {
        if (ev.New is not GameRunLevel.PostRound)
            return;

        var query = AllEntityQuery<RoundEndSaveTargetComponent>();
        while (query.MoveNext(out var uid, out var saveData))
        {
            OnRoundEnd((uid, saveData));
        }
    }

    private void OnRoundEnd(Entity<RoundEndSaveTargetComponent> ent)
    {
        var mapPath = ent.Comp.DynamicMapPathGenerator.Generate();

        _resourceManager.UserData.CreateDir(mapPath.Directory);

        try
        {
            if (!_loader.TrySaveGrid(ent.Owner, mapPath))
            {
                Log.Error("Failed to save map grid, preventing the round from restarting");
                _chatManager.DispatchServerAnnouncement(Loc.GetString("round-end-save-map-failed-announcement"));
                _roundEnd.CancelAfterEndCountdown();
                _discordAlert.SendDiscordSaveFailedAlert();
                return;
            }
        }
        catch (Exception e)
        {
            Log.Error($"Failed to save map grid, preventing the round from restarting. Error: {e}");
            _chatManager.DispatchServerAnnouncement(Loc.GetString("round-end-save-map-failed-announcement"));
            _roundEnd.CancelAfterEndCountdown();
            _discordAlert.SendDiscordSaveFailedAlert();
            return;
        }
    }
}