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
	[[<ore:circuitUltimate>, <ore:blockErodium>, <ore:circuitUltimate>], 
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

//Steel Blend to Steel Ingot in all kinds of furnaces
furnace.addRecipe(
	<thermalfoundation:material:160>, 
	<thermalfoundation:material:96>
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

//Titanium ore processing
var dustTitanium = <galacticraftplanets:item_basic_asteroids:9>;
var ingotTitanium = <galacticraftplanets:item_basic_asteroids>;

mods.actuallyadditions.Crusher.addRecipe(
	dustTitanium * 2, 
	<mw:titaniumore>, 
	<mw:tantalumingot>, 
	10
	);

mods.extrautils2.Crusher.add(
	dustTitanium * 2, 
	<mw:titaniumore>, 
	<mw:tantalumingot>, 
	0.1f
	);

mods.thermalexpansion.Pulverizer.addRecipe(
	dustTitanium * 2, 
	<mw:titaniumore>, 
	1000, 
	<mw:tantalumingot>, 10
	);

furnace.addRecipe(
	ingotTitanium, 
	<mw:titaniumore>
	);

mods.thermalexpansion.InductionSmelter.addRecipe(
	ingotTitanium * 2, 
	<mw:titaniumore>, 
	<minecraft:sand:*>, 
	1500, 
	<mw:tantalumingot>, 100
	);

furnace.remove(<mw:titaniumingot>);

//Tantalum Ore Processing

mods.actuallyadditions.Crusher.addRecipe(
	<mw:tantalumingot> * 3, 
	<mw:tantalumore>, 
	<appliedenergistics2:material:5>, 
	30
	);

mods.extrautils2.Crusher.add(
	<mw:tantalumingot> * 3, 
	<mw:tantalumore>, 
	<appliedenergistics2:material:5>, 
	0.3f
	);

mods.thermalexpansion.Pulverizer.addRecipe(
	<mw:tantalumingot> * 3, 
	<mw:tantalumore>, 
	1000, 
	<appliedenergistics2:material:5>, 30
	);

furnace.addRecipe(
	<mw:tantalumingot>, 
	<mw:tantalumore>
	);

mods.thermalexpansion.InductionSmelter.addRecipe(
	<mw:tantalumingot> * 4, 
	<mw:tantalumore>, 
	<minecraft:sand:*>, 
	1500, 
	<thermalfoundation:material:866>, 60
	);

furnace.remove(<mw:tantalumingot>);

//Silicon Ingot
var ingotSilicon = <mw:silicon>;
furnace.addRecipe(
	ingotSilicon, 
	<appliedenergistics2:material:5>
	);
furnace.addRecipe(
	ingotSilicon,
	<refinedstorage:silicon>
	);
furnace.addRecipe(
	ingotSilicon, 
	<galacticraftcore:basic_item:2>
	);

//OreDict Entry for Modern Warfare Ores
var oreRuby = <ore:oreRuby>;
oreRuby.add(<mw:rubyore>);
var oreTitanium = <ore:oreTitanium>;
oreTitanium.add(<mw:titaniumore>);
var oreTantalum = <ore:oreTantalum>;
oreTantalum.add(<mw:tantalumore>);
var oreSulfur = <ore:oreSulfur>;
oreSulfur.add(<mw:sulfurore>);

//Modern Warfare ores mek processing
mods.mekanism.enrichment.addRecipe(<mw:titaniumore>, dustTitanium * 2);
mods.mekanism.enrichment.addRecipe(<mw:tantalumore>, <mw:tantalumingot> * 2);