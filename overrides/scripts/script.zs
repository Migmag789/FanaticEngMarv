//Tweak script
//By Migmag789
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//Atomic Disassembler
recipes.remove(<mekanism:atomicdisassembler>);

//Digital Miner
recipes.remove(<mekanism:machineblock:4>);
recipes.addShaped(<mekanism:machineblock:4>, 
	[[<ore:circuitUltimate>, <ore:plateDenseObsidian>, <ore:circuitUltimate>], 
	[<mekanism:robit>, <mekanism:machineblock:15>, <mekanism:robit>], 
	[<mekanism:teleportationcore>, <ic2:resource:13>, <mekanism:teleportationcore>]
	]);

//Mekanism Jetpack
var hydrtank = <mekanism:gastank>.withTag({tier: 0, mekData: {stored: {amount: 64000, gasName: "hydrogen"}}});
recipes.remove(<mekanism:jetpack>);
recipes.addShaped(<mekanism:jetpack>, 
	[[<ore:gearSteel>, <ore:circuitAdvanced>, <ore:gearSteel>], 
	[<ore:gearTin>, <mekanism:gastank>, <ore:gearTin>],
	[null, <ore:dustAerotheum>, null]
	]);
<mekanism:jetpack>.addTooltip("To craft the jetpack, the gas tank has");
<mekanism:jetpack>.addTooltip("to be filled with 64000mb of hydrogen.");

//Angel Ring
var shulker = <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:shulker"}});
var bat = <extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}});
var ghast = <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}});

recipes.removeByRecipeName("extrautils2:angel_ring_0");
recipes.removeByRecipeName("extrautils2:angel_ring_1");
recipes.removeByRecipeName("extrautils2:angel_ring_2");
recipes.removeByRecipeName("extrautils2:angel_ring_3");
recipes.removeByRecipeName("extrautils2:angel_ring_4");
recipes.removeByRecipeName("extrautils2:angel_ring_5");

recipes.addShaped(<extrautils2:angelring>, 
	[[<magicbees:propolis>, <ore:plateDenseGold>, <forestry:propolis:3>],
	[<ore:plateDenseGold>, <ore:eyeofredstone>, <ore:plateDenseGold>], 
	[<draconicevolution:wyvern_core>, <ore:netherStar>, <draconicevolution:wyvern_core>]
	]);

<extrautils2:angelring>.addTooltip("Needs a shulker lasso at left and");
<extrautils2:angelring>.addTooltip("a ghast one at the right. Have fun!");

//Steel Blend to Steel Ingot in many furnaces
furnace.addRecipe(
	<thermalfoundation:material:160>, 
	<thermalfoundation:material:96>
	);

mods.mekanism.smelter.addRecipe(
	<thermalfoundation:material:96>, 
	<thermalfoundation:material:160>
	);

//Preventing a conflict with tiny charcoal
recipes.removeByRecipeName("galacticraftplanets:carbon_fragments_alt_alt");

//Diamond Nugget
recipes.remove(<translocators:diamond_nugget:0>);

//Metallurgic Infuser
var riw = <advgenerators:iron_wiring>;
var enori = <actuallyadditions:item_crystal:5>;
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, 
	[[riw, <thermalfoundation:material:515>, riw], 
	[enori, <ic2:resource:12>, enori], 
	[<ore:plateInvar>, <ore:circuitBasic>, <ore:plateInvar>]
	]);

//Iron Frame
recipes.remove(<advgenerators:iron_frame>);
recipes.addShaped(<advgenerators:iron_frame> * 3, 
	[[null, <ore:ingotIron>, null], 
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[null, <ore:ingotIron>, null]
	]);
