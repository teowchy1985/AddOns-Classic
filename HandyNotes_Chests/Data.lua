local _, ns = ...
local points = ns.points

ns.bestPet = "Arguably the best pet for a hunter is a cat.\n\nHere is a nice range of rares/elites to tame:\n\n"
			.."Mokwa     - Level 7 west of Bloodhoof, Mulgore\nRaluk     - Level 7 in the Echo Isles, Durotar\n"
			.."Duskstalker     - Level 9 in Teldrassil\nThe Rake     - Level 10 east of Thunderbluff. 30+ mins respawn\n"
			.."Dishu     - Level 13 in northern Barrens\nShadowclaw     - Level 13 north of Auberdine, Darkshore\n"
			.."Humar     - Level 23 Ratchet, The Barrens. 8+ hours respawn\n"
			.."Araga     - Level 35 in Alterac. 2-3 day respawn\nBroken Tooth     - Level 37 in the Badlands\n"
			.."Bhag'thera     - Level 40 elite in the Stranglethorn\nKing Bangalash     - Level 43 elite in the Stranglethorn\n\n"
			.."For those who love Wind Serpents... Son of Hakkar of course\n"
			.."and you can find him in Zul'Gurub. Level 60 Elite and of\n"
			.."course the Young Pridewings (only) in Stonetalon\nMountains as a co-reward with gaining Kill Command"

ns.chestTitle = ns.L["Waylaid Supplies"] .." - " ..ns.L[ "Level" ] .."\n< "
ns.chest1 = ns.chestTitle ..ns.L[ "Friendly" ]
ns.chestContent1 = "* 4 x Level 10 Mage Scrolls\n* Profession recipes\n* Greens, Whites, Greys"
ns.chest2 = ns.chestTitle ..ns.L[ "Honored" ]
ns.chestContent2 = "* 4 x Level 20 Mage Scrolls\n* Profession recipes\n* Greens, Greys\n* 8 slot bags"
ns.chest3 = ns.chestTitle ..ns.L[ "Honored" ]
ns.chestContent3 = "* 4 x Level 20 Mage Scrolls\n* Profession recipes\n* Greys, Greens, Blues\n* 10 slot bags"
ns.chest4 = ns.chestTitle ..ns.L[ "Revered" ]
ns.chestContent4 = "* 5 x Level 40 Mage Scrolls\n* Profession recipes\n* Greys, Greens, Blues\n* 10 slot bags"
ns.chest5 = ns.chestTitle ..ns.L[ "Revered" ]
ns.chestContent5 = "* 5 x Level 40 Mage Scrolls\n* Profession recipes\n* Greys, Greens, Blues\n* 12 slot bags"
ns.chest6 = ns.chestTitle ..ns.L[ "Revered" ]
ns.chestContent6 = "* 5 x Level 40 Mage Scrolls\n* Profession recipes\n* Greys, Greens, Blues\n* 12 slot bags"
ns.chest7 = ns.chestTitle ..ns.L[ "Exalted" ]
ns.chestContent7 = "* 5 x Level 40 Mage Scrolls\n* Profession recipes\n* Greys, Greens, Blues\n* 14 slot bag"
ns.cozySleepingBag = "Step One: " ..( ( ns.faction == "Alliance" ) and "Go to Alexston Farmstead in Westfall" or
			"Go to the burnt tower, road south of Taurajo, The Barrens" ) .."\nIn the rubble search for the Burnt-Out Remains.\n\n"
			.."Step Two: " ..( ( ns.faction == "Alliance" ) and "Go to the burnt tower, road south of Taurajo, The Barrens." or
			"Go to Alexston Farmstead in Westfall" )
			.."\nIn the rubble search for the Burnt-Out Remains.\nPickup the next quest from a nearby nailed plank.\n\n"
			.."Step Three: Head to Stonetalon Mountains, looking for an\nabandoned camp. It's along a path north-east "
			.."of Sun Rock Retreat.\nThere's Pocket Litter there, atop a box.\n\n"
			.."Step Four: Go north, straight up a hill, looking for A Mound of Dirt.\n"
			.."Click to complete \"Scramble\". Accept \"Wet Job\".\n\n"
			.."Step Five: Loch Modan, on a ledge of the dam that borders the\nWetlands. Click on the eagle figurine to complete "
			.."and begin quests.\n\n"
			.."Step Six: Climb the Thoradin Wall, bordering Hillsbrad and Arathi\nHighlands. Climb up from the Hillsbrad side "
			.."via a broken cart.\n Keep climbing and you'll find a hall and a bag.\n\n"
			.."Note: This quest chain rewards you with 8 pieces of Student\nFodder. Currently the only way to obtain this rested XP boon!"
ns.felPortals = "Used by the Warlock Explorer Imp,\nMages for their Balefire Bolt rune, etc"
ns.felRift = "Does NOT reward a Mage Balefire Bolt Spell Note,\nnor a Warlock Rune of the Spellguard.\n"
			.."Source of Felcloth and Demonic/Dark Runes"
