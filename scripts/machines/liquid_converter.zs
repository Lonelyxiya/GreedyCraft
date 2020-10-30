/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */

#priority 30

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.ctutils.utils.Math;

val regName = "liquid_converter";
val speed = 5;
val energy = 5;

val converterRecipes as ILiquidStack[][] = [
    [<liquid:xpjuice> * 100, /*divide*/ <liquid:experience> * 100],
    [<liquid:honey> * 100, /*divide*/ <liquid:for.honey> * 100],
    [<liquid:milk_chocolate> * 100, /*divide*/ <liquid:liquid_chocolate> * 100],
    [<liquid:resin> * 100, /*divide*/ <liquid:binnie.resin> * 100]
];

for row in converterRecipes {
    if(!(row.length >= 2)) {
        break;
    }
    var inputStack = row[0] as ILiquidStack;
    var amount = inputStack.amount;
    var alloyEnergy = energy as int;
    var alloySpeed = Math.ceil((amount as float / 100.0 as float) * speed as float) as int;
    var builder = mods.modularmachinery.RecipeBuilder.newBuilder(regName + "_alloy_" + inputStack.definition.name, regName, alloySpeed, 0);
    builder.addFluidInput(inputStack);
    builder.addEnergyPerTickInput(alloyEnergy);
    for i in 1 to row.length {
        builder.addFluidOutput(row[i] as ILiquidStack);
    }
    builder.build();
    
    var builderReversed = mods.modularmachinery.RecipeBuilder.newBuilder(regName + "_alloy_" + inputStack.definition.name + "_reversed", regName, alloySpeed, 0);
    for i in 1 to row.length {
        builderReversed.addFluidInput(row[i] as ILiquidStack);
    }
    builderReversed.addEnergyPerTickInput(alloyEnergy);
    builderReversed.addFluidOutput(inputStack);
    builderReversed.build();
}
