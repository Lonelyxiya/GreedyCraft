/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 3000

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.enderio.SagMill;
import mods.enderio.AlloySmelter;

SagMill.addRecipe([<additions:greedycraft-time_fragment>, <additions:greedycraft-time_fragment>, <additions:greedycraft-experience_ingot>], [20 as float, 20 as float, 50 as float], <ore:dungeonLootTier1> as IIngredient, "CHANCE_ONLY", 12000, [10 as float, 10 as float, 10 as float]);
SagMill.addRecipe([<additions:greedycraft-time_fragment> * 2, <additions:greedycraft-time_fragment>, <additions:greedycraft-time_fragment>, <additions:greedycraft-experience_ingot> * 3], [10 as float, 30 as float, 30 as float, 50 as float], <ore:dungeonLootTier2> as IIngredient, "CHANCE_ONLY", 30000, [25 as float, 25 as float, 25 as float, 25 as float]);
SagMill.addRecipe([<additions:greedycraft-time_fragment> * 6, <additions:greedycraft-time_fragment> * 4, <additions:greedycraft-time_fragment> * 3, <additions:greedycraft-experience_ingot> * 16], [30 as float, 40 as float, 50 as float, 60 as float], <ore:dungeonLootTier3> as IIngredient, "CHANCE_ONLY", 100000, [100 as float, 100 as float, 100 as float, 100 as float]);

SagMill.addRecipe([<nyx:meteor_dust>], [100 as float], <ore:ingotMeteor> as IIngredient, "CHANCE_ONLY", 600, [100 as float]);
SagMill.addRecipe([<nyx:meteor_dust>], [100 as float], <ore:shardMeteor> as IIngredient, "CHANCE_ONLY", 600, [100 as float]);
SagMill.addRecipe([<nyx:meteor_dust> * 9], [100 as float], <ore:blockMeteor> as IIngredient, "CHANCE_ONLY", 5400, [100 as float]);
SagMill.addRecipe([<additions:greedycraft-purifying_dust> * 8], [100 as float], <botania:specialflower>.withTag({type: "puredaisy"}) as IIngredient, "CHANCE_ONLY", 600, [100 as float]);

AlloySmelter.removeRecipe(<thermalfoundation:material:160>);

AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 2, [<ore:ingotIron>, <ore:ingotBronze>, <ore:dustRedstone>], 2000, 10.0 as float);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 2, [<ore:ingotConductiveIron>, <ore:ingotBronze>], 2000, 10.0 as float);
AlloySmelter.addRecipe(<tconevo:material> * 2, [<ore:ingotAdamant>, <ore:ingotManyullyn> * 2, <ore:ingotEnderium> * 2], 7500, 40.0 as float);
AlloySmelter.addRecipe(<additions:netherite_ingot>, [<ore:gemAncientDebris> * 4, <ore:ingotGold> * 4], 6000, 50.0 as float);
AlloySmelter.addRecipe(<additions:stainless_steel_ingot> * 4, [<ore:ingotSteel> * 4, <ore:ingotNickel>, <ore:ingotChromium>], 4000, 12.0 as float);

SagMill.removeRecipe(<minecraft:coal>);
SagMill.removeRecipe(<actuallyadditions:block_misc:2>);
SagMill.addRecipe([<actuallyadditions:item_dust:7> * 4], [100 as float], <ore:blockQuartzBlack> as IIngredient, "CHANCE_ONLY", 400, [100 as float]);