ns.gnomeregan = "(1) Loot a Grime-Encrusted Salvage from any\nGnomer trash or the Dark Iron Ambassador.\n\n"
			.."(2) At the Dormitory, insert it plus 30s into the\nSalvagematic 9000. You need to be L40.\n\n"
			.."Ziri nearby offers to help with repairs, with you\nproviding 10 x mithril bars (AH), 5 x Greater\n"
			.."Mystic Essence (AH), 3 x GG12-082 Cartridge Fuse\n(mechanical Gnomeregan trash), and a Pristine G-7\n"
			.."C.O.R.E. Processor, outlined below:\n\n(3) Kill Techbot (L40e) at the Gnomer entrance\n"
			.."for a Corroded processor. You're now on the third\nquest. Speak to Ziri.\n\n"
			.."(4) Go to Scooty in Booty Bay. The 4th quest has\nyou collecting beacons from Desolace, Dustwallow\n"
			.."Marsh, Feralas and Tanaris.\n\n(5) Back at BB, Scooty has you teleported to\n"
			.."Wirdal Wondergear in Feralas. Note: His\nAutomations will knock you off his base if you\n"
			.."so much as sneeze at them. In any case a hearth\nset to the Bay is a win.\n\n"
			.."(6) Farm the Spent Voidcore from naga mobs, and\nthe Mote of Darkness from a Shadowy Figure that\n"
			.."spawns randomly from any mob that awards you XP.\n\n(7) Return to Ziri in Gnomer for your rewards"
ns.gnomereganTitle = "Gnomeregan Gear Guide"
ns.nightmare = "(1) At L50, enter the Ashenvale Emerald Dream portal. Go south to the back of the\n"
			.."Warsong Lumber Camp. Continue until you receive a \"Aura of Paralyzing Dread debuff.\"\n"
			.."Exit the dream and talk to Field Captain Hannalah for the first quest.\n\n"
			.."(2) Speak to Loganaar in Moonglade. He'll directly send you to Itharius in the south-\n"
			.."west corner of the Swamp of Sorrows.\n\n"
			.."(3) Within Temple of Atal'Hakkar / Sunken Temple you must progress as far as the Lair\n"
			.."of the Chosen. \"Going Under\" will now be satisfied. Later return to Itharius.\n\n"
			.."(4) You're now sent back to Loganaar in Moonglade. Hand in and wait for the Shadowy\n"
			.."Figure to spawn. Speak to her and pickup the next quest and the next too.\n\n"
			.."(5) Next port of call is Booty Bay in Stranglethorn Vale. An Injured Gnome will send\n"
			.."you to an Itty Bitty Murloc on Jaguero Isle. Next to him is a Small Burrow. Retrieve\n"
			.."the Vambraces and head to Moonglade.\n\n"
			.."(6) The Shadowy Figure has a new quest for you. Return to Ashenvale, equip the\n"
			.."Vambraces prior to entering the dream. Note that she has altered them! Go to your\n"
			.."previous \"debuff\" location. A Nightmare Amalgamation pats the area. Kill it, but\n"
			.."you'll need a 5 man group. Hard hits. It drops the purple Mantle of Nightmares!!!\n\n"
			.."(7) Head back to the Shadowy Figure. She's now your go-to for Phase 3 Gear!"   
ns.nightmareTitle = "Nightmare Gear Guide"
ns.twoMeditate = "At level 17 go to The Park in Stormwind (Human /\nDwarf), Temple of the Moon, Darnassus (Night Elf),\n"
			.."War Quarter, Undercity (All Horde) for a RACIAL\nquest from a Priest trainer.\n\n"
			.."Ultimately you'll be able to share multiple Meditation\nbuffs across races (and factions too. Bug?).\n\n"
			.."Player 1: /kneel; Player 2: /pray"
ns.twoMeditateTitle = "Priest Two Meditations"
ns.voidTouchedTitle = "Void Touched Gear Guide"
ns.voidTouched = "(1) Reach level 25 and 100 in one of\nBlacksmithing, Leatherworking or Tailoring.\n\n"
			.."(2) Purchase an Elixir of Coalesced Regret from the AH.\nAlchemists may purchase this recipe from Zixil, on the path\n"
			.."between Tarren Mill and Southshore; Kzixx on the path from\nRedwood / Elwynn Forest down to Darkshire.\n\n"
			.."(3) Find the Dead Twilight Cultist at the Zoram Strand,\nAshenvale. Drink the Elixir and talk to him.\n\n"
			.."(4) In Blackfathom Deeps, defeat the 2nd boss, Ghamoo-Ra.\nInteract with the corpse of Old Serrakis.\n\n"
			.."(5) At Ratchet accept the quest from N'ora Anyheart. Strange\nDust x 40, Greater Magic Essence x 5, Small Glimmer Shard x 2,\n"
			.."Handful of Shifting Scales, 5 gold. The Scales drop off Old\nSerrakis. Other stuff off the AH.\n\n"
			.."(6) With her Talisman reward, return to BFD and go to Kelris'\nunderwater cavern. Loot the Artisan's Chest. \"The Box\"\n"
			.."magically appears in your bags.\n\n(7) To Alterac Mountains. Use the pillar to destroy The Box.\n\n"
			.."(8) A Shadowy Figure spawns. Interact. You MUST SELECT THE\n\"FINE, SHOW ME\" option.\n\n"
			.."(9) Gratz. You now have every Phase 1 recipe. Likely BiS!\n\n"
			.."(Repeat from (6) to obtain another shard)"


-- Icons:	1 - 7 	Chests
--			15		Void-Touched
--			16		Best Pets
--			17		Cozy Sleeping Bag
--			18		Fel Portals
--			19		Priest L17/18 Dual Meditation
--			20		Gnomeregan Gear
--			21		Nightmare Gear
--			22		Nightmare Bloom / Seed


--=======================================================================================================
--
-- EASTERN KINGDOMS
--
--=======================================================================================================

