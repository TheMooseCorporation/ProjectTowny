import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Basic Military Tech:
    Unlocks the beginning of techguns and the immersive engineering revolver with its related ammunition
*/

// Stage Name
val stage = "basic_military_tech";
val name = "Basic Military";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
    // Immersive Engineering Revolver and related items
    <immersiveengineering:metal_decoration2:5>,
    <immersiveengineering:shader>,
    <immersiveengineering:shader_bag>,
    <immersiveengineering:revolver>,
    <immersiveengineering:speedloader>,
    <immersiveengineering:bullet>,
    <immersiveengineering:bullet:2>,
    <immersiveengineering:bullet:1>,
    <immersiveengineering:toolupgrade:4>,
    <immersiveengineering:toolupgrade:5>,
    <immersiveengineering:material:13>,
    <immersiveengineering:material:14>,
    <immersiveengineering:material:15>,
    <immersiveengineering:material:16>,
    <immersiveengineering:blueprint>.withTag({blueprint: "bullet"}),
    <immersiveengineering:blueprint>.withTag({blueprint: "Ammunition"}),
    // Basic ICBM weapons
    <icbmclassic:spikes>,
    <icbmclassic:spikes:1>,
    <icbmclassic:spikes:2>,
    <icbmclassic:glasspressureplate>,
    <icbmclassic:glassbutton>,
    <immersiveengineering:bullet:2>.withTag({bullet: "armor_piercing"}),
    <immersiveengineering:bullet:2>.withTag({bullet: "buckshot"}),
    <immersiveengineering:bullet:2>.withTag({bullet: "he"}),
    <immersiveengineering:bullet:2>.withTag({bullet: "silver"}),
    <immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}),
    <immersiveengineering:bullet:2>.withTag({bullet: "potion"}),
    <immersiveengineering:bullet:2>.withTag({bullet: "flare"}),
    <immersiveengineering:bullet:2>.withTag({bullet: "casull"}),
    // MWC Implementation
    <mwc:m1873>,
    <mwc:m1897>,
    <mwc:python>,
    <mwc:springfield>,
    <mwc:m1_garand>,
    <contenttweaker:projectile_357>,
    <contenttweaker:projectile_44>,
    <contenttweaker:projectile_30>,
    <mwc:bullet4440>,
    <mwc:bullet357>,
    <mwc:bullet3006springfield>,
    <mwc:shotgun12gauge>,
    <contenttweaker:gun_stock1>,
    <contenttweaker:gun_barrel2>,
    <contenttweaker:rifle_parts>,
    <contenttweaker:shotgun_parts>,
    <contenttweaker:pistol_parts>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
    for item in loadedMods[mod].items {
        item.addTooltip(format.blue("Required Tech: ") + format.gold(name));
    }
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
    item.addTooltip(format.blue("Required Tech: ") + format.gold(name));
}