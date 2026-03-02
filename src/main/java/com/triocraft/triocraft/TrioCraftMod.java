package com.triocraft.triocraft;

import com.triocraft.triocraft.events.PointsEvents;
import com.triocraft.triocraft.item.ModItems;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import net.minecraftforge.common.MinecraftForge;

@Mod(TrioCraftMod.MODID)
public class TrioCraftMod {
    public static final String MODID = "triocraft";

    public TrioCraftMod() {
        IEventBus modEventBus = FMLJavaModLoadingContext.get().getModEventBus();
        ModItems.register(modEventBus);

        MinecraftForge.EVENT_BUS.register(new PointsEvents());
    }
}