points[ 1416 ] = { -- Alterac Mountains
	[38604700] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[39805290] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[41404000] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[42454790] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[47453490] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[59904345] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[61204350] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5, continent=true },
	[61604045] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[61604570] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[62704060] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[63354345] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[63404470] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },

	[35355320] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6, continent=true },
	[35405410] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[35805570] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[36205500] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[37451530] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[38701490] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[39501520] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[40352045] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[47501710] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[53602110] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[56402705] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[58403040] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },

	[31007260] = { npc=14222, name="Araga", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },
	[31408480] = { npc=14222, name="Araga", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[38808980] = { npc=14222, name="Araga", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1417 ] = { -- Arathi Highlands
	[31102600] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[32402670] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[33453090] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[33702740] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[61207290] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[63606780] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5, continent=true },
	[64607380] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[66106380] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[68007820] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[70607000] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[73806510] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },

	[16708745] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[18206650] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[18806500] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[19806890] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[20708960] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[20908490] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[22006490] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[22706735] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[23458480] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[25106435] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[25806570] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6, continent=true },
	[28306570] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[28456285] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[53107710] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[53457440] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[53707990] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[53907570] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[54208145] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[82803340] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[84002880] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[85603030] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[85603245] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },

	[22502420] = { name="Hastily Rolled-Up Stachel", title="Cozy Sleeping Bag", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, continent=true,
						tip="Step Six. See the Hillsbrad map\nfor where to begin this step" },
}

points[ 1418 ] = { -- Badlands
	[13807500] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[29505630] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6, continent=true },
	[40602590] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[40802810] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[41552640] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[42302880] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[50806830] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[53003490] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[53602945] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[62707040] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },

	[06459045] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[07609600] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[07908570] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7, continent=true },
	[09609330] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },

	[45203520] = { npc=2850, name="Broken Tooth", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },
	[54801480] = { npc=2850, name="Broken Tooth", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[63003020] = { npc=2850, name="Broken Tooth", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1419 ] = { -- Blasted Lands
	[41901320] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[42501445] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[44301210] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[62403420] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[65553350] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[66902960] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7, continent=true },

	[35005480] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[41303350] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[43602530] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[46603910] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[48804830] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[56203660] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[60204640] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[62003920] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
}

points[ 1428 ] = { -- Burning Steppes
	[20654345] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[22605240] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[24206460] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[29504370] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[36306120] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[37504230] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[57454530] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[60006500] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift, continent=true },
	[69302645] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[72103140] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[85404360] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[93405920] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
}

points[ 1430 ] = { -- Deadwind Pass
}

points[ 1426 ] = { -- Dun Morogh
	[21705200] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[23105200] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[23305420] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[23505240] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[26005120] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[26104120] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[26803640] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[34005110] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[36104010] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[38704330] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[39204650] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[40104810] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[41004890] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[41504440] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[42003590] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[42804710] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43504920] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[66905960] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[67506070] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[68905940] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[71005900] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[71205050] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[71605180] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[72104990] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[73005350] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[74606170] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[74805650] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[76005810] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[77906190] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[79305870] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[79705470] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
}

points[ 1431 ] = { -- Duskwood
	[13202730] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[14704440] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[21457345] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[22007200] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[24107200] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[24452725] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[31453245] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3, continent=true },
	[31603960] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[32602820] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[32804790] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[34755455] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[35952740] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[51806220] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[52505930] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[52605780] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[59202525] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[61802540] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[81805870] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[81805980] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[82206135] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	
	[12803370] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[16452885] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[17603620] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[26003640] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[33206945] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[33407620] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[34407590] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[35008130] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[35508030] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[36558355] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[36808045] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4, continent=true },
	[37207790] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[38108010] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[40307545] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[49357735] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[50607710] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[57703080] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[60304090] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[60704145] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[60907545] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[64107290] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[64405170] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[65706745] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[65906930] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[66107640] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[71307245] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[71607180] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[73207220] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[76903540] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[77303645] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[78703245] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },

	[18002560] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[37602240] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[55406160] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance", continent=true,
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[59001960] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[68203400] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },

	[81801980] = { npc=3134, name="Kzixx", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },
}

points[ 1423 ] = { -- Eastern Plaguelands
	[22003420] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[24601950] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[28704430] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[31703050] = { name="Large Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[38101650] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[38202580] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[38204000] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[82603720] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift, continent=true },
	[82804040] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[83504610] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[84204320] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[86904250] = { name="Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
}

points[ 1429 ] = { -- Elwynn Forest
	[12463405] = { title=ns.twoMeditateTitle, npc=11397, name="Nara Meideros", icon=19, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="Begin here", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[19392475] = { title=ns.twoMeditateTitle, npc=376, name="High Priestess Laurena", icon=19, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="Finish the second quest here. /kneel always!", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf") and "Secrets of the Light (2)" or "" ) }, continent=true, },

	[23805890] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[24409350] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[26049211] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 }, -- V
	[27808840] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[30806480] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[36206580] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[37908330] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[38208200] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[40307750] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[40807760] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[41605280] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[41807800] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[41808150] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47608647] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 }, -- V
	[48008710] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[48608790] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52505900] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[54306670] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[55606700] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56706680] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[61004910] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[61304970] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[61704680] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[62204800] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[64805730] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[65004130] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[65005630] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[66104070] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[68404460] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[69903880] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[71107770] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[71108040] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[71507670] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[74005000] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[75508520] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[76508650] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[77308520] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[78205750] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[79305710] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[79405450] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[79505710] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[79705530] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
}

