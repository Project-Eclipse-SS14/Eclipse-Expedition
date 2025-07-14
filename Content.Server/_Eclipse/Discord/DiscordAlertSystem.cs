using Content.Server.GameTicking;
using Content.Shared.CCVar;
using Robust.Server;
using Robust.Shared.Configuration;

namespace Content.Server.Discord;

public sealed class DiscordAlertSystem : EntitySystem
{
    [Dependency] private readonly IConfigurationManager _cfg = default!;
    [Dependency] private readonly DiscordWebhook _discord = default!;
    [Dependency] private readonly GameTicker _gameTicker = default!;
    [Dependency] private readonly IBaseServer _baseServer = default!;

    private string _webhookUrl = default!;

    public override void Initialize()
    {
        base.Initialize();

        _cfg.OnValueChanged(EclipseCCVars.DiscordAlertWebhook, (url) => _webhookUrl = url, true);
    }

    public async void SendDiscordSaveFailedAlert()
    {
        if (string.IsNullOrWhiteSpace(_webhookUrl))
            return;

        try
        {
            var webhookData = await _discord.GetWebhook(_webhookUrl);

            var webhookIdentifier = webhookData.Value.ToIdentifier();

            var payload = new WebhookPayload
            {
                Embeds = new List<WebhookEmbed>
                {
                    new()
                    {
                        Title = Loc.GetString("discord-alert-system-save-failed-title"),
                        Description = Loc.GetString("discord-alert-system-save-failed-description"),
                        Color = 0xFF0000, // red
                        Footer = new WebhookEmbedFooter
                        {
                            Text = Loc.GetString(
                                "discord-alert-system-alert-footer",
                                ("serverName", _baseServer.ServerName),
                                ("roundId", _gameTicker.RoundId)),
                        },
                    },
                },
            };

            await _discord.CreateMessage(webhookIdentifier, payload);
        }
        catch (Exception e)
        {
            Log.Error($"Error while sending discord interaction alert message:\n{e}");
        }
    }
}