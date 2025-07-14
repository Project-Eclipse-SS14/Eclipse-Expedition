using Content.Shared.GameTicking;
using JetBrains.Annotations;
using Robust.Shared.Random;
using Robust.Shared.Utility;

namespace Content.Server.Maps.PathGenerators;

[UsedImplicitly]
public sealed partial class RoundIdMapPathGenerator : DynamicMapPathGenerator
{
    [DataField]
    public int RoundIdOffset = 0;

    [DataField(required: true)]
    public string Template = default!;

    public override ResPath Generate()
    {
        var entityManager = IoCManager.Resolve<IEntityManager>();
        var gameTicker = entityManager.System<SharedGameTicker>();

        var roundId = gameTicker.RoundId + RoundIdOffset;

        return new ResPath(string.Format(Template, $"{roundId}"));
    }
}