points[ 1424 ] = { -- Hillsbrad Foothills
	[75203780] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[75304150] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[77303890] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3, continent=true },
	[79303945] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },

	[23206420] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[25457090] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4, continent=true },
	[27807280] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[29807360] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[62456310] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[64706160] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[66256045] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },

	[32407235] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[35706870] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[40706910] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[42453175] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5, continent=true },
	[44002810] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[44956735] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[45103010] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },

	[33003600] = { title=ns.twoMeditateTitle, name="Hillsbrad mobs (Various)", icon=19, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, continent=true,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) } },
	[35204700] = { title=ns.twoMeditateTitle, name="Hillsbrad mobs (Various)", icon=19, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) } },

	[50844945] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[51593922] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[55702030] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[55752740] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },
	[57013427] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[60712068] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[88557351] = { name="Shadowy Figure / Shard of Pure Light", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="Go via Ravenholdt Manor" },

	[87304960] = { name="Old Broken Cart", title="Cozy Sleeping Bag", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, continent=true,
						tip="Step Six. Begin Step six right here,\nnot from the Arathi Highlands side" },
}

points[ 1455 ] = { -- Ironforge
}

points[ 1432 ] = { -- Loch Modan
	[24803070] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[26004930] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[26504420] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[26905760] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[27908330] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[28308740] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[31507550] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[34402710] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[34509000] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[34609110] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[34908250] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[35102680] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[35602480] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[35701650] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[35909370] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[36008460] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[36302350] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[37608650] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[37701610] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[39801240] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[48002090] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[49002970] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[54502600] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	
	[48103950] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2, continent=true },
	[59201360] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[68006590] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[68301860] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[68806250] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[69302280] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[69806630] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[73306440] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[75502500] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[77001440] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[77701840] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[79501610] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },

	[49501280] = { name="Carved Figurine", title="Cozy Sleeping Bag", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="Step Five", continent=true },
}

points[ 1433 ] = { -- Redridge Mountains
	[14506170] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[14906430] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[17106360] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[17201800] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[19802150] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[20501390] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[21103620] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[21701930] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[23402700] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[27302140] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[28008400] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[28052845] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[29608450] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[32308300] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[34102570] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[39003180] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[43807090] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[47407060] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[52304670] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2, continent=true },
	[56005740] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[14506170] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },

	[29803040] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[30802180] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[42801680] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[71408350] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[71605830] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[79003350] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[79603280] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[79007300] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[81606060] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[83104450] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[83204560] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[86305250] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[86605300] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },

	[25801500] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[26400830] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[28001500] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[28801760] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[33700760] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[35450990] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[36450790] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[41501060] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[58005160] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[61204370] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[63004980] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[66305720] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[68405380] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[69205990] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[69455530] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[70055745] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[73505500] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[73908030] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[74905020] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[75603000] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[75754735] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3, continent=true },
	[76303750] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[77706700] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[79154045] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[79704470] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[80104870] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[80105460] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[81456050] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[83705800] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[85054640] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
}

points[ 1427 ] = { -- Searing Gorge
	[14703620] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[17803800] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[25902490] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[28602500] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[36005890] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[37504935] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[38003910] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[40154155] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7, continent=true },
	[41702130] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[44203390] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[44206270] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[44705190] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[45453860] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[46702500] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[48905520] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[62306245] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
}

points[ 1421 ] = { -- Silverpine Forest
	[36502930] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43502250] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43503170] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44107170] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44702050] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44902350] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[45307500] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[45405420] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true  },
	[46007150] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[46305480] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47207380] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47705550] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[48302450] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[55801960] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56202760] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[59101810] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[59901750] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[60801630] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[64801210] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[66301300] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	
	[64504970] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2, continent=true },
	[65004200] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[65202320] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[65802340] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[66804550] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[67502540] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[67802420] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[77603100] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[80202850] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },

	[38801840] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[38802340] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[44202520] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[44602550] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[45503180] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[49801340] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[50205680] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[50206520] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[54403580] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[55602460] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[60800700] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
}

points[ 1453 ] = { -- Stormwind City
	[20685007] = { title=ns.twoMeditateTitle, npc=11397, name="Nara Meideros", icon=19, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="Begin here", faction="Alliance", continent=true,
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[38582606] = { title=ns.twoMeditateTitle, npc=376, name="High Priestess Laurena", icon=19, class="PRIEST", level=17,
					guide=ns.twoMeditate, tip="Finish the second quest here. /kneel always!", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf") and "Secrets of the Light (2)" or "" ) } },
}

points[ 1434 ] = { -- Stranglethorn Vale
	[24401260] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[24402480] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[25002300] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[25452970] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[25702955] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[29901980] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[33501550] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[42851910] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[43800940] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[43901830] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[44451000] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5, continent=true },
	[44701100] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[45600980] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },

	[20401180] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[23300800] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[25400970] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[26200860] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[35502380] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[37003130] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[37603090] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[37702290] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[41803560] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6, continent=true },
	[46203180] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[47150545] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[47304000] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[48500710] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[48700600] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[49600790] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },

	[27208270] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[27306945] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[27806245] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[28106360] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7, continent=true },
	[29408950] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[29608080] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[30008710] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[30108945] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[30708950] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[33408810] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[33608670] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[33708820] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[34605160] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[35205080] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[38008220] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[38608060] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[39205870] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[39805770] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[40508080] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[40608570] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[41504960] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[41604230] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[42104450] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[42404640] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[42454810] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[43404910] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[44304500] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[44704160] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[45804290] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[47704245] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[50453065] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[51502860] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[51802760] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[52702830] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },

	[38603560] = { npc=731, name="King Bangalash", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[47602880] = { npc=728, name="Bhag'thera", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },
	[49002060] = { npc=728, name="Bhag'thera", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },
	[49802460] = { npc=728, name="Bhag'thera", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },

	[27507740] = { title=ns.gnomereganTitle, npc=7853, name="Scooty", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },

	[26807720] = { npc=222444, name="Injured Gnome", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare, tip="The middle level of the Salty Sailor",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
	[40808560] = { npc=222451, name="Itty Bitty Murloc", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare, continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
}

points[ 1435 ] = { -- Swamp of Sorrows
	[04903160] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[11603410] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[13857145] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[14005610] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[54902960] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[56902490] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[60102220] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[61302390] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[61902110] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[62552345] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6, continent=true },
	[64302245] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[65601845] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },

	[57006100] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[70209680] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[82809345] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[86458395] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[89007845] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[89702570] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[91202745] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[92006820] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[94405250] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7, continent=true },
	[94805060] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[94904540] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[94906100] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },

	[10506030] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[12302960] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[16606330] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[22806430] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[27004930] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[34402840] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[36405030] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[49603840] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[56606540] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[60402770] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[60904370] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[69607840] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[72501070] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[77308960] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[81303430] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[83406650] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[87202630] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[90906540] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[91405670] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },

	[13607150] = { npc=5353, name="Itharius", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare, continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
}

