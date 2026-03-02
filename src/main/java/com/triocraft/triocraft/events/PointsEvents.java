package com.triocraft.triocraft.events;

import com.mojang.logging.LogUtils;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.scores.Objective;
import net.minecraft.world.scores.Scoreboard;
import net.minecraftforge.event.entity.living.LivingDeathEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import org.slf4j.Logger;

public class PointsEvents {
    private static final Logger LOGGER = LogUtils.getLogger();
    private static final String POINTS_OBJECTIVE = "triocraft_points";

    @SubscribeEvent
    public void onMobKilled(LivingDeathEvent event) {
        if (!(event.getSource().getEntity() instanceof ServerPlayer player)) {
            return;
        }

        if (event.getEntity() instanceof ServerPlayer) {
            return;
        }

        Scoreboard scoreboard = player.server.getScoreboard();
        Objective objective = scoreboard.getObjective(POINTS_OBJECTIVE);
        if (objective == null) {
            objective = scoreboard.addObjective(
                    POINTS_OBJECTIVE,
                    net.minecraft.world.scores.criteria.ObjectiveCriteria.DUMMY,
                    net.minecraft.network.chat.Component.literal("TrioCraft Puntos"),
                    net.minecraft.world.scores.criteria.ObjectiveCriteria.RenderType.INTEGER
            );
        }

        int previousPoints = scoreboard.getOrCreatePlayerScore(player.getScoreboardName(), objective).getScore();
        int newPoints = previousPoints + 10;
        scoreboard.getOrCreatePlayerScore(player.getScoreboardName(), objective).setScore(newPoints);

        int previousLevel = previousPoints / 100;
        int newLevel = newPoints / 100;

        if (newLevel > previousLevel) {
            LOGGER.info("[TrioCraft] {} alcanzó el nivel de puntuación {} ({} puntos)",
                    player.getGameProfile().getName(), newLevel, newPoints);
        }
    }
}
