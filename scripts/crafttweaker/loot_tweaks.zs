import loottweaker.LootTweaker;
import loottweaker.LootTable;
import loottweaker.LootPool;

// Zombie Pigman Tweaks
val zombiePigman = LootTweaker.getTable("minecraft:entities/zombie_pigman");
zombiePigman.getPool("pool1").removeEntry("minecraft:gold_nugget");
zombiePigman.getPool("pool2").removeEntry("minecraft:gold_ingot");