points[ 1425 ] = { -- The Hinterlands
	[45453980] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[50255335] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7, continent=true },
	[53103870] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[57454230] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[57456345] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[58407280] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[58456720] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[60806460] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[60806820] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[62106520] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[63457335] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[63808350] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[64306500] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[64907100] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[66454460] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[67458000] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[67607745] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[67706660] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[68107500] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[68207330] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[68707050] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[71104870] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },

	[23455870] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[25456685] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[31606770] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[32105870] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[32207570] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[37207200] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[40106630] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[41205940] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[47456915] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[49206850] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
}

points[ 1420 ] = { -- Tirisfal Glades
	[25304870] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[31704610] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[34704100] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[38004970] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[49203360] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[49603570] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[49804280] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[51006750] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[51802600] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[55504210] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[57903290] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[58703070] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[58802700] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[72802580] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[77205980] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[78405590] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },

	[56204940] = { title=ns.twoMeditateTitle, npc=6491, name="Spirit Healer (Brill)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Come to here for the second quest hand-in. /kneel",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) }, continent=true, },
}

points[ 1458 ] = { -- Undercity
	[47201960] = { title=ns.twoMeditateTitle, npc=211225, name="Baj'ura", icon=19, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, tip="Begin the first quest here", continent=true,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) } },
}

points[ 1422 ] = { -- Western Plaguelands
}

points[ 1436 ] = { -- Westfall
	[29104880] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[29204590] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[29304960] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[29704730] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[30904620] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[31004410] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[33205650] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[36403190] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[38202860] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[38806980] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[41504100] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[42306880] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[42701220] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43000800] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43906830] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44102350] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44507020] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44702550] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44900760] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[45002190] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[45502090] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[45507030] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[45901910] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[46103850] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[46805340] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[48204710] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[48302030] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[48506090] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[51103900] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52503450] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53106250] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[55600770] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56501340] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56501920] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[60605830] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[60905020] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	
	[34808570] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[36808280] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[53007890] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[56307450] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[56506990] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2, continent=true },
	[60707440] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[63807030] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[65307510] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },

	[37505070] = { name="Burned-Out Remains", title="Cozy Sleeping Bag", icon=17, guide=ns.cozySleepingBag,
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" },
						tip="Alliance: Step One\nHorde: Step Two", continent=true },
						
	[28604400] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[28904750] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[29005850] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[29606940] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[29803440] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[31403940] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[31506540] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[31603920] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[32207600] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[32208020] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[32402920] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[34008220] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[34806140] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[35803260] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[37508530] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[41501530] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[44804640] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[46801240] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[46903950] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[47502170] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[47506750] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[47507930] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[47801380] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[51003240] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[51607150] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[53008020] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[57001050] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[62502630] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
}

points[ 1437 ] = { -- Wetlands
	[13454145] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[13603810] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[13903020] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[13903490] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[14103280] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[14702370] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[15303850] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[16103060] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[16203610] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[18303970] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[31253245] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3, continent=true },
	[31602980] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[35202760] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[37903020] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[38902720] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[42703230] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[43603480] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[45303200] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[45453475] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[46907620] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[47106600] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[47905890] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[48307420] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[48607845] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[48906020] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[49905970] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[51456095] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[51603080] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[52902730] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[55657540] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[61205830] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[61807230] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[63006980] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[63305910] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[63806300] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[63907820] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[64905590] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },

	[38604590] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[44004310] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[45604620] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[45754250] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[46401620] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[46604650] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[47501500] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[48201600] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[48501770] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[49204590] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[51204620] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[53705460] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[59802460] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[61802680] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[62502870] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4, continent=true },
	[67603140] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[68803200] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[68902900] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[71203040] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },

	[72009400] = { name="Carved Figurine", title="Cozy Sleeping Bag", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="Step Five", continent=true },
}

--=======================================================================================================
--
-- KALIMDOR
--
--=======================================================================================================

