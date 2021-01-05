/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 4001

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

val removedRecipes as IIngredient[] = [
    <oeintegration:excavatemodifier>,
    <projecte:item.pe_philosophers_stone>,
    <projecte:transmutation_table>,
    <projecte:item.pe_rm_hoe>,
    <projecte:item.pe_rm_pick>,
    <projecte:item.pe_rm_axe>,
    <projecte:item.pe_rm_shovel>,
    <projecte:item.pe_rm_hammer>,
    <projecte:item.pe_rm_sword>,
    <projecte:item.pe_rm_shears>,
    <projecte:item.pe_rm_katar>,
    <projecte:item.pe_rm_morning_star>,
    <projecte:item.pe_rm_armor_0>,
    <projecte:item.pe_rm_armor_1>,
    <projecte:item.pe_rm_armor_2>,
    <projecte:item.pe_rm_armor_3>,
    <projecte:item.pe_gem_armor_0>,
    <projecte:item.pe_gem_armor_1>,
    <projecte:item.pe_gem_armor_2>,
    <projecte:item.pe_gem_armor_3>,
    <projecte:item.pe_dm_armor_0>,
    <projecte:item.pe_dm_armor_1>,
    <projecte:item.pe_dm_armor_2>,
    <projecte:item.pe_dm_armor_3>,
    <projectex:stone_table>,
    <chancecubes:chance_cube>,
    <draconicevolution:wyvern_axe>,
    <draconicevolution:wyvern_bow>,
    <draconicevolution:wyvern_pick>,
    <draconicevolution:wyvern_sword>,
    <draconicevolution:wyvern_shovel>,
    <draconicevolution:wyvern_helm>,
    <draconicevolution:wyvern_chest>,
    <draconicevolution:wyvern_legs>,
    <draconicevolution:wyvern_boots>,
    <projecte:item.pe_harvest_god>,
    <projectex:collector:*>,
    <projectex:compressed_collector:*>,
    <projectex:power_flower:*>,
    <projecte:collector_mk3:*>,
    <projecte:collector_mk2:*>,
    <projecte:collector_mk1:*>,
    <projecte:nova_catalyst>,
    <projecte:nova_cataclysm>,
    <scalinghealth:heartdust>,
    <mekanism:basicblock:6>,
    <extrautils2:crafter>,
    <actuallyadditions:block_greenhouse_glass>,
    <mysticalagriculture:growth_accelerator>,
    <mekanismgenerators:generator:12>,
    <mekanism:machineblock:4>,
    <actuallyadditions:block_giant_chest>,
    <actuallyadditions:block_giant_chest_medium>,
    <actuallyadditions:block_giant_chest_large>,
    <simplesmelteryaccelerator:smeltery_accelerator>,
    <mekanismgenerators:generator:6>,
    <mekanismgenerators:generator:5>,
    <mekanismgenerators:generator:1>,
    <projecte:item.pe_soul_stone>,
    <projecte:item.pe_body_stone>,
    <projecte:item.pe_transmutation_tablet>,
    <avaritia:extreme_crafting_table>,
    <minecraft:crafting_table>,
    <extrautils2:rainbowgenerator>,
    <projecte:interdiction_torch>,
    <projectex:arcane_tablet>,
    <projectex:relay:*>,
    <projecte:relay_mk1>,
    <projecte:relay_mk2>,
    <projecte:relay_mk3>,
    <bountifulbaubles:ringiron>,
    <draconicevolution:grinder>,
    <extrautils2:chickenring>,
    <extrautils2:teleporter:1>,
    <projecte:condenser_mk2>,
    <projecte:condenser_mk1>,
    <mysticalagriculture:crafting:1>,
    <mysticalagriculture:crafting:2>,
    <mysticalagriculture:crafting:3>,
    <mysticalagriculture:crafting:4>,
    <mysticalagriculture:crafting:33>,
    <mysticalagriculture:crafting:34>,
    <mysticalagriculture:crafting:35>,
    <mysticalagriculture:crafting:36>,
    <mysticalagriculture:crafting:37>,
    <mysticalagradditions:insanium>,
    <mysticalagradditions:insanium:2>,
    <cyclicmagic:cable_wireless>,
    <cyclicmagic:cable_wireless_energy>,
    <cyclicmagic:cable_wireless_fluid>,
    <cyclicmagic:item_pipe>,
    <cyclicmagic:energy_pipe>,
    <cyclicmagic:fluid_pipe>,
    <cyclicmagic:battery>,
    <projectex:stone_table>,
    <cyclicmagic:wand_hypno>,
    <waystones:warp_stone>,
    <openblocks:sleeping_bag>,
    <projecte:item.pe_repair_talisman>,
    <botania:blackholetalisman>,
    <extrabotany:bottledflame>,
    <cyclicmagic:heart_food>,
    <astralsorcery:blockblackmarble>,
    <thermalfoundation:material:23>,
    <cfm:item_log>,
    <projecte:item.pe_swrg>,
    <actuallyadditions:item_wings_of_the_bats>,
    <extracells:terminal.universal.wireless>,
    <danknull:dank_null_panel_0>,
    <danknull:dank_null_panel_1>,
    <danknull:dank_null_panel_2>,
    <danknull:dank_null_panel_3>,
    <danknull:dank_null_panel_4>,
    <danknull:dank_null_panel_5>,
    <danknull:dank_null_0>,
    <danknull:dank_null_1>,
    <danknull:dank_null_2>,
    <danknull:dank_null_3>,
    <danknull:dank_null_4>,
    <danknull:dank_null_5>,
    <thermalexpansion:satchel:*>,
    <cyclicmagic:cyclic_wand_build>,
    <cyclicmagic:block_vacuum>,
    <thermalexpansion:cache>,
    <appliedenergistics2:material:35>,
    <appliedenergistics2:material:36>,
    <appliedenergistics2:material:37>,
    <appliedenergistics2:material:38>,
    <extracells:storage.component>,
    <extracells:storage.component:1>,
    <extracells:storage.component:2>,
    <extracells:storage.component:3>,
    <projectex:energy_link>,
    <tconevo:material>,
    <cyclicmagic:sleeping_mat>,
    <extrabotany:material:6>,
    <binniecore:storage:*>,
    <randomthings:timeinabottle>,
    <enderio:item_soul_vial>,
    <actuallyadditions:item_spawner_changer>,
    <cyclicmagic:exp_pylon>,
    <cyclicmagic:sprinkler>,
    <hooked:hook>,
    <botania:enderhand>,
    <twilightforest:magic_map_focus>,
    <mekanism:transmitter:*>,
    <extrabitmanipulation:bodypart_template>,
    <cyclicmagic:block_miner>,
    <cyclicmagic:slingshot_weapon>,
    <ambience:soundnizer>,
    <cyclicmagic:tool_swap_match>,
    <cyclicmagic:tool_swap>,
    <tconstruct:soil>,
    <draconicevolution:wyvern_core>,
    <farmingforblockheads:fertilizer:*>,
    <rftools:shape_card:*>,
    <rftools:environmental_controller>,
    <rftools:machine_frame>,
    <thaumadditions:mithminite_plate>,
    <thaumadditions:adaminite_plate>,
    <thaumadditions:mithrillium_plate>,
    <cyclicmagic:magic_net>,
    <projecte:item.pe_dm_hammer>,
    <projecte:item.pe_dm_shears>,
    <projecte:item.pe_dm_pick>,
    <projecte:item.pe_dm_axe>,
    <projecte:item.pe_dm_shovel>,
    <projecte:item.pe_dm_sword>,
    <projecte:item.pe_dm_hoe>,
    <extrautils2:ingredients:8>,
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    <thaumcraft:thaumium_helm>,
    <thaumcraft:thaumium_chest>,
    <thaumcraft:thaumium_legs>,
    <thaumcraft:thaumium_boots>,
    <thaumcraft:void_helm>,
    <thaumcraft:void_chest>,
    <thaumcraft:void_legs>,
    <thaumcraft:void_boots>,
    <randomthings:spectresword>,
    <randomthings:spectreshovel>,
    <randomthings:spectrepickaxe>,
    <tcomplement:manyullyn_helmet>,
    <tcomplement:manyullyn_chestplate>,
    <tcomplement:manyullyn_leggings>,
    <tcomplement:manyullyn_boots>,
    <minecraft:beacon>,
    <bountifulbaubles:ringflywheeladvanced>,
    <bountifulbaubles:ringflywheel>,
    <xnet:netcable>,
    <solarflux:solar_panel_2>,
    <solarflux:solar_panel_3>,
    <solarflux:solar_panel_4>,
    <solarflux:solar_panel_5>,
    <solarflux:solar_panel_6>,
    <solarflux:solar_panel_7>,
    <solarflux:solar_panel_8>,
    <solarflux:solar_panel_wyvern>,
    <solarflux:solar_panel_draconic>,
    <draconicevolution:generator>,
    <draconicadditions:chaotic_armor_generator>,
    <draconicadditions:armor_generator>,
    <extrabotany:bottledstar>,
    <treasure2:ruby_key>,
    <treasure2:sapphire_key>,
    <thaumictinkerer:black_quartz>,
    <botania:quartz>,
    <extrabotany:blockshadowium>,
    <tcomplement:materials:10>,
    <sakura:materials:56>,
    <tofucraft:tf_machine_case>,
    <projecte:rm_furnace>,
    <projecte:dm_furnace>,
    <natura:netherrack_furnace>,
    <betternether:netherrack_furnace>,
    <forestry:wood_pile>,
    <minecraft:golden_apple:1>,
    <modularmachinery:blockcasing:4>,
    <rftools:spawner>,
    <draconicevolution:draconic_spawner:*>,
    <enderio:block_powered_spawner>,
    <botania:spawnerclaw>,
    <botania:spawnermover>,
    <extrautils2:wateringcan>,
    <cyclicmagic:sprinkler>,
    <modularmachinery:itemmodularium>,
    <extrabotany:material:5>,
    <extrautils2:compoundbow>,
    <mekanism:electricbow>,
    <sereneseasons:greenhouse_glass>,
    <actuallyadditions:block_player_interface>,
    <tcomplement:high_oven_io:2>,
    <openblocks:sprinkler>,
    <nyx:meteor_helm>,
    <nyx:meteor_chest>,
    <nyx:meteor_pants>,
    <nyx:meteor_boots>,
    <nyx:meteor_hammer>,
    <nyx:meteor_sword>,
    <nyx:meteor_bow>,
    <nyx:meteor_pickaxe>,
    <nyx:meteor_hoe>,
    <nyx:meteor_shovel>,
    <nyx:meteor_axe>,
    <nyx:meteor_dust>,
    <extrautils2:lawsword>,
    <enderio:item_material:10>,
    <cyclicmagic:bundled_pipe>,
    <redstonearsenal:util.quiver_flux>,
    <redstonerepository:feeder>,
    <forestry:bronze_pickaxe>,
    <mekanism:basicblock:8>,
    <buildinggadgets:buildingtool>,
    <buildinggadgets:exchangertool>,
    <buildinggadgets:copypastetool>,
    <actuallyadditions:block_misc:8>,
    <demagnetize:demagnetizer>,
    <demagnetize:demagnetizer_advanced>,
    <biomesoplenty:terrestrial_artifact>,
    <aether_legacy:valkyrie_pickaxe>,
    <aether_legacy:valkyrie_axe>,
    <aether_legacy:valkyrie_shovel>,
    <extrautils2:drum:*>,
    <randomthings:chunkanalyzer>,
    <cyclicmagic:harvester_block>,
    <mysticalagriculture:mystical_fertilizer>,
    <charm:rotten_flesh_block>,
    <extrabotany:goblinslayerhelm>,
    <extrabotany:goblinslayerchest>,
    <extrabotany:goblinslayerlegs>,
    <extrabotany:goblinslayerboots>,
    <sakura:kodachi>,
    <sakura:sakura_kodachi>,
    <sakura:tachi>,
    <animus:kama_wood>,
    <animus:kama_stone>,
    <animus:kama_iron>,
    <animus:kama_gold>,
    <animus:kama_diamond>,
    <animus:kama_bound>,
    <bloodmagic:soul_forge>,
    <thaumcraft:amber_brick>,
    <bloodarsenal:vampire_ring>,
    <bloodarsenal:blood_infused_iron_axe>,
    <bloodarsenal:blood_infused_wooden_axe>,
    <bloodmagic:upgrade_trainer>,
    <bloodmagic:upgrade_tome>,
    <prefab:item_bulldozer:*>,
    <bloodmagic:mimic:*>,
    <enderio:item_endergy_conduit:11>,
    <enderio:item_fluid_conduit>,
    <defiledlands:calling_stone>,
    <lootbags:loot_recycler>,
    <extrautils2:itemdestructionwand>,
    <extrautils2:itembuilderswand>,
    <lootbags:loot_storage>,
    <ambience:horn>,
    <redstonerepository:ring_mining>,
    <hooked:hook:4>,
    <bloodmagic:soul_snare>,
    <cyclicmagic:magnet_anti_block>,
    <aether_legacy:valkyrie_helmet>,
    <aether_legacy:valkyrie_chestplate>,
    <aether_legacy:valkyrie_leggings>,
    <aether_legacy:valkyrie_boots>,
    <aether_legacy:valkyrie_lance>,
    <cyclicmagic:purple_helmet>,
    <cyclicmagic:purple_chestplate>,
    <cyclicmagic:purple_leggings>,
    <cyclicmagic:purple_boots>,
    <aeble:bubble_ring>,
    <aeble:ice_ring>,
    <aeble:zanite_ring>,
    <aeble:obsidian_ring>,
    <aeble:regeneration_ring>,
    <aeble:air_ring>,
    <minecraft:iron_trapdoor>,
    <abyssalcraft:ironp>,
	<extrautils2:spike_diamond>,
	<cyclicmagic:spikes_diamond>,
    <extrautils2:quarry>,
    <extrautils2:quarryproxy>,
    <thaumadditions:thaumic_lectern>,
    <cyclicmagic:tool_push>,
    <mekanismgenerators:generator:10>,
    <twilightforest:charm_of_keeping_2>,
    <twilightforest:charm_of_keeping_3>,
    <bloodmagic:altar>,
    <mekanism:basicblock2:7>,
    <mekanism:controlcircuit:1>,
    <mekanism:controlcircuit:2>,
    <mekanism:controlcircuit:3>,
    <actuallyadditions:item_misc:8>,
    <actuallyadditions:block_phantomface>,
    <extrautils2:user>,
    <cyclicmagic:block_user>,
    <openmodularturrets:turret_base:*>,
    <torchmaster:mega_torch>,
    <torchmaster:feral_flare_lantern>,
    <torchmaster:dread_lamp>,
    <modularmachinery:blockcasing:2>,
    <openblocks:sponge>,
    <globalxp:xp_block>,
    <actuallyadditions:item_growth_ring>
];

val removedRecipeNames as string[] = [
    "projecte:conversions/emerald_to_diamond",
    "projecte:conversions/diamond_to_emerald",
    "projecte:conversions/diamond_to_iron",
    "projecte:conversions/gold_to_diamond",
    "projecte:conversions/iron_to_gold",
    "projecte:conversions/gold_to_iron",
    "extrautils2:watering_can",
    "thaumcraft:ambertoblock",
    "prefab:ender_gateway",
    "botania:flighttiara_0",
    "botania:flighttiara_1",
    "botania:flighttiara_2",
    "botania:flighttiara_3",
    "botania:flighttiara_4",
    "botania:flighttiara_5",
    "botania:flighttiara_6",
    "botania:flighttiara_7",
    "botania:flighttiara_8",
    "extrabotany:recipe_coregod"
];

for ingredient in removedRecipes {
    RecipeUtil.remove(ingredient);
}

for recipeName in removedRecipeNames {
    RecipeUtil.removeByRecipeName(recipeName);
}