points[ 1440 ] = { -- Ashenvale
	[07101230] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[10402260] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[11102690] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[11603180] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[14202040] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[18503160] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[22403630] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2, continent=true },
	[31902320] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[31903120] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	
	[24106350] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[25006060] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[28706090] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[33406750] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[34203830] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[35453655] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[36003170] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[37903390] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[39703610] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[40153445] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[40303320] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[40453180] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3, continent=true },
	[42303490] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[42453345] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[46106990] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[48906970] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[50005970] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[50906970] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[50907545] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[54106110] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[54306420] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[56206320] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },

	[66255645] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[66455390] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[66905710] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[68804960] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4, continent=true },
	[74807440] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[75604645] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[76207470] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[77407290] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[78104510] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[78454635] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[78704520] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[79404960] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[80454975] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[81804945] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },

	[17202660] = { npc=212334, name="Dead Twilight Cultist", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },
	[86006700] = { name=ns.L["AoPD"], title=ns.nightmareTitle, icon=21, guide=ns.nightmare,
					tip="This is the approximate location, once\n"
						.."inside the Nightmare, to obtain the debuff", continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
	[89404060] = { npc=221477, name="Field Captain Hannalah", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare,
					tip="She is located in \"regular\"\nAshenvale, outside the Nightmare.\n\n"
						.."Pin also used by the Runes AddOn so one\nmay be mostly overlapping the other",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },

	[24406340] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[27606260] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[30203020] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[33502840] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[44506420] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[51204700] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[52506280] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[55504020] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[67004600] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[67205100] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[77407300] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[80507080] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[84807020] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },

	[31602300] = { title=ns.twoMeditateTitle, name="Forsaken mobs (Various)", icon=19, class="PRIEST", level=18,
					guide=ns.twoMeditate,
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "Secrets of the Light (2)" or "" ) } },
	[33406820] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs", continent=true,
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
	[61007620] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },									
	[64206840] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
	[67208280] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
	[71405400] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[76604520] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[79007360] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[79406200] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[85406640] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },

	[80105000] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed, continent=true },
	[82106510] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[82905170] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[84506070] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[85805090] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[86106570] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[87304630] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[88504300] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[88904610] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[90104950] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[90805240] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[91005680] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[91404970] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
	[93205130] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=22, tip=ns.nightmareSeed },
}

points[ 1447 ] = { -- Azshara
	[15007310] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[17606890] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[20456245] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[25856145] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[26505600] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[29305300] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[32005145] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[32454530] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7, continent=true },
	[34704060] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[35453590] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[35755245] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[36855950] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[38454785] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[41205000] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[43356440] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },

	[16505100] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[17505870] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[21205400] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[24804780] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[25108150] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[30207980] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[33008150] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
}

points[ 1439 ] = { -- Darkshore
	[37604380] = { title=ns.twoMeditateTitle, npc=211298, name="Syrnoya", icon=19, class="PRIEST", level=17, continent=true,
					guide=ns.twoMeditate, tip="Complete the second quest here. /kneel always!", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ),
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },

	[36702740] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[39607830] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[41605820] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[42003120] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[42506200] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43005870] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44703730] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[46003770] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47103700] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[48103650] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[50802560] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[54703690] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[55503620] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56603510] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	
	[35408480] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[36308650] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[38402930] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2, continent=true },
	[38408680] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[42608680] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[42808450] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[44202040] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[44308500] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[44708690] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[56402620] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[57102250] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[58102000] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[58401770] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[58500750] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[58801580] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[60301850] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[60502240] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[61501930] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[61902160] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },

	[40604080] = { npc=2175, name="Shadowclaw", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },

	[35808280] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[37606380] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[40608980] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[43202700] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[44208200] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[45002620] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[45205800] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[46204680] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[47402880] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[49803680] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[56402480] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[59802180] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
}

points[ 1457 ] = { -- Darnassus
	[38608880] = { title=ns.twoMeditateTitle, npc=211188, name="Maethra Slagheart", icon=19, class="PRIEST", level=17,
					guide=ns.twoMeditate, tip="Begin the first quest here", faction="Alliance", continent=true,
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "Secrets of the Light (2)" or "" ) } },
}

points[ 1443 ] = { -- Desolace
	[52502850] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[54302820] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[54902620] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[55203010] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[71705030] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[73454165] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[74504720] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[74604900] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[74801945] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[75552645] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5, continent=true },
	[77101800] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[78802330] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },

	[29406060] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[29605800] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[30505470] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[32606110] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[32705510] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[32705960] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6, continent=true },
	[34205300] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[35206145] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[35709210] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[39109530] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[39809410] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[40609470] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[66008070] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[69507850] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[71457175] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[72007850] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[73807370] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },

	[47402220] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[48808220] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[49507460] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[52008550] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[52207250] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[52808100] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[54401920] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[54602880] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[56107460] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[71501860] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[72502190] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[73502460] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[74501030] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[76501920] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },
	[80501710] = { name="Fel Tear", title="Fel Portal", icon=18, tip=ns.felPortals },

	[32017272] = { title=ns.gnomereganTitle, object=424075, name="Quadrangulation Beacon 002", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1411 ] = { -- Durotar
	[39405380] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[40803040] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[42102710] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[42502690] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43303940] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43603560] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43705070] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43903920] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[44102400] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44205030] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[46607900] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47104980] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47503100] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47604980] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47803330] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47807720] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[49104840] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[49702430] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[49708070] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[50702590] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[51201900] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[51202360] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[51302100] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[51401030] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[51501030] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[51901990] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52002540] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52400920] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52602640] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52700850] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53202500] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53802820] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[54102220] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[57805870] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[59605810] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[59605630] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[61804550] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[61805110] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[62105590] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[62404210] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[62406050] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[63205680] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[64105040] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[64505310] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[65508320] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[67108670] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[68308510] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[68407150] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },

	[68607160] = { npc=208124, name="Raluk", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },

	[68707110] = { title=ns.twoMeditateTitle, object=410168, name="Voodoo Pile", icon=19, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, tip="Ignore the quest directions. Climb the\nhill on the northern-most island",
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) }, continent=true, },
}

points[ 1445 ] = { -- Dustwallow Marsh
	[30702245] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[30902060] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[31502160] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6, continent=true },
	[33702210] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[54101500] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[57301510] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[57651645] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[58001340] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[59100980] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[61701820] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[62900920] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[63101900] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[63200720] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[63202720] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },
	[64452685] = { title=ns.chest6, level=40, name="Solid Chest", icon=6, tip=ns.chestContent6 },

	[36706880] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[37706760] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[37906960] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[38806460] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[42906560] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[44106500] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[44906545] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7, continent=true },
	[44906680] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[48457365] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[55606390] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[56006320] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[58804620] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[58906800] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[60006890] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },

	[58601300] = { title=ns.gnomereganTitle, object=424074, name="Quadrangulation Beacon 001", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1444 ] = { -- Feralas
	[68205880] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[70606250] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[72506380] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[73205440] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[74205060] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[74205680] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[74206000] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[76205650] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },
	[76606360] = { name="Fel Scar", title="Fel Portal", icon=18, tip=ns.felPortals },

	[29309380] = { title=ns.gnomereganTitle, object=424077, name="Quadrangulation Beacon 004", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					tip="Stay on the coast to avoid L60e.\nThe cave is also a dead end",
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
	[84204380] = { title=ns.gnomereganTitle, npc=218237, name="Wirdal Wondergear", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					tip="Stay on the coast to avoid L60e.\nThe cave is also a dead end",
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1450 ] = { -- Moonglade
	[52404050] = { npc=12042, name="Loganaar", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare, continent=true,
					tip="Ensure you are friendly with the Cenarion Circle",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
}

points[ 1412 ] = { -- Mulgore					
	[28502120] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[29302350] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[29602590] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[30902290] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[31006080] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[31206180] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[31306340] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[31504200] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[31704270] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[32506100] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[33104740] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[35506240] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[36101120] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[36601290] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[37701040] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[38400800] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[40101530] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[40601610] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[48407230] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53200930] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53304810] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53307310] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53707320] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53804850] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[55101610] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[55201150] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56701480] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[59804810] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[60903790] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[61204730] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[62303830] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[63107150] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[63504110] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[64206890] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[65506920] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[65604090] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[66906860] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },

	[36605660] = { npc=205382, name="Mokwa", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[51801840] = { npc=5807, name="The Rake", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1454 ] = { -- Orgrimmar
	[35748823] = { title=ns.twoMeditateTitle, npc=211229, name="Dietrich Praice", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Begin the first quest here", continent=true,
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
}

points[ 1442 ] = { -- Stonetalon Mountains
	[43303880] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[45104600] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[50904380] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2, continent=true },
	[53603580] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[63504020] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[66304550] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[66505080] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[71906270] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[72206040] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[72906140] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[73006000] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[73006150] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[73006280] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[73305900] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[73608560] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[74105930] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[77009150] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[80608950] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[84308420] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },

	[27206950] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[28406420] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[29207030] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[31705890] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[32606590] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3, continent=true },
	[34456200] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[35006890] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[37006890] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },

	[39604990] = { name="Mound of Dirt", title="Cozy Sleeping Bag", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="Step Four" },
	[40805250] = { name="Pocket Litter", title="Cozy Sleeping Bag", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="Step Three", continent=true },
}

points[ 1446 ] = { -- Tanaris
	[38705680] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[39905430] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[41205700] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[41505450] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[42205320] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[70904330] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[71104570] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[72304410] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[72604570] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[72904530] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7, continent=true },
	[73004790] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[73804820] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[75304610] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },

	[37602420] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[40002870] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[42202260] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[58703945] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[60603270] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[60703910] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[62703060] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[63303345] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[63802900] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[64004020] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[65003990] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[65453280] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },
	[65453645] = { title=ns.chest7, level=45, name="Solid Chest", icon=7, tip=ns.chestContent7 },

	[37802730] = { title=ns.gnomereganTitle, object=424076, name="Quadrangulation Beacon 003", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1438 ] = { -- Teldrassil
	[31503170] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[33202850] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[33903560] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[34202820] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[34203440] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[35403480] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[35603880] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[36303790] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[37204300] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[37504160] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43806130] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43905990] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43906190] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44506040] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44606260] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[44805890] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47207780] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47907790] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[50006300] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[51605000] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[51904860] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52005130] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53005020] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56307550] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[65806480] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[66006350] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[68705190] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[69605320] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },

	[53807680] = { npc=14430, name="Duskstalker", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[60207560] = { npc=14430, name="Duskstalker", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1413 ] = { -- The Barrens
	[42102470] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43402370] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43602650] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[43702120] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[45102000] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[46603900] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1, continent=true },
	[46502280] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[46601810] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47001590] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47701950] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[47901790] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[48903880] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52501070] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52501160] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[52904440] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53404050] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[53904300] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[54504680] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[55902700] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[55904580] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56600880] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56804350] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[56902550] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[57104120] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[58802750] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[59102440] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[62804970] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[63504610] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[63704920] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	[64304730] = { title=ns.chest1, level=10, name="Battered Chest", icon=1, tip=ns.chestContent1 },
	
	[37601630] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[38401310] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[39201190] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[40001600] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[42905510] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[43304830] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[43305220] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[45005140] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[45305430] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[46905360] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[51105750] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[51305490] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[52605230] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2, continent=true },
	[53605400] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[59605400] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[59600280] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[60400350] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[61700520] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },
	[62000420] = { title=ns.chest2, level=25, name="Battered Chest", icon=2, tip=ns.chestContent2 },

	[41607870] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[42008170] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3, continent=true },
	[43108320] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },
	[44308290] = { title=ns.chest3, level=25, name="Solid Chest", icon=3, tip=ns.chestContent3 },

	[62043955] = { npc=214208, name="N'ora Anyheart", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="Don't come to her before you've\ncompleted the previous steps.\n\n"
						.."The Shifting Scale Talisman is a\nvery valuable +5 Spirit Trinket",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },

	[50001660] = { npc=5865, name="Dishu", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[51802800] = { npc=5865, name="Dishu", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },
	[62603440] = { npc=5828, name="Humar the Pridelord", title="Best Hunter Pets", icon=16, class="HUNTER", guide=ns.bestPet },

	[46407390] = { name="Burned-Out Remains", title="Cozy Sleeping Bag", icon=17, guide=ns.cozySleepingBag,
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" },
						tip="Alliance: Step Two\nHorde: Step One", continent=true },

	[42808180] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[43208020] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[43808380] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[46108550] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[47808360] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[48408120] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[48408300] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[48608300] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },
	[50208060] = { name="Fel Crack", title="Fel Portal", icon=18, tip=ns.felPortals },

	[38601540] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[39501380] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals, continent=true },
	[40001840] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[40801440] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[42001420] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[43404420] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[44405000] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[44405460] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[45004580] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[45805120] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[46405260] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[47604940] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[51805340] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[53005080] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[54205260] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[54404850] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[55602560] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[55805100] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[56002480] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[57602350] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[58204980] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[58802560] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[59002920] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[59003200] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[59203650] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[59802750] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[60203600] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[60802900] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
	[61803200] = { name="Fel Sliver", title="Fel Portal", icon=18, tip=ns.felPortals },
}

points[ 1441 ] = { -- Thousand Needles
	[09803420] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[11503680] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[13903890] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[17604170] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[17802120] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[18502100] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[18902320] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[19402170] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[25805545] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[26605400] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[27105520] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[27205245] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[42203160] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[42203745] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[42303370] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[42903930] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[43103680] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4, continent=true },
	[43503320] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[43603770] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },
	[44903230] = { title=ns.chest4, level=30, name="Solid Chest", icon=4, tip=ns.chestContent4 },

	[65308690] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[68458290] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
	[69708570] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5, continent=true },
	[71208510] = { title=ns.chest5, level=35, name="Solid Chest", icon=5, tip=ns.chestContent5 },
}

points[ 1456 ] = { -- Thunder Bluff
}

points[ 1452 ] = { -- Winterspring
	[52405480] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[52805420] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[52805620] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[53205680] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[53605380] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[53605600] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift, continent=true },
	[54205000] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[54605520] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[55604920] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
	[56505060] = { name="Growing Fel Rift", title="Fel Portal", icon=18, tip=ns.felRift },
}

--=======================================================================================================
--
-- MISCELLANY
--
--=======================================================================================================

-- Choice of texture
-- Note that these textures are all repurposed and as such have non-uniform sizing
-- I should also allow for non-uniform origin placement as well as adjust the x,y offsets
ns.textures[1] = "Interface\\PlayerFrame\\MonkLightPower"
ns.textures[2] = "Interface\\PlayerFrame\\MonkDarkPower"
ns.textures[3] = "Interface\\Common\\Indicator-Red"
ns.textures[4] = "Interface\\Common\\Indicator-Yellow"
ns.textures[5] = "Interface\\Common\\Indicator-Green"
ns.textures[6] = "Interface\\Common\\Indicator-Gray"
ns.textures[7] = "Interface\\Common\\Friendship-ManaOrb"	
ns.textures[8] = "Interface\\TargetingFrame\\UI-PhasingIcon"
ns.textures[9] = "Interface\\Store\\Category-icon-pets"
ns.textures[10] = "Interface\\Store\\Category-icon-featured"
ns.textures[11] = "Interface\\HelpFrame\\HelpIcon-CharacterStuck"	
ns.textures[12] = "Interface\\PlayerFrame\\UI-PlayerFrame-DeathKnight-Frost"
ns.textures[13] = "Interface\\TargetingFrame\\PetBadge-Magical"
ns.textures[14] = "Interface\\Vehicles\\UI-Vehicles-Raid-Icon"
ns.textures[15] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Adrenaline"
ns.textures[16] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Arcane"
ns.textures[17] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Demonic"
ns.textures[18] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Duty"
ns.textures[19] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Frozen"
ns.textures[20] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Metamorphosis"

ns.scaling[1] = 0.41
ns.scaling[2] = 0.41
ns.scaling[3] = 0.41
ns.scaling[4] = 0.41
ns.scaling[5] = 0.41
ns.scaling[6] = 0.41
ns.scaling[7] = 0.49
ns.scaling[8] = 0.46
ns.scaling[9] = 0.56
ns.scaling[10] = 0.56
ns.scaling[11] = 0.43
ns.scaling[12] = 0.37
ns.scaling[13] = 0.36
ns.scaling[14] = 0.32
ns.scaling[15] = 0.33
ns.scaling[16] = 0.33
ns.scaling[17] = 0.33
ns.scaling[18] = 0.33
ns.scaling[19] = 0.33
ns.scaling[20] = 0.33
