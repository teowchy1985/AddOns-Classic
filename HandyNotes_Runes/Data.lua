local _, ns = ...
local points = ns.points
local colourPrefix		= ns.colour.prefix
local colourHighlight	= ns.colour.highlight
local colourPlaintext	= ns.colour.plaintext

--=======================================================================================================
--
-- LOCAL TEXT
--
--=======================================================================================================

ns.druid={} ns.hunter={} ns.mage={} ns.paladin={} ns.priest={} ns.rogue={} ns.shaman={}
ns.warlock={} ns.warrior={} ns.ring={}

ns.timbermaw = "Note that going to Winterspring, you'll pass through Timbermaw Hold. This is a "
			.."dilemma: killing the mobs lowers your rep with that faction. Decide first if you "
			.."indeed want to first become Friendly"
ns.timbermawRep = "Note: These are Timbermaw Hold rep mobs!"

-- Druid Phase 1
ns.druid.ferocious = "Obtained from numerous Riverpaw mobs in Westfall, The Den Mother in Darkshore, Grimson the Pale in "
			.."Silverpine Forest and three centaur chests in The Barrens.\n\nAfter obtaining and equipping, deal 20 x bleeding "
			.."damage to humanoids. Click on the Idol again to finally activate"
ns.druid.ursineRage = "Alliance may kill Rageclaw in Teldrassil. Horde may kill The Venture Co Supervisor or "
			.."the Bristleback Interloper in Mulgore.\n\nBoth factions may farm the Flatland Prowler, "
			.."Prairie Wolf Alpha, Taloned Swoop, and the Windfury Matriarch and Sorceress.\n\n"
			.."Look at the Idol's tooltip. Maintain rage!"
ns.druid.idolWild = "Just loot the mobs. Then equip / right click. Do 10 x direct heals on friendly mobs. "
			.."Now click the idol again"
ns.druid.lunarIdolA = "Get the Relics of Kaldorei quest from Mardant Strongoak at level 4+.\n\n"
			.."Kill the Grellkins for a Lunar Idol. Equip.\n\nNow kill 6 x mobs affected by Moonfire. Now click the idol again"
ns.druid.lunarIdolH = "Go to Brambleblade Ravine.\n\nLoot the chest and equip\n\nNow kill 6 x mobs affected by "
			.."Moonfire. Now click the idol again"
ns.druid.naturalPotential = "Collect 3 x Prairie Flowers from Mulgore (H), 3 x Glade Flowers from Teldrassil (A).\n\n"
			.."Combine to make a Prairie/Glade Crown.\n\nGo to (37.60,49.50) (H) or (66.90,57.70) (A).\n\n"
			.."Wait for the Wooden Effigy to spawn. Use the Crown on it. Kill the Spirit. Loot"
ns.druid.lacerate = "Alliance are best to go to Khara Deepwater at the lake's edge in Loch Modan. Buy some "
			.."Rainbow Fin Albacore Chum (5s) then feed it to a Young Threshadon in the lake.\n\n"
			.."Horde should go to The Barrens and look for an Abandoned Snapjaw Nest. Grab the egg and "
			.."then deposit it in an Empty Snapjaw Nest. Wait, then click on the Hatchlings for your lewt!\n\n"
			.."Both factions can head to Darkshore. Farm the Blackwood mobs for Crab Treats or fish them "
			.."up. Then feed to a Young Reef Crawler (crab).\n\nAlternatively head to Westfall and farm the "
			.."Defias mobs for Magic Pumpkin Seeds. Plant a seed. Kill the Aggressive Squashling. Profit!\n\n"
			.."Also the Moonrage Whitescalps and the Darkrunner in Silverpine Forest drop an "
			.."Unbalanced Idol. Read its Tooltip. You need 5 x stacks of the three buffs. Use your "
			.."Moonfire, Healing Touch or Regrowth, and shapeshift, all while killing"
ns.druid.runeOfStars = "Locate Grugimdern, under a little bridge. Then go to the stump. Only at the stump "
			.."should you eat the 'shroom. The rest follows.\n\nAchieveable early with help or spirit runs"
ns.druid.runeOfTheSun = "Horde go to Mulgore and cast Moonfire on three Lunar "
			.."Stones, all nearby. Alliance must go to Teldrassil "
			.."and note that two of the Stones are in a tree branch. Now click on the Lunar Chest. Yes, an easy one!"
ns.druid.swim = "Start at the EASTERN statue/map pin. (You'll understand why if you analyse "
			.."the topography). In aquatic form swim to the western statue, climb up and click "
			.."for your reward. With aquatic form, east to west you'll have plenty of spare time"
ns.druid.wildGrowth = "At about level 21+, go to Loganaar, your Trainer in Moonglade. Start Trial of The Owls. "
			.."Note: You can obtain the three owls before you pickup the quest. 1st Owl: Ashenvale, "
			.."2nd Owl: Duskwood, 3rd Owl: Hillsbrad. Simply hand in for your Rune!"
-- Druid Phase 2
ns.druid.berserk = "Use Challenging Roar (level 28) at the Zai'enki/ Beastly Effigy location. Kill and profit."
ns.druid.dreamstate = "Kill the Kolkar Centaurs (Level 30-31) until they drop a Desiccated Seed Pod.\n\n"
			.."Head south and swim in any pond until it becomes rehydrated -> Satyrweed Bulb.\n\n"
			.."Now head north to the Sargeron ruins and plant the bulb in the Sandy Loam mound. "
			.."Click on it for your phat lewt rune!"
ns.druid.nourish = "Kill a Rotting Ancient, level 40, to obtain a Rotten Seed and start \"The Lost Ancient\".\n\n"
			.."You must now speak to Orokai in Moonglade.\n\nCareful as the followup quest has a 1 hour timer "
			.."and you may not die, hearth, teleport, accept a mage portal, etc at any time.\n\n((Boats/Zeps/flight "
			.."paths are okay but restricted on PvP servers))\n\nYou must water an Ancient Sapling in the Alterac "
			.."Mountains, Arathi Highlands, Swamp of Sorrows, and Stranglethorn Vale, in any order. Optimally "
			.."Stranglethorn is best for last as you must then return to Orokai"
-- Druid Phase 3
ns.druid.efflorescence = "Pick up \"Wisdom of the Guardians\" (L45) from Tyrisius "
			.."in Feralas. You must now visit three guardian spirits.\n\n"
			.."Azshara: Kill the Child of Apa'ro, who roams. Immune to "
			.."spells so physical beat down in Bear/Cat form. Offer the "
			.."heart drop at the Shrine of the Beast. Summon and kill Whisperwing.\n\n"
			.."Feralas: Use Remove Curse and Cure Poison on yourself. "
			.."Fight the ogres and stinglashers for this. Once done you'll "
			.."get a Mark of the Warden buff. At the shrine kill Blightbark.\n\n"
			.."The Hinterlands: At the Moonkin Avatar cast Tranquility "
			.."and then Hurricane on yourself. Sagefeather will spawn. Kill."
ns.druid.elunesFires = "Go to the broken temple at the top of a hill at the Haldarr Encampment in western Azshara.\n\n"
			.."Loot the Traveller's Knapsack: Keldara's Log and a Mortar & Pestle.\n\n"
			.."Get 3 x Satyrweed Samples from the temple grounds. Use the Mortar & Pestle -> Tincture.\n\n"
			.."Cast Hibernate on a corrupted (green) Hippogryph, found to the north-west. Now use the Tincture.\n\n"
			.."Check your bags for lewt"
ns.druid.improvedBarkskin = "With Barksin (L44) learnt, go to the south-west corner of Tanaris and farm "
			.."the Thistleshrub Dew Collectors (L47-48) for an Idol of Raging Shambler.\n\n"
			.."Equip the Idol. Defeat 5 enemies while buffed with Barkskin. This puts five "
			.."charges onto the Idol. Right click it"
-- Druid Phase 3
ns.druid.impSwipe = "From Tanaris, enter Un'Goro, kill the Ravasaur mobs until the Idol of the Huntress drops. Equip it.\n\n"
			.."While in Cat Form, Hibernate five mobs. Kill them.\n\nRight click the Idol again ftw!"
ns.druid.treeOfLife = "Encounter the Vengeful Wisp, north-west of Irontree Woods. Continue north-west to "
			.."Jadefire Run.\n\nGrind the Jadefire satyrs until you receive a Shimmering Light buff.\n\n"
			.."Speak to your Wisp friend and it'll drop a gift. That's your phat lewt!"

-- Hunter Phase 1
ns.hunter.beastMastery = "Farm Goretusk Haunch from the numerous Goretusks in Westfall then use it to spawn Silverspur. Kill "
			.."and loot FTW, Westfall; or Darkshore Furbolgs for Crab Treats. Then feed it to a Young Reef Crawler "
			.."on the coast (A);\n\n"
			.."Horde must kill Ferocious Grizzled Bears until a Grizzled Protector spawns, Silverpine. Kill, loot; "
			.."Trap a patrolling cheetah in The Barrens, north of Camp Taurajo. You may now kill it. Phat lewt! (H)"
ns.hunter.carve = "Obtain Rabbit Musk from Gol'Bar Quarry Rockjaw Troggs in Dun Morogh then use the Musk on a "
			.."Rabbit critter. Now tame it. Speak to Toby, Amberstill Ranch, DunMorogh for your reward;\n\n"
			.."In Teldrassil it's Gnarlpine mobs for Deer Musk. Use on Deer. Tame. Speak to Relaeron in "
			.."Darnassus (A); Durotar for Adder Pheromone from Razormane mobs. Razzil in Razor Hill; "
			.."Mulgore is Prairie Dog Musk from Palemane mobs. Takoda Sunmane in Bloodhoof Village (H).\n\n"
			.."Note that when you tame your critter you do NOT need to abandon your current companion"
ns.hunter.cobraStrikes = "Buy Freshwater Snapper Bait from Zixil, who  wanders between Southshore and Tarren Mill.\n\n"
			.."Now at the small boat on the lake south of Tarren Mill... Use the boat. Koartul spawns!"
ns.hunter.explosiveShot = "Fyodi, Edan the Howler, Mangeclaw, Old Icebeard, "
			.."Timber, Vagash, Dun Morogh; Rageclaw at the bottom "
			.."of Ban'ethil Barrow, Teldrassil (A); heavily camped Sarkoth, Valley of the Trials; Arra'chea, Ghost Howl, "
			.."Mazzranache, The Rake, Mulgore (H)"
ns.hunter.flankingStrike = "Jorul, cave, eastern side of Iceflow Lake, Dun Morogh; "
			.."Mowgh, cave, eastern side of the Oracle Glade river (A); "
			.."Raluk, northern isle of the Echo Isles, Durotar; Mokwa, west north-west of Bloodhoof Village, Mulgore (H)\n\n"
			.."To spawn the rare you must farm its food. See Tooltips\n\nThese rares are cross faction. Rune is received on a "
			.."kill or tame (level 10). The bear (A) and cat (H) skills and stats are just average."
ns.hunter.heartLion = "Carrodin, rear of the Thelgen Rock Cave, Wetlands (A/H)"
ns.hunter.killCommand = "The process is centred around Jixo Madrocket in Stonetalon Mountains, on the path towards "
			.."Windshear Crag.\n\n"
			.."The first quest needs you to kill Mutanus the Devourer, who's at the end of the Wailing "
			.."Caverns. Mutanous drops the Hypnotic Crystal. The WC dungeon is in The Barrens.\n\n"
			.."You also need a Gnarled Wand of Wild Magic. Buy a Greater Wagic Wand off the AH / Enchanter "
			.."friend. Combine with a Wild Magic Essence which drops off Ashenvale Furbolg mobs.\n\n"
			.."The second quest requires you to witness Jixo tame a Wyvern. Easy peazy lemon squeezy!\n\n"
			.."The bonus for Hunters is we get a Wyvern Taming Wand which allows us to tame Young Pridewings "
			.."in Stonetalon Maountains. I've marked them too!"
ns.hunter.masterMark = "Use Hunter's Mark on the Rustling Bush. A Poacher will spawn. Unlife it. Lewt it"
ns.hunter.sniper = "Paxnozz, west of the Ruins of Mathystra, Darkshore; Defias Scout, Sentinel Hill, Westfall; Kackle, The "
			.."Loch, Loch Modan (A).\n\nBruuz off the coast of Ratchet, The Barrens (H)"
-- Hunter Phase 2
ns.hunter.dualWield = "At this location you'll receive a \"Danger!\" buff.\n\n"
			.."Wander around this area, using your \"Flare\" (L32) "
			.."until you find the Bloodscalp Guerrilla (L34). Use also Track Hidden.\n\nKill and loot"
ns.hunter.expose = "Farm the ogres and troggs until a Primitive Drawing drops. Then travel to Hemet Nesingwary's camp in "
			.."northern Stranglethorn. He'll send you right back to the Badlands and give you a cage.\n\n"
			.."Prior to the next encounter, catch any critter.\n\nBack in the Badlands, locate the Large Next and "
			.."summon Gharrick, a L40 bird. Tame or defeat to obtain a Crimson Trophy Quill. Return to Hemet"
-- Hunter Phase 3
ns.hunter.calefactus = "Track Beasts is your friend. Tameable (L50). A green Molten Core style Core Hound! "
			.."For the quest, must kill :("
ns.hunter.catlike = "Locate the infant in a rear upper level corner of the Yeti cave. Feed it Tel'Abim Banana or Soft "
			.."Banana Bread.\n\nYou have ten minutes to escort the infant to its "
			.."nearby mother. The infant is agressive so expect fighting along the way.\n\n"
			.."The mother is outside on a small mound"
ns.hunter.focusFire = "Near the map location is a bridge and near to that is a tree branch with a nest. Loot the egg.\n\n"
			.."Kill the Enraged Stormcrow that spawns. Loot -> profit"
ns.hunter.rapidKilling = "Enter the Firewatch Ridge cave, north-west corner of the Searing Gorge. Upper middle section. "
			.."Interact with a Weathered Etching on a pillar.\n\nNow head to the Blasted Lands to meet Lynnore. "
			.."She's at the far north Swamp of Sorrows path end, on the Dreadmaul Hold side.\n\n"
			.."For her first task, avoid the Shadowsworn ritualists to her south-west as they are tougher.\n\n"
			.."Calefactus is a unique Core Hound model you'll also want to tame while you are doing Brought to Heel.\n\n"
			.."Note that you receive a great trinket that specifically assists with taming Molten Core Core Hounds. BoPU"
-- Hunter Phase 4
ns.hunter.hitAndRun = "The Escaped Core Hounds (L60) drop the Rune of the Guerrilla"
ns.hunter.resourceful = "The entirety of this rune occurs in the Eastern Plaguelands.\n\n"
			.."Kill slimes and Plagued Swine for Bubbling Green Ichor and Tainted Boar Meat respectively.\n\n"
			.."Combine one of each to produce a Rancid Hunk of Flesh and feed that to one of the numerous "
			.."Carrion Grubs.\n\nIt will vomit up a Regurgitated Skeleton and within that skeleton is your rune!"
ns.hunter.volley = "Grind any mobs in Silithus for a Busted Gizmo.\n\nNow visit Edwi Copperbolt in the far south of "
			.."Silithus nad he'll give you a Desert Sonar.\n\nWith this you are looking for Sandworms (L60e), "
			.."pinned on your map. Kill for phat lewt."

-- Mage
ns.mage.books ="There are many books to be discovered across Azeroth. At 10, 20, 25 and then 35 books collected you'll "
			.."receive a trivial completion quest to directly award you a rune.\n\n"
			.."Bring several or one by one of the books to Garion Wendell in the SW Mage Tower (A) or Owen Thadd in the "
			.."Undercity Mage Quarter (H). He'll record your progress (and this AddOn too!)"
ns.mage.bookRunes = { "Icy Veins", "Spell Power", "Deep Freeze", "Arcane Barrage", }
ns.mage.bookQuestIDs = { 78150, 79536, 82208, 84394, }
ns.mage.bookQuestNames = { "Friend of the Library", "Greater Friend of the Library", "Greater Friend of the Library",
							"Greater Friend of the Library", }
ns.mage.bookStart = " books across Azeroth, too numerous to list here, but... "
			.."see my detailed guide at: Garion Wendell in the Stormwind Mage Tower "
			.."portal room (A) or Owen Thadd in the Mages Quarter of Undercity (H)"
ns.mage.booksQuestIDsA = { 79953, 81955, 84398, 79949, 78145, 79091, 79092, 79535, 79097, 78142, 81956, 78147, 79948,
						79950, 81952, 78149, 79947, 78146, 81949, 84396, 79951, 78124, 84402, 79093, 78148, 79952,
						81947, 84401, 78143, 81953, 78127, 84400, 81951, 84395, 81954, }
ns.mage.booksQuestNamesA = {
			"A Ludites Guide to Caring for Your Pet" ..colourPlaintext .."    Farm Lost Ones in the Swamp of Sorrows",
			"A Mind of Metal" ..colourPlaintext .."    On a table in a tent, Searing Gorge",
			"A Study of the Light" ..colourPlaintext .."    Back left corner of Light's Hope Chapel",
			"A Web of Lies: Debunking Myths and Legends" ..colourPlaintext .."    Alongside a tent. Winterbark Village, Arathi",
			"Arcanic Systems Manual" ..colourPlaintext .."    The Sludge Fen, The Barrens",
			"Archmage Antonidas: The Unabridged Autobiography" ..colourPlaintext .."    Hall of Explorers, Ironforge",
			"Archmage Theocritus's Research Journal"..colourPlaintext .."    Tower of Azora, Elwynn Forest",
			"Basilisks: Should Petrification be Feared?" ..colourPlaintext .."    Entrance to Crystalvein Mine, Stranglethorn",
			"Baxtan: On Destructive Magics" ..colourPlaintext .."    Next to Gazlove, Ratchet, The Barrens",
			"Bewitchments and Glamours" ..colourPlaintext .."    Moonbrook, Westfall",
			"Conjurer's Codex" ..colourPlaintext .."    Go to the Blasted Lands",
			"Crimes Against Anatomy" ..colourPlaintext .."    Raven Hill Crypt, Duskwood",
			"Defensive Magics 101" ..colourPlaintext .."    Ogre Tower at Gallows' Corner in Alterac Mountains",
			"Demons and You" ..colourPlaintext .."    Inside the Thunder Axe Fortress",
			"Everyday Etiquette" ..colourPlaintext .."    Heldar Encampment, Azshara",
			"Fury of the Land" ..colourPlaintext .."    Near Grimtotems in Stonetalon Mountains",
			"Geomancy: The Stone-Cold Truth" ..colourPlaintext .."    Inside a hut, Darkcloud Pinnacle, Thousand Needles",
			"Goaz Scrolls" ..colourPlaintext .."    Whelgar's Excavation Site, Wetlands",
			"Legends of the Tidesages" ..colourPlaintext .."    Inside a building in the Pirate Cove, Tanaris",
			"Magma or Larva?" ..colourPlaintext .."    On a ledge just inside the open cavern past Lothos Riftwalker",
			"Mummies: A Guide to the Unsavory Undead" ..colourPlaintext .."    Crypt within a mesa. Badlands",
			"Nar'thalas Almanac" ..colourPlaintext .."    Darkshore Ruins",
			"Necromancy 101" ..colourPlaintext .."    On a table in a nook, upper level Scholomance. NOT inthe instance",
			"Rumi of Gnomeregan: The Collected Works" ..colourPlaintext .."    Thelsamar or Westfall Inn",
			"Runes of the Sorcerer-Kings" ..colourPlaintext .."    The Ogre Cave in Loch Modan",
			"RwlRwlRwlRwl!" ..colourPlaintext .."    Witch Hill murloc Camp, Swamp of Sorrows",
			"Sanguine Sorcery" ..colourPlaintext .."    On top of the Sunken Temple, Swamp of Sorrows",
			"Scourge: Undead Menace or Misunderstood?" ..colourPlaintext .."    Just before the Stratholme bridge",
			"Secrets of the Dreamers" ..colourPlaintext .."    Near the Wailing Caverns portal",
			"Stonewrought Design" ..colourPlaintext .."    On Franclorn Forgewright's altar, Black Mountain",
			"The Dalaran Digest" ..colourPlaintext .."    Amber Mill, Silverpine Forest",
			"The Knight and the Lady" ..colourPlaintext .."    In the small house",
			"The Liminal and the Arcane" ..colourPlaintext .."    @ Oneiros, Feralas but ONLY with a Nightmare Incursion",
			"Undead Potatoes" ..colourPlaintext .."    Upstairs, in a farmhouse",
			"Venomous Journeys" ..colourPlaintext .."    Behind a brown wall, The Hinterlands", }
ns.mage.booksQuestIDsH = { 79953, 81955, 84398, 79949, 78145, 79096, 79535, 79097, 78142, 81956, 78147, 79948, 79950,
						81952, 78149, 79947, 78146, 81949, 84396, 79951, 78124, 84402, 78148, 79952, 81947, 84401,
						78143, 81953, 79095, 78127, 84400, 79094, 81951, 84395, 81954, }
ns.mage.booksQuestNamesH = {
			"A Ludites Guide to Caring for Your Pet" ..colourPlaintext .."    Farm Lost Ones in the Swamp of Sorrows",
			"A Mind of Metal" ..colourPlaintext .."    On a table in a tent, Searing Gorge",
			"A Study of the Light" ..colourPlaintext .."    Back left corner of Light's Hope Chapel",
			"A Web of Lies: Debunking Myths and Legends" ..colourPlaintext .."    Alongside a tent. Winterbark Village, Arathi",
			"Arcanic Systems Manual" ..colourPlaintext .."    The Sludge Fen, The Barrens",
			"Ataeric: On Arcane Curiosities"..colourPlaintext .."    Sepulcher",
			"Basilisks: Should Petrification be Feared?" ..colourPlaintext .."    Entrance to Crystalvein Mine, Stranglethorn",
			"Baxtan: On Destructive Magics" ..colourPlaintext .."    Next to Gazlove, Ratchet, The Barrens",
			"Bewitchments and Glamours" ..colourPlaintext .."    Moonbrook, Westfall",
			"Conjurer's Codex" ..colourPlaintext .."    Go to the Blasted Lands",
			"Crimes Against Anatomy" ..colourPlaintext .."    Raven Hill Crypt, Duskwood",
			"Defensive Magics 101" ..colourPlaintext .."    Ogre Tower at Gallows' Corner in Alterac Mountains",
			"Demons and You" ..colourPlaintext .."    Inside the Thunder Axe Fortress",
			"Everyday Etiquette" ..colourPlaintext .."    Heldar Encampment, Azshara",
			"Fury of the Land" ..colourPlaintext .."    Near Grimtotems in Stonetalon Mountains",
			"Geomancy: The Stone-Cold Truth" ..colourPlaintext .."    Inside a hut, Darkcloud Pinnacle, Thousand Needles",
			"Goaz Scrolls" ..colourPlaintext .."    Whelgar's Excavation Site, Wetlands",
			"Legends of the Tidesages" ..colourPlaintext .."    Inside a building in the Pirate Cove, Tanaris",
			"Magma or Larva?" ..colourPlaintext .."    On a ledge just inside the open cavern past Lothos Riftwalker",
			"Mummies: A Guide to the Unsavory Undead" ..colourPlaintext .."    Crypt within a mesa. Badlands",
			"Nar'thalas Almanac" ..colourPlaintext .."    Darkshore Ruins",
			"Necromancy 101" ..colourPlaintext .."    On a table in a nook, upper level Scholomance. NOT inthe instance",
			"Runes of the Sorcerer-Kings" ..colourPlaintext .."    The Ogre Cave in Loch Modan",
			"RwlRwlRwlRwl!" ..colourPlaintext .."    Witch Hill murloc Camp, Swamp of Sorrows",
			"Sanguine Sorcery" ..colourPlaintext .."    On top of the Sunken Temple, Swamp of Sorrows",
			"Scourge: Undead Menace or Misunderstood?" ..colourPlaintext .."    Just before the Stratholme bridge",
			"Secrets of the Dreamers" ..colourPlaintext .."    Near the Wailing Caverns portal",
			"Stonewrought Design" ..colourPlaintext .."    On Franclorn Forgewright's altar, Black Mountain",
			"The Apothecary's Metaphysical Primer" ..colourPlaintext .."    Brill alchemy Shop",
			"The Dalaran Digest" ..colourPlaintext .."    Amber Mill, Silverpine Forest",
			"The Knight and the Lady" ..colourPlaintext .."    In the small house",
			"The Lessons of Ta'zo" ..colourPlaintext .."    Valley of Sprits, Orgrimmar",
			"The Liminal and the Arcane" ..colourPlaintext .."    @ Oneiros, Feralas but ONLY with a Nightmare Incursion",
			"Undead Potatoes" ..colourPlaintext .."    Upstairs, in a farmhouse",
			"Venomous Journeys" ..colourPlaintext .."    Behind a brown wall, The Hinterlands", }
-- Mage Phase 1
ns.mage.enlightenment = "Alliance should head as far east as Ridgepoint Tower in Elwynn Forest, although anywhere there "
			.."are critters is possible. If the critter has a Wild Polymorph debuff ( and it will look \"out "
			.."of place\" too) then Polymorph it. As the person walks away you will see a sparkling object.\n\n"
			.."Horde need to look for Odd Melons around any farm in Tirisfal Glades, and Polymorph it too.\n\n"
			.."The object's Tooltip will say how many you need. Combine them together (Use one of them). Voilà!"
ns.mage.arcaneBlast = "A Naga Manuscript will drop from Wrathtail Sorceress and Sea Witch.\n\n"
			.."Cast Arcane explosion at three pink/purple Shards as marked on  your map.\n\nChicken dinner, you're a winner!"
ns.mage.fingers = "Alliance need a drop from a rogue's gallery of popular old favourites. Timber, Mangeclaw, Bjarm, "
			.."Edan the Howler, Old Icebeard, Hammerspine, Vagash and introducing Fyodi. All Dun Morogh. And Hogger!\n\n"
			.."Horde get Gazz'uz, the the cave to the left as you exit Orgrimmar. Zalazane on the Echo Isles is "
			.."convenient for Trolls. Introducing Gillgar just north of Deathknell.\n\nJust loot and comprehend! <3"
ns.mage.livingBomb = "A Chewed Spell Note will drop from mobs in the  Stonesplitter caves to the far south of Thelsamar "
			.."in Loch Modan. The same Seers populate the northern most lake of Loch Modan.\n\n"
			.."Horde have the option of completing a few quests in Silverpine Forest for a guaranteed reward. "
			.."The problem is that you need a very low drop rate \"A Talking Head\" to drop while you are "
			.."questing on Fenris Island, in order to start the quest chain.\n\nWorth it? 3% drop. I'd rather mow the lawn."
ns.mage.livingFlame = "Frostmane Shadowcasters (A) and Frostmane Seers (A/H) in Dun Morogh will drop the "
			.."Spell Notes. They are on the western side of the map and have been pinned.\n\n"
			.."The Kobold Geomancers (A) in and around the Jasperlode Mine in Elwynn Forest are also possible.\n\n"
			.."In Tirisfal Glades the Scarlet Warriors, Missionaries and Zealots (all A/H) have been pinned.\n\n"
			.."Durotar is all Horde with Burning Blade mobs even located just out the front of Orgrimmar.\n\n"
			.."It's the usual, loot and comprehend!"
ns.mage.regeneration = "Horde can farm Dalaran Apprentice, southern Silverpine Forest.\n\n"
			.."In theory, both A/H can: Farm Kolkar centaur mobs in The Barrens for a key to unlock one "
			.."of two chests in the area; inspect a Pile of Stolen Books on the north island of Loch "
			.."Modan; kill Defias Renegade Mages in the south of Westfall. Loot and Comprehend!"
-- Mage Phase 2
ns.mage.chronostatic = "3 or 4 mages must cast frost spells on three different "
			.."mobs in Thousand Needles in order to cause them to "
			.."receive a \"Cooling Down\" debuff. Kill and loot.\n\nNote that the Cougar is caged and requires a key that "
			.."drops off Galak Mauler centaur mobs.\n\nAll three mobs drop Partial Spell Notes which must be "
			.."combined"
ns.mage.hotStreak = "At the Strahnbrad blacksmith forge, ignite the two bellows by using a fire spell.\n\n"
			.."An Ancient Fire Elemental will spawn. Kill and loot"
ns.mage.fireAndFrost = "Kill Skullsplitter Mystics in Stranglethorn Vale"
-- Mage Phase 3
ns.mage.booksBM = "Proceed into Blackrock Mountain as you would to run through Blackrock Depths or Molten Core.\n\n"
			.."The book is in Franclorn Forgewright's altar room.\n\nYou don't need to be dead to see the book! ;)"
ns.mage.temporal = "Collect 1 x Pristine Owlbeast Quill from Owlbeasts in The Hinterlands, 5 x Zukk'ash "
			.."Resin from Silithids in south-east Feralas, and 8 x Farraki Papyrus from Zul'Farrak zombies.\n\n"
			.."Extra reward is a Personal Spellbook. Finally, you can conjure Comprehension Charms!!!"
-- Mage Phase 4
ns.mage.frozenOrb = "Farm the Deadwood mobs until a Mysterious Darnassian Scroll drops.\n\n"
			.."As usual, use your Comprehension Charm.\n\nSouth-east now to Calyx Greenglow and use "
			.."the scroll on him! Accept the quest.\n\nDown south now, grind those Irontree mobs "
			.."until an Unusual Flask drops.\n\nHead over to Winterspring and seek out "
			.."Calyx again, conveniently near the exit of the Timbermaw Hold. Kill "
			.."The shade of Calyx. Loot. Profit!\n\n" ..ns.timbermaw
ns.mage.magmaLarva = "Lothos Riftwaker is at the entrance to the Blackrock "
			.."Depths cavern, deep down and almost at the larva level "
			.."and in the very centre of Blackrock Mountain cavern.\n\n"
			.."Proceed past him to Franclorn Forgewright's altar room.\n\n"
			.."Go on and you are now in the Blackrock Depths cavern. Just inside this cavern you'll see the book on a ledge."
ns.mage.overheat = "At EACH of the four locations you'll encounter a frozen Novie Frost Mage.\n\n"
			.."Unfreeze him by using fire spells.\n\nStill alive, use Remove Lesser Curse.\n\n"
			.."EACH mage will drop a Torn Spell Notes.\n\nCombine all four for your Phat lewt!\n\n"
			.."Okay... how to NOT kill... Alternate rank 1 Fireball and rank 1 scorch. "
			.."It's slow but it does work. Respawn is under a minute btw"

-- Paladin Phase 1
ns.paladin.banishment = "Target the Defias Enchanters, Defias Night Blades "
			.."and Defias Night Runners along the southern edge of Duskwood. Easy grind.\n\n"
			.."Equip the Libram when it drops.\n\nCast Turn Undead on five enemies and kill them with Exorcism.\n\n"
			.."Click on the Libram again"
ns.paladin.blessings = "Go to the Thelsamar Tavern in Loch Modan. It's sitting on a table there. Or else go "
			.."to Westfall and kill Undying Laborers in the Jangolode Mine or the Gold Coast Quarry\n\n"
			.."Follow the Libram's Tooltip instructions. Done!"
ns.paladin.divineStorm = "You'll find an Orb at the top of the Athalaxx Tower in northern Darkshore. Starts a quest.\n\n"
			.."Seek out Delgren the Purifier at Maestra's Post in Ashenvale.\n\n"
			.."As instructed, go to Katherine the Pure in the Stormwind Cathedral who'll send you to speak to "
			.."Ursula Deline at the back of the Mages Quarter.\n\n"
			.."Ursula sends you to Redridge to collect her Salt. It has a low drop rate QQ. Return to her.\n\n"
			.."Ursula now needs Motes from Ashenvale.\n\n"
			.."After collecting the Motes take them to the Altar of Mannoroth. It's big and purple. Click on "
			.."the ground to turn the Motes in. A Shattered Orb appears. Take it to Delgren. Finally!"
ns.paladin.judgement = "Dwarves visit Bromos Grummner at the Anvilmar entrance and humans speak to Brother Sammuel "
			.."in the Hall of Arms in the Northsire Abbey.\n\nYou're now tasked with dispatching Frostmane "
			.."Troll Whelps in Coldridge Valley or the Defias Thugs in the vineyard to the east of the Abbey.\n\n"
			.."When the Libram drops, read the instructions. Select a Seal spell, cast Judgement on 10 x foes.\n\n"
			.."Click on your Libram for your reward"
ns.paladin.justice = "Farm the Libram in a Stonesplitter Cave in Loch Modan or from the Defias Drones in "
			.."the far south-east corner of Westfall.\n\nNow follow the Libram's Tooltip: Slam "
			.."10 x foes that have been stunned with your Hammer of Justice.\n\nClick on the Libram again FTW!"
ns.paladin.runeOfAegis = "Go to the entrance to Gnomeregan, far west from Ironforge, and speak to a Wounded Adventurer.\n\n"
			.."Or find the Wounded Adventurer at the far end of the Jasperlode Mines in Elwynn Forest.\n\n"
			.."Either way, cast Purify (level 8+) and done!"
ns.paladin.martyrdom = "Speak to Brother Romulus in Stormwind.\n\nFollow his instructions, taking the "
			.."western starircase to the crypts.\n\nYou may need to wait for the note to spawn. "
			.."It's next to the candle at the bottom.\n\nAda is at the river junction of Westfall, "
			.."Duskwood, Elwynn Forest.\n\nShe has your rune. You know the score"
-- Paladin Phase 2
ns.paladin.guardedLight = "You must have learnt Divine Intervention (L30).\n\n"
			.."Upon clicking the skeleton and looting the Dormant "
			.."Holy Rune, cast Divine Intervention upon yourself and die. You may do this anywhere convenient.\n\n"
			.."Another player must resurrect you, not necessarily a Paladin. You will auto acquire the rune.\n\n"
			.."Note that Soulstones do not work for this"
ns.paladin.malleable = "The Dark Iron Bombadiers and Suppliers have the best (albeit bad) drop rates for all three Tarnished "
			.."Prayer Bead I/II/III.\n\nPurify I with Blessing of Might cast while in combat. "
			.."Purify II with Divine Shield at <10% health. Purify III with Seal of Justice and Judgment while fleeing.\n\n"
			.."Now combine -> Rosary of the Light. Take the Rosary to Brother Atticus in Stromgarde Keep"
ns.paladin.sacredShield = "On a bench that's inside Brother Anton's building.\n\n"
			.."Equip and then use Blessing of Freedom (L18) on "
			.."other players/NPCs five times. MUST be movement impairing roots. Not slows, for example.\n\n"
			.."Nets are great - Murloc Netters in Westfall or the Dragonmaw area of Wetlands, Magram Wranglers near "
			.."Maraudon, Greymist netters in Darkshore, etc.\n\nCan be your same friend over and over again!"
ns.paladin.sheathLight = "Must have obtained the Divine Storm rune. Later you'll need a Cathedral Wing key to "
			.."Scarlet Monastery.\n\n"
			.."At Mannoroc Cove loot an ornate warhammer which starts the quest \"The Broken Hammer\".\n\n"
			.."Now farm the nearby Burning Blade Summoners (L38-39) for a Torn Letter. Go to Katherine "
			.."the Pure (first room on the left) in the SW Cathedral. Listen to her for \"A Lost Brother\".\n\n"
			.."Set your hearth to Stormwind then go to Menethil Harbor wharf, Wetlands and talk to Harold Riggs.\n\n"
			.."Take an extremely long swim south to Newman's Landing. You'll see a building and a wharf. "
			.."This is the far south-west corner of Dun Morogh.\n\n"
			.."You'll be ambushed. Loot the Orders and pickup the quest and hearth to SW. Speak to Katherine.\n\n"
			.."Now defeat High Inquisitor Whtemane in the Cathedral Wing of Scarlet Monastery. Locate "
			.."Aeonas before you leave! Now hearth again and Katherine again and you're pretty much done."
-- Paladin Phase 3
ns.paladin.fanaticism = "Pick up the quest from Aeonis the Vindicated. He's in the Stormwind Cathedral. Proceed to "
			.."Theramore and give Elrick a whooping.\n\nSpeak to the Stern-Faced Bar Patron.\n\n"
			.."Back at Katherine the Pure in the Cathedral, and she'll reward you grandly"
ns.paladin.hammerRighteous = "In Felwood you climb up the rope to reach Aeonis. "
			.."Next speak with Gregory and accept the quest.\n\n"
			.."Go north and farm the Shatter Scale Vale for 3 x Fiery Infernal Core. Next meet the Tauren Brave "
			.."Stonetorch, to the north of Tarren Mill in the Hillsbrad Foothills. You'll obtain the Symbol of Faith.\n\n"
			.."The Shimmering Grave Dust is from a Grave Mound, obtained after killing Princess Theradras in Maraudon.\n\n"
			.."The Tripple-Brewed Molten Lager you purchase from Plugger Spazzring at the Grim Guzzler tavern, well "
			.."into Blackrock Depths. That's one mighty series of corpse runs for solo players.\n\n"
			.."Return to Gregory for the hand in. Accept your Rune!"
ns.paladin.lightsGrace = "You must travel to an inaccessible platform in Feralas. You may use a nearby teleporter, "
			.."as marked or a different teleporter in Booty Bay. The BB teleporter requires unlocking.\n\n"
			.."The teleporter puts you near Wirdal Wondergear. Look across at the pin marked \"Frix Xizzix\". "
			.."Go to him. You must do this via a knockback from a Tower Defense Automation (L57e) in the, "
			.."same area as Wirdal. Set your Gadgetzan rep to \"At War\". Position yourself with the "
			.."shortest distance to Frix and ensure you are optimally facing away from your flight path.\n\n"
			.."Begin attacking and pray. Seriously. It's a gamble. Consider removing gear to save repair "
			.."costs as you'll likely need a few attempts. There's a nasty silence debuff, thus no bubbling.\n\n"
			.."Now, speak to Frix and he'll send you to the Bay to speak to his brother. The rune is yours!"
ns.paladin.wrath = "North of Quel'Danil Lodge in The Hinterlands is where Paladins will use their Sense Undead to "
			.."locate a Vengeful Spirit (L45). Kill it.\n\nSpeak to Magister Falath in the Mystic Ward of Ironforge. Enjoy!"
-- Paladin Phase 4/5
ns.paladin.avengingWrath = "You receive this spell book at the same time as you complete Shock and Awe!"
ns.paladin.righteousness = "Kill a Slack-Jawed Ghoul, mostly south of the western end of the main east -west path.\n\n"
			.."You are now accompanied by Orthas. You also are given the means to summon Orthas at will.\n\n"
			.."Orthas's Hammer is on the upper level of the house at Corrin's Crossing.\n\n"
			.."(Each step of the way you should summon Orthas.\n\nAs per the map look for abominations. You "
			.."want a Partially-Digested Plate Armor to drop.\n\nNext kill Maleki the Pallid in Stratholme.\n\n"
			.."You'll travel next to the Undercroft to round out this quest chain\n\n"
ns.paladin.shockAwe = "Follows straight after the Vengeance rune.\n\nA tip to level your Squire is to spam Flash of Light!"
ns.paladin.vengeance = "Note: Two runes plus one spell book happen in a linear manner. Vengeance -> Shock and Awe -> "
			.."Avenging Wrath.\n\nThe quests are very straight forward and the pin's in this \"hub\" have been numbered"

-- Priest Phase 1
ns.priest.circle = "Obtain Dark Insight from the Defias mobs then use it at the secluded grave"
ns.priest.citadel = "Frostmane mobs, Shimmer Ridge, Dun Morogh; Defias Rogue Wizard, Stonecairn Lake, Elwynn "
			.."Forest, Sprites, Fel Rock Cave, Teldrassil (A); Various Trolls, Gnolls, Harpies in Durotar; "
			.."Scarlet mobs, Solliden Farmstead, Tirisfal Glades (H)"
ns.priest.penanceMed = "\n\nRemember! Always have a Meditation buff active when trying to learn runes. Initially, "
			.."you MUST stick to your racial locations.\n\nHumans can use any sanctified location "
			.."and Dwarves any Altar of the Light. Night Elves may use any Moonwell! Horde side, "
			.."Undead need go to any graveyard! Trolls may use a Loa Altar, e.g. The Crossroads!\n\n"
			.."At Level 17 you must complete a quest for obtaining a SECOND Meditation buff. This "
			.."is necessary for learning harder runes.\n\nDetails marked on the map later at L16.\n\n"
			.."Note: a second buff is possible via another Priest:     Player 1: /kneel; "
			.."    Player 2: /pray. Now swap roles. Voilà!\n\n(/pray will pass on ALL your Meditations!)"
ns.priest.penanceDM = "\n\nBranstock Khalder tasks you with looting a Rockjaw Footlocker. You'll obtain an inactive "
			.."rune. Return to him.\n\nNear to him is an Altar of Light. /kneel. Once buffed, click on your rune FTW!"
			..ns.priest.penanceMed
ns.priest.penanceDur = "Speak to Ken'jai and receive your inactive rune. Go to the Altar of Loa, which is "
			.."a little to the north of Sen'jai Village and kneel before it. Once buffed, click on your rune. Voilà!"
			..ns.priest.penanceMed
ns.priest.penanceEF = "\n\nSpecifically, human priests will visit Priestess Anetta in the Northshire Abbey. "
			.."You then go to the Echo Ridge Mine and kill Kobold Laborers until a Memory of "
			.."a Troubled Acolyte drops.\n\nReturn to the Abbey. \kneel. Once you "
			.."receive a buff, click on the looted Memory to learn the rune!" ..ns.priest.penanceMed
ns.priest.penanceTel = "\n\nShanda is located in the tree Aldrassil. Speak to her and then go to the Moonwell "
			.."north of Aldrassil and east of the cave. /kneel. Once buffed, click on your rune!" ..ns.priest.penanceMed
ns.priest.penanceTG = "\n\nAfter speaking to Dark Cleric Duesten you'll need to head to the graveyard just nearby. "
			.."/kneel in the graveyard and once buffed you need merely click on your rune!" ..ns.priest.penanceMed
ns.priest.sharedPain = "Captain Beld & Hammerspine, Helm's Bed Lake, far east Dun Morogh, Gibblewilt, far west Dun "
			.."Morogh; Kobold mobs, Mother Fang, Ruklar the Trapper, Jasperlode Mine area, Elwynn Forest; "
			.."Lord Melenas, Fel Rock Cave, Teldrassil (A).\n\nMakasgar, Zalazane, Kolkanis, Scornn, Gazz'uz "
			.."- all in Durotar; Tirisfal Farmer mobs, Solliden Farmstead area, Tirisfal Glades (H) "
ns.priest.strength = "Obtain Primal Insight from the Furbolg mobs then climb a tree as marked on the map"
ns.priest.twisted = "See the Quick Start guide for locations.\n\n"
ns.priest.twistedBarr = "Farm the Razormane mobs for a Helping Hand. It's Tooltip is the hint! With a RANK ONE "
			.."Resurrection, revive a fallen adventurer. You may also revive his/her pet too!"
ns.priest.twistedDark = "Kill the Stormscale Naga until a Shatterspear Offering drops. Go to the nearby water, jump "
			.."in and click on the Shatterspear Idol. Voilà!"
ns.priest.twistedLM = "Farm the Tunnel Rats in the Silverstream Mine for an Offering Coin. Go to the exit "
			.."but just before look right for an alcove. Toss the coin into the well and you're... "
			.."well done! Now delete this AddOn for such a terrible pun"
ns.priest.twistedSil = "The simplest version. Kill and loot Sadly, a 15 minute respawn timer"
ns.priest.twistedWest = "Kill the \"Undying\" Laborer, a skeleton BUT when it tries to reanimate you must "
			.."kill it with any holy damage. Loot FTW!"
ns.priest.voidPlague = "Leper Gnome/Gibblewit near Gnomeregan; Goldtooth in Elwynn Forest; Gnarlpine Cache, Ban'ethil "
			.."Barrow Den, Teldrassil (A) Kul Tiras mob, east of Razor Hill, Durotar; Gillgar, "
			.."north-west from Deathknell, Tirisfal GladeS (H)"
-- Priest Phase 2
ns.priest.dispersion = "Ask a Rogue to pickppocket a Mysterious Troll Scroll from any Bloodscalp troll. The "
			.."Rogue must have the Mastery of Subtlety Rune and Jani's Charm. The Scroll may be on the AH.\n\n"
			.."Ask a Mage to use a Comprehension Charm to decipher the Scroll -> Deciphered Troll Scroll "
			.."or just buy on the AH.\n\nThis starts the quest \"The Troll Scroll\".\n\n"
			.."Grab Holy Spring Water from the fountain as per the map. Go to the north-west corner and "
			.."with TWO Meditation buffs use the Holy Water on a fountain near to and at the rear of "
			.."Gan'zulah (L41). Obtain your lewt!\n\nNote: The quest is shareable, allowing priests "
			.."to skip the Rogue/Mage help. The Scrolls are tradeable / on the AH. Lord Sakrasis (L45re) "
			.."might be up at the Holy Spring. Your Homonculi (L18 rune) can keep Gan'zulah busy or why not "
			.."die and rez on top of the correct fountain! With smarts you can go STRAIGHT TO the Gan'zulah "
			.."step, skipping the quest and Mage/Rogue help!!!"
ns.priest.empowered = "As simple as farming the indicated mobs"
ns.priest.painSuppression = "Collect \"echos\" in the Swamp of Sorrows, Arathi Highlands and Dustwallow Marsh.\n\n"
			.."Collect a fourth in the Scarlet Monastery Graveyard wing. Proceed to the SM Library wing and activate an "
			.."Echo at each of the statues, in the following order:\n\n1) Warrior - Swamp Echo 2) Mage - Arathi Echo "
			.."3) Paladin - Theramore Echo 4) Priest - Graveyard Echo\n\nA brilliant sphere appears. Click on it for phat lewt!"
ns.priest.renewedHope = "Farm the Slitherblade naga mobs along the Desolace coast until an Unsettling Vision drops.\n\n"
			.."Now use Mind Control (L30) on a Slitherblade Tide Priestess (L33-34). You must be no more "
			.."than 2 levels below this mob for MC to work.\n\nNow use your Unsettling Vision to learn!"
-- Priest Phase 3
ns.priest.eyeOfVoid = "Collect seven eyes from around Azeroth: Blasted Lands, "
			.."Felwood, Feralas, Searing Gorge, Stranglethorn Vale, "
			.."Tanaris, and The Hinterlands.\n\nAfterwards go to the far north-east promontory of "
			.."Azshara and locate the Shrine of the Watcher.\n\n/kneel to receive a quest. (Reload if bugged). "
			.."Hand in for your phat reward"
ns.priest.surgeLight = "Between the server hours of 9pm and 3am the Echo of a Lost Soul will spawn at: the Gadgetzan "
			.."Graveyard in Tanaris, the Ruins of Alboraz in Stranglethorn, the Graveyard south east of "
			.."Stonard, the graveyard north west of Revantusk Village.\n\nThe Echo is immune to most damage except Arcane. "
			.."Kill and loot.\n\nRespawn is very fast so if you do not see the Echo "
			.."then you are standing there at the wrong time"
-- Priest Phase 4/5
ns.priest.bindingHeal = "Go to your regular priestly rune quest giver, be that Dietrich Praice in the VoS, Org (H) "
			.."or High Priestess Laurena, Cath., SW (A).\n\nStart \"Lost Heirloom\" by heading to the "
			.."Western Plaguelands. Obtain three relics from the Sorrow Hill Crypt. Hand in.\n\n"
			.."You're now off to Hearthglen, north-west Western Plaguelands. The ledger is on a "
			.."podium in the Town Hall.\n\nNow Tyr's Hand, south-east corner of the "
			.."Eastern Plaguelands. You'll find the Cache on the top floor of the bell tower.\n\n"
			.."The Puzzle Box you receive is locked so kill the scarlet mobs for a key.\n\n"
			.."You'll finish up in Org/SW. Rune lewt!"
ns.priest.soulWarding = "You'll need a cooperative group here, minimum of 3.\n\n"
			.."The first mob you must kill is the Stratholme Courier (L57e), "
			.."so proceed forward and at the fork turn a hard left. He'll "
			.."drop three random mailbox keys. At the correct mailboxes "
			.."use a key to obtain a total of three Shadow Jars.\n\n"
			.."The Jars are unique so two others must help you here.\n\n"
			.."Along the way to Balnazzar you'll see three pedestals. Read "
			.."them for clues as to which bosses you must process:\n\n"
			.."\"Among the dead this mortal...\" ---> Maleki\n"
			.."\"A specter cursed to guard...\" ---> Anastari\n"
			.."\"The ancient kingdom ...\" ---> Nerub'enkan\n"
			.."\"Built from flesh, a sin of...\" ---> Ramstein\n"
			.."\"The people looked to him...\" ---> Barthilas\n"
			.."\"A champion of wicked malice...\" ---> Rivendare\n"
			.."\"Holy furor purges sin and...\" ---> Balnazzar\n"
			.."\"The smell of brimstone...\" ---> Cannon Master Willey\n\n"
			.."On that corpse you must use a jar to capture the boss echo. "
			.."Note that echoes have a two hour duration.\n\n"
			.."Back at the pedestals you must use the echoes at the correct "
			.."pedestal. There will then be an orb to loot - rune loot!"

-- Rogue Phase 1
ns.rogue.bladeDance = "Cliffspring River Cave, Darkshore. Keys drops off Cliffspring mobs; Pp Dark Iron Dwarves in "
			.."Loch Modan. Open the lockbox; Pick Pocket Defias mobs for a Discreet Envelope. Go to the back "
			.."entrance of the Deadmines, Westfall (A).\n\nPp Southsea mobs for Buccaneer's Matchbox. Go "
			.."up the nearby hill. Light the gunpowder bucket. Kaboom! Voilà, your reward awaits! (H)"
ns.rogue.deadlyBrew = "At L20 you'll receive a letter from \"C\". Ignore it. At L22 learn Vanish and Distract "
			.."and have five points in Master of Deception (Tier 1 Subtlety). Camouflage (T2) is strongly "
			.."suggested. Another 5 points!\n\n"
			.."At Pyrewood Village loot the chest in the little house/hut. Thus begins the first quest (above).\n\n"
			.."(Don't go to Stonetalon Mountains. Noobs do that. Enter SFK alone ftw coz you my friend are l33t!)\n\n"
			.."Stealth to Rethilgore. First boss in the first room. Go to your A/H cell nearby. Open the cell "
			.."but quickly Vanish! Talk to the NPC to open the Courtyard Gate.\n\n"
			.."You need to locate Gemela and Gefell. Stealth! You may luck out with a Pick Pocket resist. Be "
			.."ready to Vanish. Use Distract too as necessary.\n\n"
			.."Gemela is in the Dining Room, near the Kitchen. Pp her to receive Sister's Half-Key.\n\n"
			.."Gefell is upstairs, take a right. He drops the Brother's Half-Key.\n\n"
			.."Combine the two for Twin Key but note that you'll need to Vanish again (or do it safely).\n\n"
			.."Back to the Courtyard and the Stables. Use the key on the chest. You now have the Horn of Xelthos.\n\n"
			.."Outside the dungeon, turn in at the little house. You must now wait for a second mail. It will tell "
			.."you to come back to here for your reward!!!\n\n"
			.."YMMV but reports are that you must go to a city to trigger the letter. But first try waiting 15 minutes "
			.."including a full Exit game. Might save a long walk!\n\n"
			.."(The second quest (above) indicates if you have yet to \"hand in\" after the second letter)"
ns.rogue.envenom = "Speak to Kris Legace. She's behind Durnholde Keep. There's no need to enter it.\n\n"
			.."Buy \"Hot Tip\" from her. You'll need 75s.\n\nCheck your map. Follow the river east of Tarren "
			.."Mill all the way into the Western Plaguelands.\n\nContinue right to the end - the waterfall. The "
			.."location of a Rusty Safe is marked on your map"
ns.rogue.mutilate = "Pp Dark Iron Spies for Blackrat's Note, south of Helm's Bed Lake, far east Dun Morogh; Pp Garrick "
			.."Padfoot for Cutty's Note, Northshire Vineyards; Lord Melenas, Fel Rock Cave, Teldrassil (A).\n\n"
			.."Pp Burning Blade mobs for Ba'kso's Note, Durotar; Pp Captain Perrine, south of Brill, Tirisfal Glades (H)"
ns.rogue.precision = "Loot from the Forlorn Cavern, Ironforge; Cutthroat Alley, Stormwind; Gnarlpine Stash, far south, "
			.."Teldrassil (A).\n\n"
			.."Chest in The Drag, Orgrimmar; Shipwreck Cache, east of Garron's Haunt, Tirisfal Glades (H)"
ns.rogue.quickDraw = "You need to piece together a Treasure Map that is in "
			.."four segments. You cannot share segments across zones. "
			.."Decide where you will be mostly spending your time. Pick Pocket.\n\n"
ns.rogue.quickDrawDM = "Dun Morogh Treasure Map:\n"
			.."Top-Right: Frostmane mobs in Coldridge Valley and westerm Dun Morogh\n"
			.."Top-Left: Rockjaw mobs south/west of Helm's Bed Lake, far south-east Dun Morogh\n"
			.."Bottom-Right: Leper Gnome, Gates of Gnomeregan, far west Dun Morogh\n"
			.."Bottom-Left: Dark Iron Spy, south of Helm's Bed Lake, far south-east Dun Morogh\n"
			.."Final location: Under a bridge, road from Kharanos to Ironforge"
ns.rogue.quickDrawEF = "Elwynn Treasure Map:\n"
			.."Top-Right: Kobold mobs at the entrance to the three mines\n"
			.."Top-Left: Defias Wizard middle of Stonecairn Lake, Bandits everywhere\n"
			.."Bottom-Right: Murloc Forager east side of Stonecairn Lake, south-east coast\n"
			.."Bottom-Left: Riverpaw Outrunner near Hogger or Stonecairn Lake\n"
			.."Final location: Near Ridgepoint Tower"
ns.rogue.quickDrawTel = "Teldrassil Treasure Map:\n"
			.."Top-Right: Timberling mobs at the Orcale Glade river, lake south of Dolanaar\n"
			.."Top-Left: Gnarlinepine mobs, Ban'ethil Barrow Den\n"
			.."Bottom-Right: Harpies, Oracle Glade\n"
			.."Bottom-Left: Sprites, Fel Rock Cave\n"
			.."Final location: Hollow stump, Rut'theran Village"
ns.rogue.quickDrawDur = "Durotar Treasure Map:\n"
			.."Top-Right: Kul Tiran mobs, east of Razor Hill\n"
			.."Top-Left: Burning Blade mobs. Approach via Razor Hill\n"
			.."Bottom-Right: Gnolls, central Durotar\n"
			.."Bottom-Left: Trolls, main Echo Isle\n"
			.."Final location: At the foot of a statue, southern Echo Isles"
ns.rogue.quickDrawTG = "Tirisfal Treasure Map:\n"
			.."Top-Right: Scarlet mobs all over, eg, towards the Monastery\n"
			.."Top-Left: Farmers north of Deathknell\n"
			.."Bottom-Left: Gnolls at Garren's Haunt\n"
			.."Bottom-Right: Vile Fin murlocs, coastal areas\n"
ns.rogue.saberSlash = "Auberdine lighthouse, Darkshore; platform, Stonewrought Dam, Loch Modan; hill behind "
			.."the Sentinel Hill Inn, Westfall (A).\n\nstable roof, Northwatch Hold, The Barrens "
			.."Rusty Chest on a platform at the entrance to Shadowfang Keep, Silverpine Forest (H)"
ns.rogue.cutthroat = "First obtain an Engraved Gold Ring from Pick Pocketing the Defias mobs along the southern "
			.."border of Duskwood.\n\n"
			.."Then go up to the cemetary and /kneel at the statue. Careful of the pats, choose your moment!"
ns.rogue.slaughter = "Above the Inn, Kharanos, Dun Morogh; Roof of the spooky house north of Goldshire, Elwynn Forest; "
			.."several cache locations inside the Ban'ethil Barrow Den, Teldrassil (A).\n\n"
			.."Drygulch Ravine, Durotar - look for a pin north north-west of Razor Hill; Relic Coffer in the "
			.."Agamand Crypts, Tirisfal Glades. The key drops off nearby mobs"
-- Rogue Phase 2
ns.rogue.punches = "Simply pick the strongboxes within strongboxes. The most difficult requires "
			.."Level 55 Lockpicking. You may discard the notes you'll find"
ns.rogue.shadowstep = "At L20 you'll receive a letter from \"C\", assuming you've already obtained Deadly Brew.\n\n"
			.."Once again, head to the Dead Drop location in Pyrewood Village in Silverpine and pickup \"The "
			.."Eye of Bhossca\" part 2.\n\n"
			.."The Supply Locker is near the stables in the Monastery grounds (Outside the instance). "
			.."Pick (100) and loot the disguise.\n\n"
			.."Enter SC GY Wing solo, don the disguise and PP a Scarlet Scryer for a key. Enter the Lib wing "
			.."and open the Personal Letterbox in the Athanaeum for a Confidential Message. Enter the "
			.."GY Wing. /sit on a bench in the Forloin Cloister then cross the room and /sit on the other side.\n\n"
			.."Now walk north and loot the Stone Coffer from a mausoleum niche for another Key.\n\n"
			.."Go to the Gallery of Treasures in the Lib Wing and loot the Padlocked Reliquary -> Eye of Bhossca.\n\n"
			.."Back in Pyrewood, place the Eye in the Dead Drop chest. Hearth to a MAJOR city. Check mail (relog). "
			.."Yup... back to the Dead Drop. Grab your phat lewt"
ns.rogue.shurikenToss = "Near the marked chest spawn location will be a Poison Dart trap. Use Disarm Trap (L30) "
			.."or wait for another Rogue to do it for you.\n\nDon't walk in front of the trap!!!\n\n"
			.."The Chest will appear, containing phat lewt!"
ns.rogue.subtlety = "Enter the stone tower in the Kurzen compound and speak to Wendel Mathers.\n\n"
			.."Kill Kurzen mobs in the cave to the north for a Compound Cage Key. Free Mathers.\n\n"
			.."At Booty Bay speak to Captain Aransas.\n\nNote that the cave also has a chest (125) "
			.."that you can pick"
-- Rogue Phase 3
ns.rogue.honorThieves = "Upon receiving the quest you'll go to Ravenholdt "
			.."Manor in Alterac Mountains. Fahrad there will send you "
			.."to Zul'Farrak.\n\nEnter the Zul'Farrak SOLO. (It's a special version just for Rogues doing this).\n\n"
			.."Look in tents for two Vile Concoctions in Clay Vessels. "
			.."Note that throwing the Concoctions into a cauldron will "
			.."not break stealth.\n\nUse one near Antu'sul then loot the Offering of Bone from "
			.."his bag. Likewise Witch Doctor Zum'rah for the Ward of "
			.."the dead. Equip this trinket and you'll see a grave. Loot "
			.."the Offering of Flesh from it.\n\nCombine both Offerings -> Blood Magic Essence.\n\n"
			.."To the right of the \"Stair Event\" is a stone block. Jump up. Walk to a balcony with a chest. Obtain the "
			.."Hollow Emblem. Combine this with the Blood Essence -> Emblem of Blood Magic.\n\n"
			.."At the top of the pyramid loot the War Chest for a Talisman of Kazdor. Well done. Return to Ravenholdt.\n\n"
			.."Now take your Modified Talisman to the Pyrewood Village Dead Drop. Now back to Ravenholdt where Fahrad "
			.."will reward you with your Rune AND a great Agility cloak!"
ns.rogue.unfair = "Pickpocket the pirate mobs at the Cove in Tanaris until you score a Kidnapper's Coin Purse with a "
			.."Precious Medallion.\n\nTake to Jabbey at the Steamwheedle Port and he'll "
			.."happily exchange it for a Rune of Foul Play!"
-- Rogue Phase 4/5
ns.rogue.blunderbuss = "Atypically, the pin numbering begins from 0.\n\nBegin by lock picking (min 250) the Footlockers "
			.."until a Sending Sigil drops.\n\nNow go to the pins numbered 1 to 4 in that "
			.."EXACT order. Note that each time you interact with a pillar you will be teleported to one "
			.."of the other pillars. If lucky, it's the correct next pillar!\n\nAfter the fourth pillar you are transported "
			.."to a final location. There's a chest there!"
ns.rogue.crimson = "Farm the Scarlet Workers in Hearthglen for a Toolbox Key. PP or kill works.\n\n"
			.."Use it to open the Scarlet Toolbox.\n\nNow go to the Marked Crate and use "
			.."the Rusty Crowbar from the Toolbox.\n\nAnother tower now and with your newly "
			.."acquired Safe Box Key. Locate the Belavus' Safe Box. Your phat lewt!"

-- Shaman Phase 1
ns.shaman.dyadicIcon = "Troll/Orc: Meet Shikrik in the Valley of the Trials, Tauren: Meela Dawnstrider in Camp Narache.\n\n"
			.."Troll/Orc stay in their starting zone for the quest but Tauren will need to kill Bristleback Shaman in "
			.."the Brambleblade Ravine.\n\nEquip your Dyadic Icon. Note the Tooltip. The same "
			.."quest mobs are okay here. At ten stacks click your equipped Icon. Turn in the quest for phat lewt"
ns.shaman.earthenRune = "Two ways to obtian this. First is to farm Desert Mirage in The Barrens. Great "
			.."drop and spawn rate. Priests will also be farming there. Level 15 mobs.\n\n"
			.."Alternatively farm the Rot Hide Mystics in Silverpine Forest. Easier mobs but "
			.."much poorer drop rate and you'll need to kill a second spawned mob.\n\nGo to The Barrens FTW!\n\n"
			.."Apart from that it's a straight drop and learn rune with no extra tasks"
ns.shaman.galvanicIcon = "Head to Mulgore or Durotar and look and listen for lightning strikes.\n\n"
			.."Mulgore locations are near The Barrens.\n\nRun to a \"lighting infused totem\" and "
			.."click and equip.\n\n"
			.."Kill 10 x mobs with Lightning Strike.\n\nClick the slot"
ns.shaman.kajaricIcon = "While grinding the shaman gnolls at the farm in the south-east corner of the Hillsbrad Foothills, "
			.."please avoid the Mudsnout Gnolls as they do NOT drop the Kajaric Icon. Only the Mudsnout Shaman.\n\n"
			.."Equip the (low drop rate) Kajaric Icon\n\nProceed to Orgrimmar and enter Ragefire "
			.."Chasm. With care, play in the lava FTW, albeit a little crispier"
ns.shaman.lavaLash = "Meet Boarton Shadetotem on the main mesa of Thunder Bluff. He's the Rogue trainer, "
			.."seconded to deal with you, a mere Shaman.\n\nHe'll have three quests, for which the first "
			.."you'll receive a rogue-style \"disguise\".\n\nThe Seaforium Charges are obtained from "
			.."carts in the Venture Co mine as marked.\n\nHe let's you known soon enough that rogueish "
			.."stuff is not your line. Fine.\n\nThe Windfury Cones are difficult to see but I marked some for you.\n\n"
			.."The last task requires fishing. I've marked the trainer on the map.\n\n"
			.."Voilà - a double banger. Dual Wielding and Lava Lash!!!"
ns.shaman.earthShield = "Kill Baron Aquanis in Blackfathom Deeps\n\nTake the Globe to Je'neu Sancrea at the Zoram Strand.\n\n"
			.."Note that one of his tasks requires elixirs. These are not mob drops. You buy on the AH or craft them"
ns.shaman.runeFury = "Simply kill the Primordial Anomaly.\n\nRoams around the Charred Vale in Stonetalon Mountains. "
			.."Oscillates between three elemental forms. Elite mob but if "
			.."you tailor your elemental attacks vs its elemental form "
			.."then you can solo it. Drop and learn rune. Great drop rate"
ns.shaman.sulfurousIcon = "Go to the Bael'Dun Digsite, south-west of Thunder Bluff and loot the Bael'Dun Dwarves there for a "
			.."locker key. Inside the box is your rune. Easy.\n\nIf you prefer pain then go to the east coast of "
			.."Durotar, across from Razor Hill. The Frozen Makrura needs five sumultaneous firey debuffs. "
			.."As Mages and Warlocks also go there then you just might get lucky.\n\n"
			.."Do the usual, equip the Icon. Follow instructions. 10 x mobs with Earth Shock. Click & learn. Winner!"
ns.shaman.tempestIcon = "Choice of Grimson the Pale in Silverpine Forest or farming centaur in The Barrens for a key to "
			.."chests. Essentially a Hobson's Choice.\n\nI guess the Kolkar chests in The Barrens.\n\n"
			.."Equip when you get the drop. Then kill 10 x mobs, ensuring, you've used nature, fire, frost attacks"
-- Shaman Phase 2
ns.shaman.decoyTotem = "Farm for 10 Strong Harpy Feathers and 3 Cloud Serpent Fangs in Thousand Needles.\n\n"
			.."Purchase a Silken Thread from a trade supplier.\n\nAt the Altar of the Wind Spirit combine them "
			.."together. You now have a 30 second buff \"Offering to the Wind Spirit\".\n\n"
			.."Jump immediately off the mesa! Check your bags!"
ns.shaman.fireNova = "North of Thunder Axe Fortress in Desolace you'll fnd Flameseer Dubelen. Kill. Lot the "
			.."Corrupted Fire Totem.\n\nTravel to Org and speak to Zor Lonetree in the "
			.."Valley of Wisdom. Travel now to Maraudon, Desolace.\n\nYou do NOT need to enter the dungeons. You'll "
			.."be looting a Tear of Theradras from the purple/ pink/left vestibule and the orange/red/right "
			.."vestibule. The tears are a blue colour and hidden within the purple/orange crystal formations.\n\n"
			.."Best is to use Reincarnation (L30) / corspe run.\n\nReturn to Zor Lonetree. Then visit Arch Shaman "
			.."Hamuul Runetotem on the Elder Rise at Thunder Bluff and then fly to Moonglade, with Tal's help.\n\n"
			.."Speak to Keeper Remulos, Follow the directions, box -> Vial -> Salve -> Cleanse -> Phat Lewt!"
ns.shaman.maelstrom = "Defeat the final boss of RFK, Charlga Razorflank (L33e) "
			.."and obtain a Note. This commences \"Tattered Note\".\n\n"
			.."Hand in to Rau Cliffrunner at Freewind Post and accept \"Elemental Aid\".\n\n"
			.."Locate Bath'rah the Windwatcher in Alterac Mountains and "
			.."\pray. You'll be offered three \"Power of...\" quests.\n\n"
			.."The three quests require farming in Desolace, Badlands and Dustwallow Marsh. See the maps for information\n\n"
			.."Return to Bath'rah, also bringing a Crystal Vial. He offers two follow-up quests, sending you back to Rau.\n\n"
			.."You'll speak to Nyse and take a special flight, kill a "
			.."Quillboar and then a Ravaging Tempest (L38e). Back to Rau.\n\n"
			.."One more quest, yup, errand to Bath'rah. Finally, your rune!"
ns.shaman.maelstromQ = { 79358, 79360, 79362, 79363, 79361, 79364, 79365, 79366, 79442 }
ns.shaman.maelstromQN = { "Tattered Note", "Elemental Aid", "Power of da Earth", "Power of da Water", "Power of da Wind",
			"A Simple Container", "With Wind Beneath Your Wings", "Calm Before the Storm", "Catching Up" }
ns.shaman.powerSurge = "Kill Boulderfist Ogres until an Ogre Lightning Rod drops. Plant it in the Soft Soil on top of "
			.."the nearby hill. Cast Lightning Bolt on it 10 times - Tam'kar (L37e) will spawn.\n\n"
			.."Note: Tam'kar automatically dies after 30s so focus on healing through all of his Bolts.\n\n"
			.."Make sure you tag! i.e. hit at least once. Lewt!"
ns.shaman.spiritAlpha = "From the flight master, take the north bridge then walk across the lower bridge "
			.."which turns back towards the Post.\n\nLooking down you'll see the chest. Jump "
			.."down to it. Ghost Wolf might be useful.\n\nRune is in the chest"
-- Shaman Phase 3
ns.shaman.overcharged = "Azshara: Farm the Haldarr mobs for Waterlgged Shaman's Notes, which begins a quest. Run to "
			.."the Spirit Rock, drink the Murky Water Sapta (which appears in your bags), fight the Corrupt "
			.."Manifestation of Water. Nearby, turn in your quest to the elemental. Pickup \"Answering "
			.."Water's Call\". You'll hand in that one later.\n\nSearing Gorge / Tanaris / The Hinterlands: "
			.."The same procedure, but with a fire, earth and air flavour respectively.\n\n"
			.."You now have four \"Answering X Call\" quests plus 3 elemental fragments for each element.\n\n"
			.."Feralas: Farm the water mobs for 12 x Elemental Essence, three per the elemental fragments you "
			.."collected along the way. Combine as you farm.\n\nFeralas Four Pillars: Come here IF AND ONLY IF "
			.."you have all the requirements AND you can beat a L50 mob. Don't wanna waste your good work.\n\n"
			.."Click the four fragments in your bags. Kapow!\n\nNOTE: It is possible to skip to this final fight "
			.."if you meet a nice Shammy there. Flip some G his/her way yeah!"
ns.shaman.tidalWaves = "There's a small box outside a tent at the marked location. You'll obtain an Old Key.\n\n"
			.."In the nearby lake/waterfall, swim down to a sunken boat and loot the Old Chest.\n\n"
			.."Not so fast! Four Shimmering Elementals will spawn (L41-42). Be ready to swim away!"
-- Shaman Phase 4/5
ns.shaman.coherence = "You need to farm the Greater Obsidian Elementals (L55-57) in the Burning Steppes until one of them "
			.."drops a Molten Obsidian Core.\n\nYou're now on a 10 minute timer!\n\n"
			.."Run/ride south to Redridge Mountains and stand in Lake Everstill. Or fly to a lake somewhere else.\n\n"
			.."Your Core transforms into a Sooty Obsidian Core. \"Use\" it to polish it. Voilà, your rune!"

-- Warlock Phase 1
ns.warlock.metamorphosis = "The first quest does NOT require you to enter the BFD Raid. You can loot the Soran'ruk Fragments "
			.."from Twilight Acolytes in the ruins outside the Raid. You do need to enter SFK to loot the other "
			.."Fragment off the Shadowfang Darksouls.\n\n(BFD is located on the north coast of Ashenvale "
			.."and SFK is located south in Silverpine Forest)\n\n\"Rumors Abound\" sends you to the the Tower of "
			.."Ilgalar in the far north east corner of Redridge Mountains and to the Tower of Althalaxx in the far "
			.."north of Darkshore.\n\nThe Conjuring is solved by heading to Felfire "
			.."Canyon in the far east of Ashenvale. With the 10 x Blood you can activate the nearby Hellscream altar "
			.."and defeat a few demon waves using Drain Soul WHILE standing inside the purple rune aura.\n\n"
			.."Eventually the Mysterious Traveler appears.\n\nBack with Doan, accept the final quest. Profit!"
ns.warlock.channeling = "Lots of options. For Alliance it's best to track down Greishan Ironstove, a "
			.."merchant who wanders the long path in Loch Modan. He sells a Malevolant pie. "
			.."Eat it, get a tummy ache and then check your bags you winner!\n\nHorde are best to go down to the Altar "
			.."of Thorns, south-west of Ratchet and use Health Funnel until zero health. Alliance can come here too :o\n\n"
			.."Horde also have the Sadistic Fiend in Silverpine as an option. You'll need to cast Curse of Recklessness.\n\n"
			.."Alliance/Horde may also get a drop off Dark Strand Fanatics at the Tower of Athalaxx in Darkshore.\n\n"
			.."Another option is to farm Harvesters in Westfall. You're competing against "
			.."regular questers and Mage engravers too. You'll combine a Spare Reaper "
			.."Parts (from Watchers and Golems) and an Elemental Core from a Dust Devil to "
			.."make a Prototype Engine item. Instal it into a Harvest Reaper Prototype. "
			.."This activates it. Defeat it. Lewt it!"
ns.warlock.grace = "You need to obtain an Ominous Tome mob drop from: Darkeye Bonecasters in Agamand Mills in "
			.."Tirisfal Glades or Voodoo/Hexed Trolls on the Echo Isles in Durotar (H) or Kobold Geomancers "
			.."in FRONT of Jasperlode Mine or Defias Rogue Wizards on Stonecairn Lake in Elwynn Forest (A).\n\n"
ns.warlock.graceEF = "Obtain also Gnoll Blood. Good locations are Hogger's camp but NOT Hogger and north-west of "
			.."Stonecairn Lake is easy but not plentiful.\n\nAlso a Wolf Jawbone. North of Stonecairn Lake "
			.."or south of Jasperlode Mine are easiest.\n\nGo to the Slaughtered Lamb Inn basement in SW "
			.."and Summon Soboz on the Summoning Cirle"
ns.warlock.graceDM = "Obtain also Wendigo Blood. The Wendigo are below / west of Kharanos. The Wolf Jawbone is "
			.."plentiful. So many wolves north of Kharanos but also easy ones in Coldridge too. Go up to "
			.."Shimmer Ridge where you'll find a summoning circle. Summon and kill Soboz. Gratz!"
ns.warlock.graceDur = "Some additional Durotar locations, closer to Orgrimmar, have also been marked as Ominous "
			.."Tome drops.\n\nThe Makrura Legs drop from the crabs all along the beaches. The Skulls however are in "
			.."the Tiragarde Keep area. The Summoning Circle for the ritual is in the south-east corner of "
			.."the main Echo Isle. Summon and kill Soboz!"
ns.warlock.graceTG = "The Ominous Tome Drops from the Darkeye Bonecasters in Agamand. The Gnoll Blood drops "
			.."from the Rot Hide Gnolls in Garren's Haunt.\n\nThe Hound Jawbones (NOT wolf as you'll see "
			.."online) are everywhere but I've thrown a few pins that are between the Agamand/Garren's areas.\n\n"
			.."When it's time to summon Soboz go to the Undercity sewer entrance. The Circle is "
			.."about halfway down. Summon. Kill. Gratz!"
ns.warlock.firesWake = "Buy explosives from Zixil, who wanders between Southshore and Tarren Mill.\n\n"
			.."Then head over to Durnholde Keep. Cross the bridge and proceed up the path and "
			.."turn left and then enter the old fort. Look to the right and there is a pile of rubble.\n\n"
			.."Stand on top of it!!! You just spent 1 %$@%$ gold! Use your explosives.\n\n"
			.."Loot your rune from the Storage Locker. Quickly! Any douche can steal it! 5g!!!\n\n"
			.."Engrave it. Easy win, chicken din!"
ns.warlock.shadowbolts = "Horde just need to go to Supervisor Lugwizzle at the Sludge Fen in The Barrens and right "
			.."near to Orgrimmar. Use your Drain Soul. Take your new Soul of Greed and use on the nearby "
			.."Hungry Idol. Gratz!\n\n"
			.."Alternatively go to Silverpine Forest and get a Tortured Soul from the Ravenclaw mobs. "
			.."Once acquired youmust firstly Life Tap. Now use your Tortured Soul. Kill the Ghost. Win!\n\n"
			.."Alliance might automatically get the Rune if they are doing a certain quest in Darkshore. "
			.."I've marked the location and quest status.\n\nAlliance are best going to Ironbands Excavation "
			.."Site in Loch Modan. You'll see the Demonic Remains in the south-east corner. Attack it "
			.."with a Shadow spell. Kill the mob that spawns!\n\nAlternatively, look for Old Murk-Eye along the "
			.."southern coast of Westfall. Use your Drain Soul and receive a Soul of the Sea. Go to the Idol of "
			.."the Sea on the coast. Use your Soul of the Sea on it. Gratz!\n\n(I suspect that Horde can come here too) "
			.."(I think Alliance can do the two Horde ones!)"
ns.warlock.tactics = "Horde go to a Dead Acolyte in Tirisfal Glades. East of the lake and near the "
			.."path to the Scarlet Monastery.\n\nAlliance in turn find the Dead Acolyte north of the Crystal Lake, Jasperlode "
			.."Mine end, in Elwynn Forest.\n\nLoot the Dead Acolyte. Go to Rupert "
			.."Boch, upstairs in Gallow's End, Brill (H) or "
			.."Maximillian Crowe, downstairs in the Lion's Pride Inn in Goldshire (A).\n\nYou'll be required to return to the "
			.."Dead Acolyte.\n\nNext you'll have 10 minutes to get to Carendin Halgar in the Mages Quarter "
			.."of Undercity (H) or Gakin the Darkbinder in the basement of the Slaughtered Lamb in the Mages Quarter "
			.."of Stormwind.\n\nEnjoy your reward!"
ns.warlock.soulSiphon = "Alliance must choose either Captain Beld in Ironband's Compound to the far south-east of "
			.."Dun Morogh or Hogger in Elwynn Forest.\n\nHorde will likewise choose Gazz'uz in Skull "
			.."Rock cave which is outside Orgrimmar or else Maggot Eye in the house at Garren's Haunt in Tirisfal Glades.\n\n"
			.."Your objective is to Drain and obtain a Tainted Soul Shard.\n\nYou'll also need to obtain a Pure Soul Shard "
			.."from any critter.\n\nTake both Shards to Gaklik Voidtwist, south of Kharanos Inn or Damien Kane in the Lion's "
			.."Pride Inn of Goldshire if you are Alliance.\n\nHorde will seek Darmak Bloodhowl in the Razor "
			.."Hill barracks or Denton Bleakway in the Mages Quarter of Undercity.\n\nYou'll receive your Rune of Soul Siphon!"
-- Warlock Phase 2
ns.warlock.dance = "Find a Reckless Warlock corpse in Alterac Mountains,, Desolace, Stranglethorn Vale or "
			.."Thousand Needles and loot a Brimstone Carving.\n\nNow use Hellfire (L30) on yourself. Random "
			.."chance to \"transform\" the carving into a Rune of Wickedness. Profit!"
ns.warlock.invocation = "Obtain 10 Conjuror's Pendants off the Stromgarde Keep Conjurors. Then go upstairs "
			.."in the nearby house and combine the pendants at the Void Prism. A Void Seeker will spawn. "
			.."Kill and lewt"
ns.warlock.shadowflame = "Stand at the Sacrifical Altar at Shadowbreak Ravine in south-east Desolace and cast Shadow "
			.."Ward, Sacrifice and Soul Link and then interact with the Altar.\n\n"
			.."At the end of the channel the Seductress Ceeyna will appear. Kill and loot her"
ns.warlock.synergy = "You must have obtained the Metamorphosis rune. If not, then speak to Doan Karhan in "
			.."the southern Barrens.\n\nYou may have received mail. Regardless, go "
			.."to Raszel Ander in the southern Barrens and start \"A Solid Foundation\", which takes you "
			.."to Bough Shadow in Ashenvale.\n\nYou return to Raszel and start \"Soul Vessel\" "
			.."which requires a Soul Vessel (Engineering 205) and found on the AH. Turn in at the Mannoroc "
			.."Cavern in Desolace.\n\nA final quest, defeat Des'Altek (L40) -> rune"
-- Warlock Phase 3
ns.warlock.pandemic = "Locate a Grimtotem Chest, near a Dead Diseased Grimtotem Shaman. Loot.\n\n"
			.."Go west and locate a ramp a little way north of the main east-west path. Go up "
			.."and past the Woodpaw Den. Bearing north you'll locate a Dead Diseased Woodpaw "
			.."Mystic and a Woodpaw Bag. Loot.\n\nCombine to make a Diseased Nature Staff "
			.."and use it to awaken the Diseased Forest Walker to the east and south of "
			.."the main path. Kill. Obtain phat lewt!"
-- Warlock Phase 4/5
ns.warlock.decimation = "Go to a Fel Rift in the Eastern Plaguelands or the Burning Steppes. Farm until a Legion Portal "
			.."Tuner drops.\n\nHead now to a Fel Scar in the Blasted Lands, "
			.."Feralas or Azshara. Use your new Tuner and then send your Explorer Imp inside!\n\n"
			.."Keep doing this until it returns with a Portal Tuner Tuner. Use it and your Legion "
			.."Tuner becomes an Overcharged one.\n\nUsing the Overcharged Tuner on a Fel Scar, "
			.."it will transform. Now's the time for your Explorer Imp to jump in again et voilà!\n\n"
			.."The last transformation: Red- returns with the Rune; Green- returns with no Rune. "
			.."The Overhcarged Tuner has two only charges" 
ns.warlock.felRift = "This pin is indicative. There are more locations in this zone. For a complete list, see Taraezor's "
			.."excellent AddOn \"HandyNotes - Chests, Gear and More\". Hey! It's by yours truly! <3"
ns.warlock.markChaos = "Farm the Skeletal Flayers for 3 x Plagued Soul Shard.\n\n"
			.."Go to Pixie Pilfershard (A) at Chillwind or Prazik Pilfershard at The Bulwark (H). Easy as"

-- Warrior Phase 1
ns.warrior.bloodFrenzy = "Just a friendly duel. So just go pwn him!"
ns.warrior.consumedRage = "At the back (of course) of the Thelgen Rock Cave in The Wetlands. Level 25 but not "
			.."especially tough. Hunters and Warriors (A/H)"
ns.warrior.devastate = "Along the way you'll recieve the following loot. Each NPC requires three items. You may hand in "
			.."separately or together.\n\nThe items drop in the same zone as the NPC. "
			.."There is a little overlap between Horde NPCs.\n\nThe NPCs and locations are as follows: "
			.."* Junni Steelpass, Kharanos; * Viktoria Woods, SW; * Delwynna, Darnassus; * Vahi Bonespliter, Razor Hill; "
			.."* Vateya Timberhoof, Bloodhoof; * Dorac Graves, UC.\n\n"
ns.warrior.devastateDel = "Delwynna needs a Severed Tiger Head, Severed Owl Head and Severed Spider Head. ALL are plentiful, "
			.."especially in the Starbreeze area south-east of Dolanaar. Avoid the Oracle Glade for Webwoods. "
			.."The other mobs are named \"Saber\" and \"Strigid\".\n\nNONE have been marked on the map. Too many!"
ns.warrior.devastateDor = "Dorac needs a Severed Bat Head from the innumerable Duskbats all over Tirisfal "
			.."(except for Agamand Mill) and NOT marked on the map; a Severed Gnoll Head from any "
			.."of the Rot Hides south of and at Garren's Haunt; and a Severed Murloc Head from any Vile Fin along the coast"
ns.warrior.devastateJunni = "Junni requires: Pristine Trogg Heart from Rockjaw "
			.."mobs to the far south-east; Severed Troll Head, "
			.."Frostmane mobs to the far south-west (mostly); Severed Wendigo Paw from the Wendigo at their cave"
ns.warrior.devastateVah = "Vahi needs a Severed Centaur Head from the southern coast; Severed Harpy Head from the "
			.."Dustwind Harpy enclave between Org/Razor and Severed Quillboar Heads from the Razormanes west of Razor Hill"
ns.warrior.devastateVat = "Vateya needs a Severed Quillboar head from the Bristleback Interloppers to the north-east; the "
			.."Severed Harpy Head from Harpies mostly around the northern edge of Mulgore; and the Severed "
			.."Gnoll Head from Palemane's, west and south of Bloodhoof Village"
ns.warrior.devastateVik = "Viktoria needs: Severed Kobold Head from the Troggs "
			.."near either of the mines; Severed Murloc Head from the Crystal Lake; Severed Gnoll Head from Gnolls, "
			.."plentiful around Hoggers area"
ns.warrior.endlessRage = "Alliance have a choice of hunting down Old Murk-eye along the southern Westfall "
			.."coast; battling elite ogres in the north- east corner of Loch Modan, or defeating "
			.."Lady Sedorax, near your quest hub.\n\nHorde will need to grab an easy to see "
			.."banner from beside The Crossroads Inn and then challenging Lieutenant Stonebrew in Northwatch Hold or slaying "
			.."a mob in the Skittering Dark Cave of Silverpine Forest.\n\nJust do what's convenient"
ns.warrior.frenziedAssault = "Speak to one of: Zamja, The Drag, Orgrimmar; Netali Proudwind, The Spirit Rise, Thunder Bluff; "
			.."Penny Hawkins, Brill Inn, Tirisfal Glades (H) or Bruuk Barleybeard, Innkeeper in Ironforge, Liv "
			.."Bradford, The Park, Stormwind; Innkeeper Keldamyr in Dolanaar, Teldrassil (A)\n\n"
			.."They'll ask you to bounce someone. Easy!"
ns.warrior.furiousThunder = "Hogger in Elwynn Forest (A/H).\n\n"
			.."Edan the Howler, Fyodi, Old Icebeard, Vagash and Vejrek, Dun Morogh; Goldtooth, Gruff Swiftbite, "
			.."Elwynn Forest; Gnarlpine Caches, Teldrassil (A)\n\nDeath Flayer, Lightning Hide mobs, Durotar; "
			.."Felweaver Scornn (rare), Gazz'uz, Skull Rock Cave, Durotar; Sarkoth, Valley of Trials, Durotar; "
			.."Arra'chea mobs, Lurkmane, Snagglespear, The Rake, Sister Hatelash, Mulgore; Gillgar, Tirisfal (H).\n\n"
			.."Whew! Loot & Learn!"
ns.warrior.harenTip = "When a Battle Totem drops from any of the Mo'grosh ogres, use it to challenge Haren Swifthoof, who "
			.."runs close to The Loch, to a duel"
ns.warrior.quickStrike = "Horde should go to Kilxx @ Ratchet, buy a Fishing Harpoon and then swim out to snare "
			.."Bruuz with the Harpoon.\n\nAlliance options include, similarly, besting "
			.."Paxnozz with a Gnarled Harpoon. Location is west of the Ruins of Mathystra, Darkshore "
			.."but loot from a dead turtle's head first.\n\n"
			.."Alliance can also obtain a Gillsbane from any Defias mob in Westfall, use it to kill Murlocs "
			.."along the SOUTH coast to obtain a Soul of the sea then go to the Medusa statue, then kill the next mob.\n\n"
			.."Simpler are the Troggs west of Thelsamar in Loch Modan. They'll drop a Geode. Best to see "
			.."the tooltips I provided"
ns.warrior.ragingBlow = "Three items to fetch. The Helm is found in Shadowfang Keep, a level 22-30 dungeon in "
			.."southern Silverpine Forest. It's on a bench behind Commander Springvale, the 4th boss.\n\n"
			.."The \"Dark Iron Entrepreneur\" sells the Lance. He's located in Dun Modr, The Wetlands, "
			.."right near the Arathi Highlands border.\n\nThe shield is conveniently hanging on a wall, "
			.."behind Gath'ilzogg in Stonewatch Keep in the Redridge Mountains. Horde should rez once the "
			.."alliance have tagged the mobs, lol."
-- Warrior Phase 2
ns.warrior.bloodSurge = "After obtaining the Illegible Recipe from the Boulderfist (Arathi) or Crushridge (Alterac) mobs, "
			.."go to Skonk in the Arathi Highlands.\n\nSkonk will task you with finding victuals in the "
			.."Arathi Highlands, Baqdlands, Hillsbrad Foothills, and the Swamp of Sorrows.\n\n"
			.."Return to Skonk and defeat him for your phat lewt.\n\nYou'll also receive a blue 1H mace!"
ns.warrior.focusedRage = "Firstly slay the Witherbark mobs (L32-35) until the Witherbark Mallet drops. Now enter the nearby "
			.."cave and head to the Witherbark Gong. Use the mallet on the gong. This spawns a Witherbark "
			.."Goliath (L35). Kill. Lewt"
ns.warrior.intervene = "There are three combat dummies. You must use Execute (L24) on the first dummy, Taunt (L10) "
			.."on the second, Shield Bash (L12) on the third.\n\nA chest will magically appear. Phat lewt inside!\n\n"
			.."Easiest to commence with sword and board. It's not a race, but just complete it smoothly to be sure."
ns.warrior.rallyingCry = "Quite a large area to search. You may group but ensure you are all nearby when starting"
-- Warrior Phase 3
ns.warrior.gladiator = "Pick up the first quest from Fizbuz Mithril in Gadgetzan. You'll then travel to Kajind in "
			.."Azshara. You'll have to defeat the blue drake Ceruleos (L50), also in Azshara. Return to Gadgetzan "
			.."and your last task is to defeat Kajind in the Gadgetzan Arena. Turn in for your phat lewt"
ns.warrior.tasteForBlood = "Collect the four construction pieces as marked on the map. Go all the way east to "
			.."to assemble/summon Iodax the Obliterator (L50).\n\nBetter to group up but soloable at L50.\n\n"
			.."Reports say that you can skip the collection and just group up at Iodax ftw ;)"
-- Warrior Phase 4/5
ns.warrior.suddenDeath = "You must use a targetting macro: /tar Wandering Swordsman\n\n"
			.."Could be anywhere really in Silithus, but the targetting macro helps a ton!\n\n"
			.."Talk to him, select \"Easy\" (choice affects the difficulty, not a reward).\n\n"
			.."You'll be teleported onto a platform at AQ. Watch the painted zones during "
			.."fight! Red: location of his cleave. Purple: you'll get pushed off the "
			.."platform and die. There are adds too.\n\nThe idea is to just survive and take "
			.."down the adds - eventually you'll be granted a large damage buff.\n\n"
			.."The quest just happens along the way"
ns.warrior.shockwave = "Head down to the far far south of Tanaris, looking for a Half-Buried Mech at the pin.\n\n"
			.."Click it twice. That's the first quest done and a useful Guided Buoyancy Accelerant.\n\n"
			.."With the second quest quickly look for Spike Lakeman. Whatever, just swim due "
			.."south to a secret island. As fast as possible.\n\nOn the new island speak to the Mad "
			.."Doctor and... now look for Numi in Everlook in Winterspring.\n\nNow, in the Burning Steppes follow the "
			.."map pins. Do the killing collecting.\n\nAnd... this time you're with Jurgens again. "
			.."Hooray... a teleporter.\n\nThe Harvest Golem V000-A is tough! You'll "
			.."need a group. Don't forget to kite it so the armour stacks will expire. And Disarm "
			.."and Demoralizing Shout and Shield Bash/ Pummel while it's casting"

-- Common Phase 1			
ns.agon = "You need to kill Agon, a wild boar. Only one person gets the drop, solo or grouped. Respawn is quick, 2-3 minutes"
ns.allClass = { "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR" }
ns.allSpellG = { "Survival of the Fittest", "Lone Wolf", "Rewind Time", "Divine Sacrifice", "Serendipity", "Main Gauche",
			"Dual Wield Specialization", "Demonic Pact", "Warbringer" }
ns.allSpellACA = { "Skull Bash", "Serpent Spread", "Arcane Surge", "Beacon of Light", "Mind Sear", "Just a Flesh Wound",
			"Healing Rain", "Everlasting Affliction", "Single-Minded Fury" }
ns.duskwoodCrypts = "The the map pins for which Crypt to enter first.\n\nIn the 1st Crypt turn left. Click on the Dusty "
			.."Coffer and grab the Decrepit Phylactery. Exit\n\nIn the 2nd Crypt turn right into the throne "
			.."room. Use the Phylactery on the Slumbering Bones.\n\nYou've just awakened a level 25 Lich. Loot!"
ns.frozen = "Horde go to a Frozen Markrura east of Razor Hill or to a Frozen Murloc north-west of Brightwater "
			.."Lake in Tirisfal Glades\n\nAlliance also seek a Frozen Murloc, at the "
			.."Stonecairn Lake in Elwynn Forest or they'll go to Frozen Trogg at Gol'bar Quarry in Dun Morogh.\n\n"
			.."These need to be defrosted and you'll need help applying enough firey debuffs"
ns.grizzby = "Grizzby at Ratchet has three tasks at level 20+. Then you may purchase the rune.\n\n"
			.."The first task sends you to Stonetalon Mountains. Drop rate about 2/3rds, or Ashenvale (A).\n\n"
			.."Go to the Wetlands for the second quest.\n\nThe final task is Fish Oil. Obtainable from all over "
			.."Azeroth. I marked Feralas, Swamp of Sorrows, Desolace and Stranglethorn Vale. All above 40% "
			.."drops. Or if you are rich then trade or the AH!"
ns.livAndStuart = "Stuart usually stands at the foot of the stairs. Speak "
			.."to Liv Bradford first if you haven't already done so. "
			.."Fast respawn. Both are in the unnamed Inn"
ns.secretCoven = " in the \"secret\" Warlock coven in  the basement of The Slaughtered Lamb"
ns.starterZoneClass = "All of the locations are in your starting zone, from your class trainer. You can't possibly miss it! "
			.."Objectives marked too."
ns.supplyFaction = "Reach Friendly with Azeroth Commerce Authority (A) or Durotar Supply and "
			.."Logistics (H). You may now purchase the Rune!\n\n(Quests require level 8/9)"
ns.woundedAdventurer = "Go to the Grizzled Den, Dun Morogh; hill east of Jerod's Landing, Elwynn Forest; east of the "
			.."Oracle Glade, Teldrassil (A)\n\nLedge via the northern exit of the Venture Co. "
			.."Mine, Mulgore; Kolkar Crag, west of Sen'jin "
			.."Village, Durotar\n\nClick on the skeleton. The other person clicks on the summoning portal.\n\n"
			.."Click on the spirit for loot"
ns.zixil = "He has the most extensive list of limited stock items in all of Azeroth. Best to stock up now!"

-- Common Phase 2
ns.amaryllis = "First go to Amaryllis Webb in the Swamp of Sorrows where you'll purchase an Entomology Starter Kit, 50s.\n\n"
			.."In any order, catch an Arbor Tarantula, east and south-east of the Lake Nazferiti logging camp in "
			.."Stranglethorn Vale; a Hay Weevil from a barn or stables in the Arathi Highlands; a Flesh Picker from "
			.."the kodo bone graveyard in Desolace.\n\nReturn to Amaryllis for phat lewt"
ns.dalaranAgent = "Go to Ariden's Camp in Deadwind Pass. It's close to the Swamp of Sorrows path.\n\n"
			.."Speak to the Dalaran Agent and obtain Ariden's Sigil from her. Equip it. You must "
			.."now locate and kill 7 Dark Riders (L 41) and loot their relics.\n\n"
			.."You'll receive a Dark Presence buff when a Dark Rider is close by.\n\n"
			.."The zones are: Arathi Highlands, Badlands Deadwind Pass, Desolace, Duskwood, Swamp of "
			.."Sorrows and The Barrens.\n\nWhen done, return to the Dalaran Agent and "
			.."hand in each \"quest\". A final quest will reward you with the Rune of the Jungle King.\n\n"
			.."Dark Riders are on a 5 minute respawn timer"
ns.dalaranRelic = "Curious Dalaran Relic ("
ns.dalaranSpeakTo = "Speak to the Dalaran Agent @ Ariden's Camp in Deadwind Pass"
ns.dalaranQuest = { 80098, 80147, 80148, 80149, 80150, 80151, 80152, 80120 }
ns.dalaranQuestName = { ns.dalaranRelic .."Curious)", ns.dalaranRelic .."Glittering)",
						ns.dalaranRelic .."Whirring)", ns.dalaranRelic .."Odd)", 
						ns.dalaranRelic .."Heavy)", ns.dalaranRelic .."Creepy)", 
						ns.dalaranRelic .."Slippery)", "A Service to Dalaran" }
ns.dungeonDrops = "Drops from all bosses in Razorfen Downs, Uldaman, Scarlet Monastery (all wings)"					
ns.pillaged = "Find the pillaged campfire, north-west of the Kodo Graveyard. Accept the quest "
			.."and go to Bibbly F'utzbuckle who is near Kormek's Hut. He'll give you \"On the Lam\" to complete.\n\n"
			.."The hint sends you to Tokal in Booty Bay at the Salty Sailor Tavern bar. She'll "
			.."have you complete \"Cherry for your thoughts\". "
			.."Buy the Cherry Grog from the bartender and pickup \"No Honor among Thieves\".\n\n"
			.."You need to go to the bridge leading into the Wetlands from Arathi Highlands. Cross the "
			.."small rope bridge nearby and walk down to the water. Board the boat (click on it).\n\n"
			.."You've been teleported to the far eastern shore. Speak to Illari Duskfeather, level 40. "
			.."She'll run away / be killed, leaving a Dropped Pouch which contains a key to her Loot Cache. "
			.."Take the Jewel Encrusted Box and open it to receive your rune!"
-- Common Phase 3
ns.enragedVoidWalker = "Farm for Coded Warlock Notes from Wastewander Shadow Mages and a Wastewander Cipher from the "
			.."Wastewander Thieves. South-east of Gadgetzan.\n\nCombine -> Deciphered Warlock Notes. Proceed to "
			.."the Cryptic Scroll of Summoning nearby and use the Notes. Smash the Enraged Voidwalker (L43e) "
			.."and loot ftw!\n\nIf grouped then only one person needs to have "
			.."the two items and they can be bought on the AH.\n\n"
			.."Priests and Shaman both need this so don't be surprised to see the other class there"
ns.enragedVoidWalkerStart = "South-east of Gadgetzan, Tanaris, is where you'll be farming "
			.."Wastewander mobs. Later, a L43e appears"
ns.felPortals = " Fel Portals: Ashenvale, Darkshore, Desolace, Redridge, Silverpine, Swamp of Sorrows, The Barrens, Westfall."
ns.getCGM = " Too many locations. Use Taraezor's AddOn \"Chests, Gear and More\" for all the known locations, "
			.."plus other cool stuff!"
ns.emeraldSpell = { "Gore", "T.N.T.", "Molten Armor", "Improved Hammer of Wrath", "Void Zone", "Cut to the Chase",
					"Burn", "Unstable Affliction", "Shield Mastery" }
ns.emeraldWardens = "Purchasable from an Emerald Warden Quartermaster at Friendly rep in Ashenvale, Duskwood, "
			.."Feralas, The Hinterlands. Obtain rep through group/solo questing via portals in the same zones."
ns.nightmareIncursions = "Duskwood: Level 23+, Ashenvale: 37+, Feralas: 47+, The Hinterlands: 47+\n\n"
			.."Go to the marked location and speak to a Field Captain. After completing the quests, which require defeating "
			.."demonic creatures near to portals as well as speaking to an agent, you'll progress to entering the portal to "
			.."complete a variety of challenges. All of this rewards Emerald Wardens reputation.\n\n"
			.."The quests may be shared with up to four people. It is "
			.."strongly recommended to group up and share quests. Thus, "
			.."the group will complete several tasks at the same time.\n\n"
ns.leylineGuide = "Visit four Leyline Confluxes in each of Azshara, Feralas, The Hinterlands and Searing Gorge.\n\n"
			.."Use either a Warlock's Worldcore Fragment (from Imp explorations) or a Mage's Scroll of Geomancy.\n\n"
			.."An Enraged Leywalker (L47e) will spawn. Immune to arcane "
			.."damage. It will drop a Leycryst. Combine all four. Voilà!\n\n"
			.."Paladins/Priests must group up to do this"
ns.leylineSummary = "At Azshara, Feralas, The Hinterlands and Searing Gorge you must \"attune\" to a leyline with "
			.."a Scroll of Geomancy (Mage decipher) or Worldcore Fragments (Warlock Imp explorations)"
ns.leylineSummaryExtra = ". Paladins and Priests must group with one or more Mages/Warlocks"
ns.wildGods = "Find the Shadowtooth Emissary @ the Emerald Sanctuary, southern Felwood. Accept \"The Wild Gods\".\n\n"
			.."Kill Vilebranch mobs (L45e-51e) @ Jinth'Alor, south- east Hinterlands, to obtain a Wildwhisper Draught.\n\n"
			.."In Razorfen Downs (far south Barrens), do a full clear of the last boss. Drink the Draught. Speak to the "
			.."Spirit of Agamaggan and hand in / pick up parts 1 & 2 of \"The Wild Gods\". You'll receive Agamaggan's Roar.\n\n"
			.."Proceed now to one of these dungeons. When the kill condition has been satisfied, you'll receive a message "
			.."that \"You feel a shadowed presence\". Go to a newly spawned Ghostly beast and use your Agamaggan's Roar. "
			.."This summons a Delirious Ancient (L52e). Kill & loot. You'll receive 1 x Wild Offering. When you have three, "
			.."return to the Shadowtooth Emissary for your rune.\n\n"
			..colourHighlight .."Blackrock Depths: " ..colourPlaintext .."Defeat Gerstahn, Grebmar and the "
			.."Ring of Law. Head to the Highway and hunt down and blow your horn on the Ghostly Basilisk.\n\n"
			..colourHighlight .."Maraudon: " ..colourPlaintext .."Any three bosses. When you get the message, "
			.."go to Princess Theradras. A Ghostly Raptor is nearby.\n\n"
			..colourHighlight .."Zul'Farrak: " ..colourPlaintext .."Any three bosses excluding Gahz'rilla. "
			.."Look for a Ghostly Spider in the pool area."
ns.wildGodsSpells = { "Improved Frenzied Regeneration", "Lock and Load", "Advanced Warding", "Improved Sanctuary",
			"Divine Aegis", "Combat Potency", "Riptide", "Vengeance", "Sword and Board" }
ns.wildGodsStart = "Begin by talking to the Shadowtooth Emissary at the Emerald Sanctuary in southern Felwood"
-- Common Phase 4
ns.purchaseSkillBook = "Purchase from Zor Lonetree, Org. Valley of Wisdom (H) or Milton Sheaf, SW Keep Library (A)"
ns.skillBookVendor = "Skill Books may be purchased from this librarian"
-- Common Rings Phase 4/5
ns.ring.defense = "From Searing Gorge (or perhaps Burning Steppes) walk down the round path inside the cavern of "
			.."Blackrock Mountain until you reach the BRS meeting stone.\n\nTurn into that hallway. Then the first right "
			.."into a small room. There are two copies of the book on the floor. You only need to loot one for your phat lewt"
ns.ring.defenseTip = "Lowbies can corpse run and loot this as one of the books may be looted while out of agro/ "
			.."sight of the mob"
ns.ring.fire = "From Thorium Point go south-east. Locate a hole in the ground. Jump in.\n\n"
			.."Turn and go north and up the ramp.\n\nAt the fork bear left. Book is on a bench in the alcove"
ns.ring.sword = "Walk around to the back of Karazhan and locate the correct entrance to the Master's Cellar, as "
			.."per the pin.\n\nThe stair down lead into the catacombs. Now go right, following the path around. You're at "
			.."a downhill passage, leading to a central rise.\n\nTo the left of this platform are two pillars, "
			.."with the book between them. Loot FTW!"
-- Common Phase 5
ns.purchaseForAlt = "Once obtained, this rune may be purchased for an alt. You do this by visiting Pix Xizzix in Booty "
			.."Bay and purchasing an emblem, which you then mail to that toon. With the emblem, your "
			.."alt visits a Rune Broker in SW/IF/TB/Org. BoA\n\nThe currency for these Emblems drops from "
			.."level 55+ dungeon bosses.\n\nShe's standing on crates @ (28.52,75.87), "
			.."next to Auctioneer Graves and at the side of The Old Port Authority building"
ns.runeBroker = "Bring your Emblem to this vendor. Your character will be able to purchase a rune.\n\n"
			.."The Emblem would have been purchased by another of your characters from Pix Xizzix "
			.."in Booty Bay, using currency obtained from level 55+ dungeon boss kills."

--=======================================================================================================
--
-- QUICK START / MAIN DATA STRUCTURE
--
--=======================================================================================================

ns.dungeonSummary = "Drops from named elites / bosses in the Scarlet Monastery, Razorfen Downs and Uldaman" -- Deprecated P4
ns.supplyFactionStart = "Elaine Compton, \"Azeroth Commerce Authority Vendor\", Stormwind (A), "
			.."Jornah, \"Durotar Supply and Logistics Vendor\", Orgrimmar (H)"
ns.twoPlusHealers = "2+ Players - Healers. First step: Find Adventurer's Remains/Spirit:  "

		-- SLOT=
		-- 1 = "Head"			 8 = "Feet"			15 = "Back"
		-- 2 = "Neck"			 9 = "Wrist"		16 = "Main Hand"
		-- 3 = "Shoulders"		10 = "Hands"		17 = "Off Hand"
		-- 4 = "Shirt"			11 = "Ring 1"		18 = "Ranged"
		-- 5 = "Chest"			12 = "Ring 2"		19 = "Tabard"
		-- 6 = "Waist"			13 = "Trinket 1"
		-- 7 = "Legs"			14 = "Trinket 2"
					
ns.runes = {

	["RINGS"] = {
		-- Phase 4
		["Arcane Specialization"] = { rune="Rune of Arcane Specialization", phase=4, spellID=442893, level=60, icon="R",
				slot=11, start="In a small tower in Hearthglen, Western Plaguelands. Mobs are L58-61e plus many easier" },
		["Axe Specialization"] = { rune="Rune of Axe Specialization", phase=4, spellID=442876, level=55, icon="R", slot=11,
				start="Book is inside the Blackrock Stronghold in the Burning Steppes. Orc mobs are (L55-58)" },
		["Dagger Specialization"] = { rune="Rune of Dagger Specialization", phase=4, spellID=442887, level=58, icon="R",
				slot=11, start="Far south west Silithus in a tent in a Twilight Outpost. Twilight mobs (L58-60)" },
		["Defense Specialization"] = { rune="Rune of Defense Specialization", phase=4, spellID=459312, level=55, icon="R",
				slot=11, start="Near the (real) Blackrock Spire entrance in Blackrock Mountain (L53-55e)" },
		["Feral Combat Specialization"] = { rune="Rune of Feral Combat Specialization", phase=4, spellID=453622, level=57,
				icon="R", slot=11, start="Far north of Winterspring at Frostsaber Rock (L55-60). Book is easy to see" },
		["Fire Specialization"] = { rune="Rune of Fire Specialization", phase=4, spellID=442894, level=50, icon="R", slot=11,
				start="In the Slag Pit, south of Thorium Gorge in the Searing Gorge (L48-50e)" },
		["Fist Weapon Specialization"] = { rune="Rune of Fist Weapon Specialization", phase=4, spellID=442890, level=57,
				icon="R", slot=11, start="Central Silithus, south-west of Cenarion Hold (L58-60)" },
		["Frost Specialization"] = { rune="Rune of Frost Specialization", phase=4, spellID=442895, level=56, icon="R", slot=11,
				start="Southern Winterspring @ a ransacked camp site, off the main path (L56-59)" },
		["Holy Specialization"] = { rune="Rune of Holy Specialization", phase=4, spellID=442898, level=58, icon="R", slot=11,
				start="The book is inside a large chapel @ Tyr's Hand, Eastern Plaguelands (L53-55e)" },
		["Mace Specialization"] = { rune="Rune of Mace Specialization", phase=4, spellID=442881, level=60, icon="R", slot=11,
				start="Grim Batol, far eastern Wetlands (L58-62e). Ton of mobs, long walk/ride. See my tip" },
		["Nature Specialization"] = { rune="Rune of Nature Specialization", phase=4, spellID=442896, level=53, icon="R",
				slot=11, start="Felpaw Village, far north-east corner of Felwood (L53-56)" },
		["Pole Weapon Specialization"] = { rune="Rune of Pole Weapon Specialization", phase=4, spellID=442892, level=52,
				icon="R", slot=11, start="In the Temple of Arkkoran @ a north-east peninsular in Azshara (L53-55)" },
		["Ranged Weapon Specialization"] = { rune="Rune of Ranged Weapon Specialization", phase=4, spellID=442891, level=60,
				icon="R", slot=11, start="Marris Stead in far western Eastern Plaguelands. (L62e) but Horde safe" },
		["Shadow Specialization"] = { rune="Rune of Shadow Specialization", phase=4, spellID=442897, level=57, icon="R",
				slot=11, start="Behind the large altar in the Tainted Scar, south-west Blasted Lands (L60)" },
		["Sword Specialization"] = { rune="Rune of Sword Specialization", phase=4, spellID=442813, level=57, icon="R", slot=11,
				start="In the Master's Cellar, underneath Karazhan in Deadwind Pass (L58-60)" },
		-- Phase 5
		["Meditation Specialization"] = { rune="Rune of Meditation Specialization", phase=5, spellID=468762, level=25, icon="R",
				slot=11, start="In a building in the Shimmering Flats, Thousand Needles" },
		["Healing Specialization"] = { rune="Rune of Healing Specialization", phase=5, spellID=468758, level=30, icon="R",
				slot=11, start="The book is in Faldir's Cove, Arathi Highlands" },
	},
	
	["DRUID"] = {
		-- Phase 1
		["Fury of Stormrage"]={ rune="Lunar Idol", phase=1, spellID=414799, level=2, icon=1, slot=5,
				start="Grellkin mobs, Shadowglen (A). Chest in Brambleblade Ravine, The Barrens (H)" },
		["Living Seed"]={ rune="Rune of Natural Potential", phase=1, spellID=414677, level=2, icon=2, slot=5,
				start="Gather Glade Flowers from all over Teldrassil (A); Gather Prairie Flowers from all over Mulgore (H)" },
		["Sunfire"]={ rune="Rune of The Sun", phase=1, spellID=414684, level=4, icon=3, slot=10,
				start="White Lunar Stones: south-east Teldrassil (A); south-west Mulgore (H)" },
		["Lifebloom"]={ rune="Rune of Life", phase=1, spellID=408124, level=7, icon=4, slot=7,
				start=ns.twoPlusHealers .."Oracle Glade, Teldrassil (A); near northern exit, Venture Co cave, Mulgore (H)" },
		["Mangle"]={ rune="Idol of Ursine Rage", phase=1, spellID=409828, level=10, icon=5, slot=10,
				start="Rageclaw, near Ban'ethil Barrow Den, Teldrassil; Flatland Prowler mobs, north and north-east of "
				.."Mulgore (H)" },
		["Wild Strikes"]={ rune="Idol of the Wild", phase=1, spellID=407977, level=14, icon=6, slot=5,
				start="Grimtotem mobs, south-east entrance/exit of Stonetalon Mountains" },
		["Lacerate"]={ rune="Rune of Lacerate", phase=1, spellID=414644, level=15, icon=7, slot=7,
				start="Khara Deepwater, The Loch, Loch Modan (A) "
					.."Crab Treats from coastal Furlbogs, Darkshore; Abandoned Snapjaw Nest, Forgotten Pools, The Barrens" },
		["Skull Bash"]={ rune="Rune of Skull Bash", phase=1, spellID=410176, level=15, icon=8, slot=10,
				start=ns.supplyFactionStart },
		["Starsurge"]={ rune="Rune of the Stars", phase=1, spellID=417157, level=20, icon=9, slot=7,
				start="Speak to Grugimdern, under a bridge, north-east Wetlands" },
		["Savage Roar"]={ rune="Ferocious Idol", phase=1, spellID=407988, level=20, icon=10, slot=7,
				start="Den Mother, west of Bashal'aran, Darkshore; Kolkar's Booty in centaur camps, The Barrens (H)" },
		["Survival of the Fittest"]={ rune="Rune of Survival", phase=1, spellID=411115, level=20, icon=11, slot=5,
				start="Grizzby @ Ratchet, The Barrens" },
		["Wild Growth"]={ rune="Rune of Wild Growth", phase=1, spellID=408120, level=25, icon=12, slot=10,
				start="Speak to Loganaar, Nighthaven, Moonglade" },
		-- Phase 2
		["Survival Instincts"]={ rune="Rune of Instinct", phase=2, spellID=408024, level=27, icon=13, slot=8,
				start="Go to Amaryllis Webb in the Swamp of Sorrows to obtain a catching kit. No killing" },
		["Dreamstate"]={ rune="Rune of the Dreamer", phase=2, spellID=408258, level=27, icon=14, slot=8,
				start="Kill Kolkar Centaurs in Desolace for a Desiccated Seed Pod" },
		["Berserk"]={ rune="Idol of the Heckler", phase=2, spellID=417141, level=28, icon=15, slot=6,
				start="Use Challenging Roar on the Beastly Effigy in Thousand Needles" },
		["Eclipse"]={ rune="Rune of Eclipse", phase=2, spellID=408248, level=30, icon=16, slot=6,
				start="Go to a pillaged campsite in Desolace" },
		["Nourish"]={ rune="Rune of Nourishing", phase=2, spellID=408247, level=35, icon=17, slot=6,
				start="Kill a Rotting Ancient in Dustwallow Marsh to obtain a Rotten Seed / short quest chain" },
		["King of the Jungle"]={ rune="Rune of the Jungle King", phase=2, spellID=417046, level=40, icon=18, slot=8,
				start=ns.dalaranSpeakTo },
		-- Phase 2 Skill Books
		["Deeper Wilds"]={ skillBook="Leaflet of Deeper Wilds", spellID=436956, level=25, start= ns.purchaseSkillBook },
		["Enhanced Restoration"]={ skillBook="Leaflet of Enhanced Restoration", spellID=417123, level=25,
				start= ns.purchaseSkillBook },
		["Revive"]={ skillBook="Leaflet of Revive", spellID=437138, level=25, start= ns.purchaseSkillBook },
		-- Phase 3
		["Gore"]={ rune="Rune of Bloodshed", phase=3, spellID=417145, level="23/37/47", icon=19, slot=1,
				start=ns.emeraldWardens },
		["Gale Winds"]={ rune="Rune of the Windstorm", phase=3, spellID=417135, level=40, icon=20, slot=1,
				start="Loot the rune from Namida Grimtotem (L43e), Windtotem Compound, Feralas. West of Camp Mojache" },
		["Elune's Fires"]={ rune="Rune of the Moon Goddess", phase=3, spellID=414719, level=44, icon=21, slot=9,
				start="Go to western Azshara and locate a Traveller's Knapsack, which is inside a temple" },
		["Improved Barkskin"]={ rune="Idol of the Raging Shambler", phase=3, spellID=431388, level=44, icon=22, slot=1,
				start="Learn Barkskin (L44). Kill Thistleshrub Dew Collectors (L47-48) in their Valley in south-west Tanaris" },
		["Efflorescence"]={ rune="Rune of Efflorescence", phase=3, spellID=417149, level=45, icon=23, slot=9,
				start="Go to the far south of Feralas and speak to Tyrisius, who is in a tower" },
		["Improved Frenzied Regeneration"]={ rune="Rune of Primal Energy", phase=3, spellID=431389, level=50, icon=24, slot=9,
				start=ns.wildGodsStart },
		-- Phase 4
		["Improved Swipe"]={ rune="Idol of the Huntress", phase=4, spellID=439510, level=48, icon=25, slot=15,
				start="Go to Un'Goro Crater and kill Venomhide Ravasaurs (L50-51)" },
		["Starfall"]={ rune="Rune of the Falling Star", phase=4, spellID=439748, level=51, icon=26, slot=15,
				start="Defeat Arcterrus (L59e) in The Hidden Grove, Winterspring" },
		["Tree of Life"]={ rune="Rune of the World Tree", phase=4, spellID=439733, level=51, icon=27, slot=15,
				start="Talk to a Vengeful Wisp in Felwood and follow my guide" },
		
		spells={ "Fury of Stormrage", "Living Seed", "Sunfire", "Lifebloom", "Mangle", "Wild Strikes",
				"Lacerate", "Skull Bash", "Starsurge", "Savage Roar", "Survival of the Fittest",
				"Wild Growth", "Survival Instincts", "Dreamstate", "Berserk", "Eclipse", "Nourish",
				"King of the Jungle", "Gore", "Gale Winds", "Elune's Fires", "Improved Barkskin",
				"Efflorescence", "Improved Frenzied Regeneration", "Improved Swipe", "Starfall", 
				"Tree of Life" },
		skillBooks={ "Deeper Wilds", "Enhanced Restoration", "Revive" },
		rings={ "Arcane Specialization", "Dagger Specialization", "Defense Specialization",
				"Feral Combat Specialization", "Fist Weapon Specialization", "Mace Specialization",
				"Nature Specialization", "Pole Weapon Specialization", "Healing Specialization",
				"Meditation Specialization", }
	},

	["HUNTER"] = {
		-- Phase 1
		["Chimera Shot"]={ rune="Rune of Chimera", phase=1, spellID=409433, level=2, icon=1, slot=10,
				start="Thorgas Grimson, Anvilmar, Coldridge Valley; Ayanna Everstride, Aldrassil, Shadowglen (A). "
					.."Jen'Shan, Valley of the Trials; Lanka Farshot, Red Cloud Mesa (H)" },
		["Explosive Shot"]={ rune="Rune of Explosive Shot", phase=1, spellID=409552, level=5, icon=2, slot=10,
				start="Various Elites/Rares in Dun Morogh (A) and Mulgore (H); Rageclaw, in the Ban'ethil Barrow Den, "
				.."Teldrassil (A)" },
		["Master Marksman"]={ rune="Rune of Marksmanshi", phase=1, spellID=409428, level=6, icon=3, slot=5,
				start="Rustling Bush: off the path towards Oracle Grove, Teldrassil; south of Brewnall Village, Dun Morogh (A) "
					.."West from Razor Hill, veering south; east of Bloodhoof Village, near the lake, Mulgore (H)" },
		["Flanking Strike"]={ rune="Rune of Flanking", phase=1, spellID=415320, level=8, icon=4, slot=7,
				start="Jorul, east of Brewnall Village, near the cave, Dun Morogh; Mowgh, northern Teldrassil, opposite the "
				.."Glade (A) Raul, northern Echo Isles, Durotar; Mokwa, north-west of Bloodhoof Village, Mulgore" },
		["Carve"]={ rune="Rune of Carve", phase=1, spellID=425711, level=10, icon=5, slot=10,
				start="Tame animals with reagent: Amberstill Ranch, Dun Morogh; Relaeron, Darnassus (A) "
					.."Razzil, Razor Hill, Durotar; Takoda Sunmane, Bloodhoof Village, Mulgore (H)" },
		["Beast Mastery"]={ rune="Rune of Beast Mastery", phase=1, spellID=409368, level=15, icon=6, slot=5,
				start="Furbolg camp, Darkshore; Farstrider Lodge, Loch Modan; Silverspur, north of Gold Coast Quarry, Westfall "
				.."(A) Ferocious Grizzled Bear, northern Silverpine Forest; Patrolling Cheetah, north of Taurajo, The "
				.."Barrens (H)" },
		["Serpent Spread"]={ rune="Rune of Serpent Spread", phase=1, spellID=425738, level=15, icon=7, slot=7,
				start=ns.supplyFactionStart },
		["Kill Shot"]={ rune="Rune of Kill Command", phase=1, spellID=409974, level=20, icon=8, slot=7,
				start="Jixo Madrocket, near Sun Rock Retreat, Stonetalon Mountains (A/H)" },
		["Sniper Training"]={ rune="Rune of the Sniper", phase=1, spellID=415399, level=20, icon=9, slot=7,
				start="Gnarled Harpoon, west of the Ruins of Mathystra, Darkshore; Kackle, in The Loch (south), Loch Modan; "
					.."Defias Scout, Sentinel Hill, Westfall (A); Kilxx, Ratchet, The Barrens (H)" },		
		["Lone Wolf"]={ rune="Rune of Lone wolf", phase=1, spellID=415370, level=20, icon=10, slot=5,
				start="Grizzby @ Ratchet, The Barrens" },
		["Cobra Slayer"]={ rune="Rune of Cobra Slayer", phase=1, spellID=409960, level=25, icon=11, slot=10,
				start="Carrodin, rear of the Thelgen Rock Cave, Wetlands (A/H)" },
		["Cobra Strikes"]={ rune="Rune of Cobra Strikes", phase=1, spellID=425713, level=25, icon=12, slot=5,
				start="Zixil, wanders between Tarren Mill and Southshore, Hillsbrad Foothills (A/H)" },
		-- Phase 2
		["Expose Weaknesss"]={ rune="Rune of Expose Weakness", phase=2, spellID=409504, level=26, icon=13, slot=6,
				start="Kill Ogres (L36-43) and Troggs (L39-41) in the Badlands" },
		["Wyvern Strike"]={ rune="Rune of Invigoration", phase=2, spellID=458436, level=27, icon=14, slot=8,
				start="Go to Amaryllis Webb in the Swamp of Sorrows to obtain a catching kit. No killing" },
		["Trap Launcher"]={ rune="Rune of the Trapper", phase=2, spellID=409541, level=30, icon=15, slot=8,
				start="Go to a pillaged campsite in Desolace" },
		["Dual Wield Specialization"]={ rune="Rune of the Scrapper", phase=2, spellID=409687, level=32, icon=16, slot=8,
				start="Go to a location south-west from Hemet Nesingwary's camp in Stranglethorn Vale" },
		["Steady Shot"]={ rune="Rune of Steady Shot", phase=2, spellID=437123, level=33, icon=17, slot=6,
				start="Kill Needletooth (L35). Witherbark Village lake, Arathi Highlands" },
		["Melee Specialist"]={ rune="Rune of Close Combat", phase=2, spellID=415352, level=40, icon=18, slot=6,
				start=ns.dalaranSpeakTo },
		-- Phase 2 Skill Books
		["Aspect of the Viper"]={ skillBook="Treatise on Aspect of the Viper", spellID=415423, level=25,
				start= ns.purchaseSkillBook },
		-- Phase 3
		["T.N.T."]={ rune="Rune of Detonation", phase=3, spellID=428717, level="23/37/47", icon=19, slot=9,
				start=ns.emeraldWardens },
		["Raptor Fury"]={ rune="Rune of the Raptor", phase=3, spellID=415358, level=40, icon=20, slot=9,
				start="Drops off Zopilote (L43e), just south of Gadgetzan, across all of northern Tanaris" },
		["Catlike Reflexes"]={ rune="Rune of the Jungle Cat", phase=3, spellID=415428, level=40, icon=21, slot=1,
				start="At the back of the Yeti cave in Feralas. Feed a Groddoc Infant Tel'Abim Banana or Soft Banana "
				.."Bread. Escort" },
		["Rapid Killing"]={ rune="Rune of the Ravenous", phase=3, spellID=415405, level=45, icon=22, slot=1,
				start="Explore inside the Firewatch Cave, far north-western corner of the Searing Gorge" },
		["Focus Fire"]={ rune="Rune of Focused Fire", phase=3, spellID=428726, level=45, icon=23, slot=9,
				start="Loot a Stormcrow Egg from the Stormcrow Nest in the Searing Gorge. Then kill the Enraged Stormcrow" },
		["Lock and Load"]={ rune="Rune of Firepower", phase=3, spellID=415413, level=50, icon=24, slot=9,
				start=ns.wildGodsStart },
		-- Phase 4
		["Improved Volley"]={ rune="Rune of Shelling", phase=4, spellID=440520, level=56, icon=25, slot=15,
				start="Kill Twilight mobs in Silithus (L58-61) and loot a Busted Gizmo" },
		["Resourcefulness"]={ rune="Rune of the Resourceful", phase=4, spellID=440529, level=58, icon=26, slot=15,
				start="Kill slimes (L54-56) and Plagued Swine (L60) in the Eastern PLaguelands and follow my guide" },
		["Hit and Run"]={ rune="Rune of the Guerrilla", phase=4, spellID=440533, level=58, icon=27, slot=15,
				start="Kill an Escaped Core Hound (L60) in the Burning Steppes, nothing more!" },
		-- Phase 4 Skill Books (was it 4? Def not 1 or 2)
		["Heart of the Lion"]={ skillBook="Treatise on the Heart of the Lion", spellID=409580, level=10,
				start= ns.purchaseSkillBook },

		spells={ "Chimera Shot", "Explosive Shot", "Master Marksman", "Flanking Strike", "Carve",
				"Beast Mastery", "Serpent Spread", "Kill Shot", "Sniper Training", "Lone Wolf",
				"Cobra Slayer", "Cobra Strikes", "Expose Weaknesss", "Wyvern Strike", "Trap Launcher",
				"Dual Wield Specialization", "Steady Shot", "Melee Specialist", "T.N.T.", "Raptor Fury",
				"Catlike Reflexes", "Rapid Killing", "Focus Fire", "Lock and Load", "Improved Volley",
				"Resourcefulness", "Hit and Run", },
		skillBooks={ "Heart of the Lion", "Aspect of the Viper", },
		rings={ "Arcane Specialization", "Axe Specialization", "Dagger Specialization", "Fire Specialization", 
				"Fist Weapon Specialization", "Frost Specialization", "Nature Specialization",
				"Pole Weapon Specialization", "Ranged Weapon Specialization", "Sword Specialization",
				"Meditation Specialization", }
	},
								
	["MAGE"] = {
		-- Phase 1
		["Ice Lance"]={ rune="Spell Notes: Ice Lance (CALE ENCI)", phase=1, spellID=400640, level=2, icon=1, slot=10,
				start="Marryk Nurrbit, back of Anvilmar, Dun Morogh; Khelden Bremen, Northshire Abbey, Elwynn Forest (A) "
					.."Mai'ah, Valley of Trials, Durotar; Isabella, Deathknell, Tirisfal Glades (H)" },
		["Living Flame"]={ rune="Spell Notes: Living Flame (MILEGIN VALF)", phase=1, spellID=401556, level=8, icon=2, slot=7,
				start="Kobold mobs near Jasperlode Mine, Elwynn Forest; Frostmane mobs north-west of Kharanos, Dun Morogh (A) "
					.."Burning Blade mobs, Skull Rock, Durotar; Scarlet mobs, Solliden Farm, Tirisfal Glades (H)" },
		["Enlightenment"]={ rune="Spell Notes: Enlightenment", phase=1, spellID=412324, level=8, icon=3, slot=5,
				start="Any critter in Elwynn Forest but near Ridgepoint Tower is suggested. "
					.."Or Odd Melons you see around any farm in Tirisfal Glades" },
		["Burnout"]={ rune="Spell Notes: Burnout", phase=1, spellID=412286, level=9, icon=4, slot=5,
				start="Frozen: Trogg, Gol'bolar quarry, Dun Morogh; Murloc, Stonecairn Lake, Elwynn Forest (A) "
					.."Makrura, east of Razor Hill, Durotar; Murloc, north-west of Brightwater Lake, Tirisfal Glades (H)" },
		["Fingers of Frost"]={ rune="Spell Notes: Fingers of Frost (RING SEFF OSTROF)", phase=1, spellID=400647, level=10,
				icon=5, slot=5, start="Several elite/rares in Dun Morogh; Hogger Elwynn Forest (A), "
					.."Zalazane, Echo Isles, Duratar; Gazz'uz, cave near Orgrimmar, Durotar; Gillgar, Tirisfal Glades (H)" },
		["Living Bomb"]={ rune="Spell Notes: BIVOLG NIMB", phase=1, spellID=400613, level=12, icon=6, slot=10,
				start="Stonesplitter caves and northern lake, Loch Modan (A/H); Extra reward from a small quest chain. "
				.."Begin: \"A Talking Head\" mob drop on Fenris Isle, Silverpine (H)" },
		["Arcane Surge"]={ rune="Spell Notes: Arcane Surge", phase=1, spellID=425124, level=15, icon=7, slot=7,
				start=ns.supplyFactionStart },
		["Regeneration"]={ rune="Spell Notes: Regeneration (TENGI RONEERA)", phase=1, spellID=401417, level=15, icon=8, slot=5,
				start="Stack of books in the south hut of the northern island, The Loch, Loch Modan; Defias Pillager, Westfall "
				.."(A) Dalaran Apprentice, Silverpine Forest; Kolkar's Booty in centaur camps, The Barrens (H)" },
		["Arcane Blast"]={ rune="Spell Notes: Arcane Blast", phase=1, spellID=400574, level=18, icon=9, slot=10,
				start="Naga Manuscript from Wrathtail Naga, Zoram Strand, north coast of Ashenvale (A/H)" },
		["Icy Veins"]={ rune="Icy Veins", phase=1, spellID=425121, level=20, icon=10, slot=7,
				start="Collect 10" ..ns.mage.bookStart },
		["Rewind Time"]={ rune="Spell Notes: Rewind Time (TERWEM DINI)", phase=1, spellID=401462, level=20, icon=11, slot=9,
				start="Grizzby @ Ratchet, The Barrens" },
		["Mass Regeneration"]={ rune="Spell Notes: Mass Regeneration", phase=1, spellID=412510, level=25, icon=12, slot=7,
				start="Crypts in the Raven Hill Cemetary, Duskwood" },
		-- Phase 2
		["Chronostatic Preservation"]={ rune="Spell Notes: Chronostatic Preservation", phase=2, spellID=436516, level=26, icon=13,
				slot=8, start="Three separate mob drops in Thousand Needles. Requires three to four mages" },
		["Brain Freeze"]={ rune="Spell Notes: Brain Freeze", phase=2, spellID=400731, level=30, icon=14, slot=8,
				start="Go to a pillaged campsite in Desolace" },
		["Hot Streak"]={ rune="Spell Notes: Hot Streak", phase=2, spellID=400624, level=33, icon=15, slot=1,
				start="Kill the Ancient Fire Elemental (L34/35) in the Alterac Mountains" },
		["Spell Power"]={ rune="Spell Power", phase=2, spellID=412322, level=33, icon=16, slot=8, 
				start="Collect 20 books across Azeroth, too numerous to list here, but... "
					.."see my detailed guide at: Garion Wendell in the Stormwind Mage Tower "
					.."portal room (A) or Owen Thadd in the Mages Quarter of Undercity (H)" },
		["Frostfire Bolt"]={ rune="Spell Notes: Frostfire Bolt (TROFF IRESTBOL)", phase=2, spellID=401502, level=37, icon=17,
				slot=6, start="Drops from Skullsplitter Mystics, Stranglethorn Vale" },
		["Spellfrost Bolt"]={ rune="Spell Notes: Spellfrost Bolt (PELFRB STOLLOTS)", phase=2, spellID=412532, level=37, icon=18,
				slot=6, start="Drops from Skullsplitter Mystics, Stranglethorn Vale" },
		["Missile Barrage"]={ rune="Spell Notes: Missile Barrage", phase=2, spellID=400588, level=40, icon=19, slot=6,
				start=ns.dalaranSpeakTo },
		-- Phase 2 Skill Books
		["Expanded Intellect"]={ skillBook="Tome of Expanded Intellect", spellID=436949, level=25, start=ns.purchaseSkillBook },
		-- Phase 3
		["Molten Armor"]={ rune="Spell Notes: Molten Armor", phase=3, spellID=428741, level="23/37/47", icon=20, slot=9,
				start=ns.emeraldWardens },
		["Balefire Bolt"]={ rune="Spell Notes: Balefire Bolt", phase=3, spellID=428878, level=34, icon=21, slot=9,
				start="Obtain a Scroll of Spatial Mending (AH). Locate a Fel Portal and close it." ..ns.felPortals ..ns.getCGM },
		["Temporal Anomaly"]={ rune="Temporal Anomaly", phase=3, spellID=428885, level=42, icon=22, slot=1,
				start="Garion Wendell (A) or Owen Thadd (H), your friendly librarian, will have a fetch quest at L42." },
		["Deep Freeze"]={ rune="Deep Freeze", phase=3, spellID=428739, level=45, icon=23, slot=1,
				start="Collect 25" ..ns.mage.bookStart  },
		["Displacement"]={ rune="Scroll of Controlled Displacement", phase=3, spellID=428861, level=47, icon=24, slot=9,
				start=ns.leylineSummary },
		["Advanced Warding"]={ rune="Spell Notes: Advanced Warding", phase=3, spellID=428738, level=50, icon=25, slot=1,
				start=ns.wildGodsStart },
		-- Phase 4
		["Arcane Barrage"]={ rune="Arcane Barrage", phase=4, spellID=400610, level=50, icon=26, slot=15,
				start="Collect 35" ..ns.mage.bookStart },
		["Overheat"]={ rune="Spell Notes: Overheat", phase=4, spellID=401737, level=45, icon=27, slot=15,
				start="Look for a Novice Frost Mage (L50-52) in each of four locations in the Western Plaguelands" },
		["Frozen Orb"]={ rune="Spell Notes: Frozen Orb", phase=4, spellID=440802, level=51, icon=28, slot=15,
				start="Go to Felwood and kill Deadwood Furbolg mobs (L53-55)" },

		spells={ "Ice Lance", "Living Flame", "Enlightenment", "Burnout", "Fingers of Frost", "Living Bomb",
				"Arcane Surge", "Regeneration", "Arcane Blast", "Icy Veins", "Rewind Time", "Mass Regeneration",
				"Chronostatic Preservation", "Brain Freeze", "Hot Streak", "Spell Power", "Frostfire Bolt",
				"Spellfrost Bolt", "Missile Barrage", "Molten Armor", "Balefire Bolt", "Temporal Anomaly",
				"Deep Freeze", "Displacement", "Advanced Warding", "Arcane Barrage", "Overheat", "Frozen Orb", },
		skillBooks={ "Expanded Intellect" },
		rings={ "Arcane Specialization", "Dagger Specialization", "Fire Specialization", "Frost Specialization",
				"Pole Weapon Specialization", "Sword Specialization", "Healing Specialization",
				"Meditation Specialization", }
	},
					
	["PALADIN"] = {
		-- Phase 1
		["Crusader Strike"]={ rune="Libram of Judgement", phase=1, spellID=407676, level=4, icon=1, slot=10,
				start="Bromos Grummner, Anvilmar, Dun Morogh; Brother Sammuel, Northshire Abbey, Elwynn Forest" },
		["Inspiration Exemplar"]={ rune="Rune of Inspiration", phase=1, spellID=407880, level=5, icon=2, slot=7,
				start=ns.twoPlusHealers .."Wendigo Cave, Dun Morogh; east of Jerod's Landing, Elwynn Forest" },
		["Rebuke"]={ rune="Rune of Rebuke", phase=1, spellID=425609, level=8, icon=3, slot=7,
				start="Liv Bradford, The Park in Stormwind City" },
		["Aegis"]={ rune="Rune of Aegis", phase=1, spellID=425589, level=8, icon=4, slot=5,
				start="Entrance to Gnomeregan (don't go in), Dun Morogh; deep inside the Jasperloade Mine, Elwynn Forest" },
--		["Horn of Lordaeron"]={ rune="Libram of Blessings", phase=1, spellID=425600, level=10, icon=5, slot=5,
--				start="On a bench in Thelsamar Tavern, Loch Modan; Undying Laborer, Jangalode Mine, Westfall" },
		["Hallowed Ground"]={ rune="Libram of Blessings", phase=1, spellID=458287, level=10, icon=5, slot=5,
				start="On a bench in Thelsamar Tavern, Loch Modan; Undying Laborer, Jangalode Mine, Westfall" },
		["Divine Light"]={ rune="Rune of Divine Light", phase=1, spellID=458856, level=10, icon=6, slot=5,
				start="Brother Romulus, Stormwind Cathedral" },
		["Beacon of Light"]={ rune="Rune of Beckoning Light", phase=1, spellID=407613, level=15, icon=7, slot=10,
				start=ns.supplyFactionStart },
		["Hand of Reckoning"]={ rune="Libram of Justice", phase=1, spellID=407631, level=15, icon=8, slot=10,
				start="Far south cave in Stonesplitter Valley, Loch Modan; Leprithus and Defias Drone, Westfall" },
		["Divine Sacrifice"]={ rune="Rune of Sacrifice", phase=1, spellID=462853, level=20, icon=9, slot=7,
				start="Grizzby @ Ratchet, The Barrens" },
		["Avenger's Shield"]={ rune="Rune of the Avenger", phase=1, spellID=407669, level=23, icon=10, slot=7,
				start="Dro'zem the Blasphemous, Redridge Mountians. Well south of the ",
			"Tower of Althalaxx, northern Darkshore" },
		["Divine Storm"]={ rune="Divine Storm Rune", phase=1, spellID=407778, level=25, icon=11, slot=5,
				start="Top of the Tower of Althalaxx, northern Darkshore" },
		["Aura Mastery"]={ rune="Libram of Banishment", phase=1, spellID=407624, level=25, icon=12, slot=7,
				start="Defias mobs on the souther border of Duskwood" },
		-- Phase 2
		["Sacred Shield"]={ rune="Libram of Deliverance", phase=2, spellID=412019, level=18, icon=13, slot=8,
				start="Loot the Libram of Deliverance in Nigel's Point, Desolace" },
		["Guarded by the Light"]={ rune="Rune of the Guardian", phase=2, spellID=415059, level=30, icon=14, slot=8,
				start="Loot the Dormant Holy Rune in the Alterac Mountains. Later, requires a helper" },
		["The Art of War"]={ rune="Rune of Warfare", phase=2, spellID=426157, level=30, icon=15, slot=8,
				start="Go to a pillaged campsite in Desolace" },
--		["Enlightened Judgements"]={ rune="Rune of Piety", phase=2, spellID=426173, level=34, icon=16, slot=6, 
--				start="Farm mobs in Arathi Highlands (wetlands) for three types of beads. Purify and then combine the beads" },
		["Malleable Protection"]={ rune="Rune of Piety", phase=2, spellID=458318, level=34, icon=16, slot=6, 
				start="Farm mobs in Arathi Highlands (wetlands) for three types of beads. Purify and then combine the beads" },
		["Infusion of Light"]={ rune="Rune of Infusions", phase=2, spellID=426065, level=40, icon=17, slot=6,
				start=ns.dalaranSpeakTo },
		["Sheath of Light"]={ rune="Sheath of Light", phase=2, spellID=426158, level=40, icon=18, slot=6,
				start="Find a Broken Hammer in Mannoroc Cove in Desolace to commence a quest chain. Requires Cathedral "
				.."wing access to SM" },
		-- Phase 2 Skill Books
		["Enhanced Blessings"]={ skillBook="Testament of Enhanced Blessings", spellID=435984, level=25,
				start=ns.purchaseSkillBook },
		-- Phase 3
		["Improved Hammer of Wrath"]={ rune="Rune of the Hammer", phase=3, spellID=429152, level="23/37/47", icon=19, slot=9,
				start=ns.emeraldWardens },
		["Wrath"]={ rune="Rune of Wrath", phase=3, spellID=429139, level=42, icon=20, slot=1,
				start="With Sense Undead learnt, go to north of Quel'Danil Lodge, The Hinterlands, between 9pm and 3am "
					.."server time. Kill a Vengeful Spirit (L45). Go to the Mystic Ward in Ironforge for the turn in" },
		["Improved Sanctuary"]={ rune="Improved Sanctuary", phase=3, spellID=429133, level=40, icon=21, slot=1,
				start=ns.wildGodsStart },
		["Fanaticism"]={ rune="Fanaticism", phase=3, spellID=429142, level=44, icon=22, slot=1,
				start="Learn the Sheath of Light rune prior. Speak to Aeonas the Vindicated in the SW Cathedral. Must be L44" },
		["Purifying Power"]={ rune="Rune of Purifying Power", phase=3, spellID=429144, level=47, icon=23, slot=9,
				start=ns.leylineSummary ..ns.leylineSummaryExtra },		
		["Hammer of the Righteous"]={ rune="Hammer of the Righteous", phase=3, spellID=409922, level=50, icon=24, slot=9,
				start="Learn Fanaticism prior. Speak to Aeonas the Vindicated at the Bloodvenom Falls, Felwood. Must be L44. "
					.."Along the way you'll go to the Grim Guzzler, inside Blackrock Depths, and Maraudon (group for that)" },
		["Light's Grace"]={ rune="Rune of Grace", phase=3, spellID=428909, level=50, icon=25, slot=9,
				start="Head to the Lower Wilds of Feralas, south east of Camp Mojache." },
		-- Phase 4
		["Righteous Vengeance"]={ rune="Righteous Vengeance", phase=4, spellID=440672, level=51, icon=26, slot=15,
				start="Speak to the Fallen Knight, north of Dalson's Field in the Western Plaguelands (L52-54)" },
		["Shield of Righteousness"]={ rune="Shield of Righteousness", phase=4, spellID=440658, level=54, icon=27, slot=15,
				start="Kill the Slack-Jawed Ghoul, near the main path east-west in the Eastern Plaguelands. See the pin "
				.."guides (L57)" },
		["Shock and Awe"]={ rune="Shock and Awe", phase=4, spellID=462834, level=60, icon=28, slot=15,
				start="This rune follows after Righteous Vengeance. It's a linear chain. With a bonus Skill Book too! (60e)" },
		-- Phase 4 Skill Books
		["Avenging Wrath"]={ skillBook="Testament of Avenging Wrath", spellID=407788, level=60,
				start="NOT purchasable. You receive this as a surprise bonus outcome for the Shock and Awe rune (60e)" },
		["Exorcist"]={ skillBook="Libram of Banishment", spellID=415076, level=10, start=ns.purchaseSkillBook },
		["Seal of Martyrdom"]={ skillBook="Rune of Martyrdom", spellID=407798, level=10, start=ns.purchaseSkillBook },

		spells={ "Crusader Strike", "Inspiration Exemplar", "Rebuke", "Aegis", "Hallowed Ground",
			"Divine Light", "Beacon of Light", "Hand of Reckoning", "Divine Sacrifice",
			"Avenger's Shield", "Divine Storm", "Aura Mastery", "Sacred Shield", "Guarded by the Light",
			"The Art of War", "Malleable Protection", "Infusion of Light", "Sheath of Light",
			"Improved Hammer of Wrath", "Wrath", "Improved Sanctuary", "Fanaticism", "Purifying Power",
			"Hammer of the Righteous", "Light's Grace", "Righteous Vengeance", "Shield of Righteousness",
			"Shock and Awe" },
		skillBooks={ "Exorcist", "Seal of Martyrdom", "Enhanced Blessings", "Avenging Wrath", },
		rings={ "Axe Specialization", "Defense Specialization", "Holy Specialization", "Mace Specialization",
			"Pole Weapon Specialization", "Sword Specialization", "Healing Specialization",
			"Meditation Specialization", },
	},

	["PRIEST"] = {
		-- Phase 1
		["Penance"]={ rune="Memory of a Troubled Acolyte", phase=1, spellID=402174, level=2, icon=1, slot=10,
				start= "Branstock Khalder, Anvilmar, Coldridge Valley; Priestess Anetta, Northshire Abbey; Shanda, "
				.."Shadowglen (A) Ken'Jai, Valley of Trials; Dark Cleric Duesten, Deathknell" },
		["Prayer of Mending"]={ rune="Reciprocal Epiphany", phase=1, spellID=401859, level=7, icon=2, slot=7,
				start=ns.twoPlusHealers
				.."Grizzled Den, Dun Morogh; east of Jarod's Landing, southern Elwynn Forest; Oracle Glade, Teldrassil (A) "
				.."South of and outside of the Valley of Trials, Durotar; near northern exit, Venture Co cave, Mulgore (H)" },
		["Void Plague"]={ rune="Memory of a Dark Purpose", phase=1, spellID=425204, level=7, icon=3, slot=5,
				start="Leper Gnome/Gibblewit near Gnomeregan; Goldtooth in Elwynn Forest; Gnarlpine Cache, Ban'ethil Barrow "
				.."Den, Teldrassil (A) Kul Tiras mob, east of Razor Hill, Durotar; Gillgar, north-west from Deathknell, "
				.."Tirisfal GladeS (H)" },
		["Homunculi"]={ rune="Prophecy of a Desecrated Citadel", phase=1, spellID=402799, level=8, icon=4, slot=7,
				start="Shimmer Ridge, Dun Morogh; Defias Rogue Wizard, Elwynn Forest; Rascal Sprite, Fel Rock Cave, Teldrassil "
					.."(A); Voodoo Troll, Echo Isle, Duratar; Scarlet mobs near Solliden Farmstead, Tirisfal Glades (H) "
					.."Needs two Meditations" },
		["Shared Pain"]={ rune="Memory of an Imprisoned Saviour", phase=1, spellID=401969, level=8, icon=5, slot=7,
				start="Defeat Captain Beld, far south-east Dun Morogh; Kobold mobs, mines, Elwynn Forest; Lord Melenas, "
				.."Teldrassil (A) Gazz'uz or Makasgar, Mulgore; Tirisfal Farmer mobs, Tirisfal Glades (H)" },
		["Mind Sear"]={ rune="Tenebrous Epiphany", phase=1, spellID=413259, level=15, icon=6, slot=10,
				start=ns.supplyFactionStart },
		["Twisted Faith"]={ rune="Memory of a Devout Champion", phase=1, spellID=425198, level=15, icon=7, slot=5,
				start="Naga mobs, Ruins of Mathystra, Darkshore; Silverstream Mine, Loch Modan; Gold Coast Quarry and "
				.."Jangolode Mine, Westfall (A). Wailing Spirit, southern Silverpine Forest; Razormane mobs, The Barrens (H)" },
		["Shadow Word: Death"]={ rune="Prophecy of a King's Demise", phase=1, spellID=401955, level=20, icon=8, slot=10,
				start="Orb, coast, Darkshore; Mo'grosh Stronghold, Loch Modan (A) "
					.."Thule Ravenclaw, Fenris Isle, Silverpine Forest; Desert Mirage, The Barrens (H) "
					.."Needs two Meditations" },
		["Serendipity"]={ rune="Harmonious Epiphany", phase=1, spellID=413248, level=20, icon=9, slot=5,
				start="Grizzby @ Ratchet, The Barrens" },
		["Power Word: Barrier"]={ rune="Prophecy of a City Enthralled", phase=1, spellID=425207, level=23, icon=10, slot=9,
				start="Blackrock Shadowcaster, Stone watch, Redridge Mountains (A/H). Needs two Meditations" },
		["Strength of Soul"]={ rune="Prophecy of Seven Visitors", phase=1, spellID=415739, level=23, icon=11, slot=5,
				start="Primal Insight from Thistlefur mobs, Ashenvale (A/H). Needs two Meditations" },
		["Circle of Healing"]={ rune="Prophecy of a Thousand Lights", phase=1, spellID=401946, level=25, icon=12, slot=10,
				start="Obtain Dark Insight from Defias mobs in Duskwood (A/H). Needs two Meditations" },
		-- Phase 2
		["Empowered Renew"]={ rune="Prophecy of the quickened Path", phase=2, spellID=425266, level=26, icon=13, slot=6,
				start="Farm Grimtotem mobs (L25-28) in Thousand Needles for the rune. Or else Crushridge Ogres (L34-36) "
				.."in Arathi" },
		["Mind Spike"]={ rune="Psychosophic Epiphany", phase=2, spellID=431655, level=30, icon=14, slot=6,
				start="Go to a pillaged campsite in Desolace" },
		["Renewed Hope"]={ rune="Unsettling Vision", phase=2, spellID=425280, level=32, icon=15, slot=6,
				start="Kill nagas in northern Desolace until the Unsettling Vision drops. Then activate it via Mind Control" },	
		["Pain Suppression"]={ rune="Memory of a Leader's Betrayal", phase=2, spellID=402004, level=35, icon=16, slot=8,
				start="look for \"Echos\" in Arathi, Dustwallow, SM graveyard, Swamp of Sorrows. Then complete a ritual in "
				.."the SM Library wing " },
		["Spirit of the Redeemer"]={ rune="Luminous Epiphany", phase=2, spellID=425284, level=40, icon=17, slot=8,
				start=ns.dalaranSpeakTo },
		["Dispersion"]={ rune="Prophecy of Imprisoned Malice", phase=2, spellID=425294, level=18, icon=18, slot=8,
				start="Officially you need a mage and rogue to help with tasks in Stranglethorn Vale. See that map also "
				.."for HACKS!" },
		-- Phase 2 Skill Books
		["Increased Fortitude"]={ skillBook="Scroll Increased Fortitude", spellID=436951, level=25,
				start=ns.purchaseSkillBook },
		["Shadowfiend"]={ skillBook="Scroll of Shadowfiend", spellID=401977, level=25, start=ns.purchaseSkillBook },
		-- Phase 3
		["Void Zone"]={ rune="Nihilist Epiphany", phase=3, spellID=431681, level="23/37/47", icon=19, slot=9,
				start=ns.emeraldWardens },
		["Surge of Light"]={ rune="Prophecy of the Lost Tribe", phase=3, spellID=431664, level=40, icon=20, slot=9,
				start="Between 9pm and 3am server time, an Echo of a Lost Soul will appear in the Swamp of Sorrows, Stranglethorn "
					.."Vale, Tanaris, The Hinterlands. Must be killed with Arcane damage although Holy might eventually work" },
		["Divine Aegis"]={ rune="Resolute Epiphany", phase=3, spellID=431622, level=40, icon=21, slot=1, start=ns.wildGodsStart },
		["Pain and Suffering"]={ rune="Prophecy of the Verdant Winter", phase=3, spellID=413251, level=43, icon=22, slot=1,
				start=ns.enragedVoidWalkerStart },
		["Despair"]={ rune="Despair", phase=3, spellID=431670, level=47, icon=23, slot=9,
				start=ns.leylineSummary ..ns.leylineSummaryExtra },		
		["Eye of the Void"]={ rune="Prophecy of Awakened Chaos", phase=3, spellID=402789, level=47, icon=24, slot=1,
				start="Collect seven eyes from around Azeroth: Blasted Lands, Felwood, Feralas, Searing Gorge, "
					.."Stranglethorn Vale, Tanaris, The Hinterlands. Afterwards go to Azshara for the hand in" },
		-- Phase 4
		["Binding Heal"]={ rune="Jubilant Epiphany", phase=4, spellID=401937, level=55, icon=25, slot=15,
				start="Go to High Priestess Laurena, Stormwind Cathedral (A) or Dietrich Praice, Valley of Spirits, "
				.."Orgrimmar (H)" },
		["Soul Warding"]={ rune="Oneiric Epiphany", phase=4, spellID=402000, level=60, icon=26, slot=15,
				start="Go to Stratholme Live Side (Main Entrance), Eastern Plaguelands. Follow the guide precisely (L58-62e)" },
		["Vampiric Touch"]={ rune="Aperitive Epiphany", phase=4, spellID=402668, level=60, icon=27, slot=15,
				start="Drops from Hellscream's Phantom (L62e), last boss in Demon Fall Canyon, Ashenvale but... "
					.."You need to unlock the dungeon. Speak to the Shadowtooth Emissary in Emerald Santuary, Felwood" },

		spells={ "Penance", "Prayer of Mending", "Void Plague", "Homunculi", "Shared Pain", "Mind Sear",
			"Twisted Faith", "Shadow Word: Death", "Serendipity", "Power Word: Barrier",
			"Strength of Soul", "Circle of Healing", "Empowered Renew", "Mind Spike", "Renewed Hope",
			"Pain Suppression", "Spirit of the Redeemer", "Dispersion", "Void Zone", "Surge of Light",
			"Divine Aegis", "Pain and Suffering", "Despair", "Eye of the Void",
			"Binding Heal", "Soul Warding", "Vampiric Touch" },
		skillBooks={ "Increased Fortitude", "Shadowfiend" },
		rings={ "Dagger Specialization", "Healing Specialization", "Holy Specialization", "Mace Specialization",
			"Meditation Specialization", "Pole Weapon Specialization", "Shadow Specialization", },
	},
			
	["ROGUE"] = {
		-- Phase 1
		["Shadowstrike"]={ rune="Rune of Shadowstrike", phase=1, spellID=399985, level=2, icon=1, slot=10,
				start="Solm Hargrin, Anvilmar, Coldridge Valley; Jorik Kerridan, behind the Northshire Abbey, Northshire "
					.."Frahun Shadewhisper, Shadowglen (A). Rwag, Valley of Trials; David Trias, Deathknell (H)" },
		["Quick Draw"]={ rune="Rune of Quick Draw", phase=1, spellID=398196, level=8, icon=2, slot=5,
				start="Loot/Pp four segments of a map. See the Tooltip at the turn-in location for details: Dun Morogh: Under "
					.."a bridge between Kharanos and Ironforge; Ridgepoint Tower, Elwynn; Rut'theran Village, Teldrassil (A) "
					.."Far South, Echo Isles, Durotar; West of Brill, under the bridge, west side, Tirisfal Glades (H)" },
		["Slaughter from the Shadows"]={ rune="Rune of Slaughter", phase=1, spellID=424925, level=8, icon=3, slot=5,
				start="Chest above Kharanos Inn, Dun Morogh; above the spooky house north of Goldshire, Elwynn; "
				.."Gnarlpine Chache, Barrow Den, Teldrassil (A); Chest at Drygulch Ravine, Durotar; Relic Coffer, "
				.."Agamand Crypts, Tirisfal (H)" },
		["Mutilate"]={ rune="Rune of Mutilation", phase=1, spellID=399960, level=8, icon=4, slot=10,
				start="Pickpocket Dark Iron mobs, far south-east of Dun Morogh; Pp Garrick Padfoot, Northshire (A); Pp Captain "
				.."Perrine, west of Unercity (H). Kill Lord Melenas, Teldrassil (A); Speak to Ba'so, south of Razer Hill (H)" },
		["Between the Eyes"]={ rune="Rune of Precision", phase=1, spellID=400009, level=10, icon=5, slot=7,
				start="Dusty Chest, Forlorn Cavern, IF; Dusty Chest, Dwarven District, SW; Gnarlpine Stash key from Gnarlines, "
					.."Teldrassil (A); Dusty Chest, The Drag, Org; Shipwreck Cache, Tirisfal (H). See Tooltips for details" },
		["Saber Slash"]={ rune="Rune of Saber Slash", phase=1, spellID=424785, level=15, icon=6, slot=10,
				start="Auberdine Lighthouse, Darkshore; Stonewrought Dam, Loch Modan; Defias Scout, Sentinel Hill, "
				.."Westfall (A); Northwatch Hold, The Barrens; entrance of SFK, Silverpine Forest. Lots more details. "
				.."See tooltips" },
		["Blade Dance"]={ rune="Rune of Blade Dance", phase=1, spellID=400012, level=15, icon=7, slot=7,
				start="Kill Naga at Cliffspring River Cave, Darkshore; Pp Dark Iron Dwarves, Loch Modan; Pp Defias, "
				.."Westfall (A) Pp Southsea Pirates, south of Ratchet, The Barrens (H). Lots more details,. See tooltips" },
		["Just a Flesh Wound"]={ rune="Rune of Teasing", phase=1, spellID=400014, level=15, icon=8, slot=5,
				start=ns.supplyFactionStart },
		["Envenom"]={ rune="Rune of Venom", phase=1, spellID=399963, level=20, icon=9, slot=7,
				start="Purchase a Hot Tip from a vendor lurking behind Durnholde Keep, Hillsbrad Foothills" },
		["Main Gauche"]={ rune="Rune of Main Gauche", phase=1, spellID=424919, level=20, icon=10, slot=10,
				start="Grizzby @ Ratchet, The Barrens" },
		["Deadly Brew"]={ rune="Rune of Deadly Brew", phase=1, spellID=399965, level=22, icon=11, slot=5,
				start="Pyrewood Village, Silverpine Forest. Lengthy, with quests. See tooltip for details" },		
--		["Shiv"]={ rune="Rune of Shiving", phase=1, spellID=424800, level=25, icon=12, slot=10,
--				start="Pickpocket Defias Night Runner in Duskwood. South of the Raven Hill Cemetary" },
		["Cutthroat"]={ rune="Rune of Shiving", phase=1, spellID=462708, level=25, icon=12, slot=10,
				start="Pickpocket Defias Night Runner in Duskwood. South of the Raven Hill Cemetary" },
		-- Phase 2
		["Poisoned Knife"]={ rune="Rune of the Poisoned Blade", phase=2, spellID=425012, level=30, icon=13, slot=6,
				start="Go to a pillaged campsite in Desolace" },
		["Shadowstep"]={ rune="Rune of Shadowstep", phase=2, spellID=400029, level=30, icon=14, slot=6,
				start="Pyrewood Village, Silverpine Forest. Lengthy, with quests. Scarlet Monastery Library Wing. "
				.."See tooltips for details" },
		["Shuriken Toss"]={ rune="Rune of the Assassin", phase=2, spellID=399986, level=30, icon=15, slot=6,
				start="Disarm (L30) a Poison Dart trap in the Swamp of Sorrows so that you may then loot a chest" },
		["Rolling with the Punches"]={ rune="Rune of the Southpaw", phase=2, spellID=400016, level=30, icon=16, slot=8,
				start="With Lockpicking @ L55 go to Camp E'Thok in Thousand Needles" },
		["Waylay"]={ rune="Rune of the Assailant", phase=2, spellID=408700, level=40, icon=17, slot=8,
				start=ns.dalaranSpeakTo },
		["Master of Subtlety"]={ rune="Rune of Subtlety", phase=2, spellID=425096, level=40, icon=18, slot=8,
				start="Head to a tower in Kurzen's Compound, far north Stranglethorn Vale" },
		-- Phase 2 Skill Books
		["Redirect"]={ skillBook="Manual of Redirect", spellID=438040, level=25, start=ns.purchaseSkillBook },
		-- Phase 3
		["Cut to the Chase"]={ rune="Rune of Alacrity", phase=3, spellID=432271, level="23/37/47", icon=19, slot=9,
				start=ns.emeraldWardens },
		["Focused Attacks"]={ rune="Rune of Focus", phase=3, spellID=432256, level=34, icon=20, slot=1,
				start="Use Blind (L34) on a Vilebranch Mask and loot its chest, The Hinterlands" },
		["Carnage"]={ rune="Rune of Carnage", phase=3, spellID=432276, level=40, icon=21, slot=9,
				start="Head to near Dreadmaul Hold in the Blasted Lands and climb a tower and lockpick (L225) a chest" },
		["Unfair Advantage"]={ rune="Rune of Foul Play", phase=3, spellID=432300, level=42, icon=22, slot=9,
				start="Pickpocket pirates (L44-45) in Tanaris for a Kidnapper's Coin Purse. Turn in at Steamwheedle Port" },
		["Combat Potency"]={ rune="Rune of Potency", phase=3, spellID=432259, level=40, icon=23, slot=1,
				start=ns.wildGodsStart },
		["Honor Among Thieves"]={ rune="Rune of the Coterie", phase=3, spellID=432264, level=45, icon=24, slot=1,
				start="You need to have visited Ravenholdt previously and to have completed the Pyrewood Dead Drop "
					.."quests/runes. Then at L45 you'll receive a letter sending you back to Ravenholdt Manor" },
		-- Phase 4
		["Fan of Knives"]={ rune="Rune of Knives", phase=4, spellID=409240, level=1, icon=25, slot=15,
				start="Loot a wooden chest in Winterfall Village, Winterspring (L55-59" },
		["Crimson Tempest"]={ rune="Rune of the Crimson Tempest", phase=4, spellID=412096, level=55, icon=26, slot=15,
				start="A run-around in Hearthglen - chests plus pp/kill. Start with Scarlet Workers (L55-57) " },
		["Blunderbuss"]={ rune="Rune of the Swashbuckler", phase=4, spellID=436610, level=57, icon=27, slot=15,
				start="Begin by lockpicking Scarlet Footlockers @ Tyr's Hand in the Eastern Plaguelands, "
					.."(Min LP 250, 275+ better) (L53-57e + L61e)" },
		-- Phase 4 Skill Books
		["Atropic Poison"]={ skillBook="Manual of Atropic Poison", spellID=439503, level=60, start=ns.purchaseSkillBook },
		["Numbing Poison"]={ skillBook="Manual of Numbing Poison", spellID=439505, level=60, start=ns.purchaseSkillBook },
		["Occult Poison I"]={ skillBook="Manual of Occult Poison", spellID=458822, level=60, start=ns.purchaseSkillBook },
		["Sebacious Poison"]={ skillBook="Manual of Sebacious Poison", spellID=439500, level=60, start=ns.purchaseSkillBook },

		spells={ "Shadowstrike", "Quick Draw", "Slaughter from the Shadows",  "Mutilate",
			"Between the Eyes", "Saber Slash", "Blade Dance", "Just a Flesh Wound", "Envenom",
			"Main Gauche", "Deadly Brew", "Cutthroat", "Poisoned Knife", "Shadowstep",
			"Shuriken Toss", "Rolling with the Punches", "Waylay", "Master of Subtlety",
			"Cut to the Chase", "Focused Attacks", "Carnage", "Unfair Advantage", "Combat Potency",
			"Honor Among Thieves", "Crimson Tempest", "Blunderbuss", "Fan of Knives" },
		skillBooks={ "Redirect", "Atropic Poison", "Numbing Poison", "Occult Poison I", "Sebacious Poison" },
		rings={ "Dagger Specialization", "Defense Specialization", "Fist Weapon Specialization", "Mace Specialization",
			"Nature Specialization", "Ranged Weapon Specialization", "Sword Specialization", },
	},
			
	["SHAMAN"] = {
		-- Phase 1
		["Overload"]={ rune="Dyadic Icon", phase=1, spellID=408438, level=2, icon=1, slot=5,
				start="Troll/Orc: Shikrik in Valley of Trials, Durotar; Tauren: Meela Dawnstrider in Camp Narache, Mulgore" },
		["Lava Lash"]={ rune="Lava Lash", phase=1, spellID=408507, level=4, icon=2, slot=10,
				start="Speak to Boarton Shadetotem, main Thunder Bluff mesa, Mulgore" },
		["Shield Mastery"]={ rune="Galvanic Iron", phase=1, spellID=408524, level=6, icon=3, slot=5,
				start="Randomly spawned Galvanic Totems in Durotar and Mulgore. Listen and look for them as you quest. "
				.."Don't delay" },
		["Ancestral Guidance"]={ rune="Echo of the Ancestors", phase=1, spellID=409324, level=7, icon=4, slot=7,
				start=ns.twoPlusHealers .."Kolkar Crag, far south-west Durotar; on an overlook, via Venture Co Mine, Mulgore" },
		["Molten Blast"]={ rune="Sulfurous Icon", phase=1, spellID=425339, level=8, icon=5, slot=10,
				start="Frozen Makrura, Durotar; Bael'Dun Digsite, south-west of Thunder Bluff" },
		["Way of Earth"]={ rune="Earthen Rune", phase=1, spellID=408531, level=12, icon=6, slot=7,
				start="Purge Desert Mirage, west of Ratchet, The Barrens; Rot Hide Mystics, Silverpine Forest" },
		["Healing Rain"]={ rune="Rune of Healing Rain", phase=1, spellID=415236, level=15, icon=7, slot=5,
				start=ns.supplyFactionStart },
		["Water Shield"]={ rune="Tempest Icon", phase=1, spellID=408510, level=15, icon=8, slot=10,
				start="Kolkar's Booty in centaur camps, The Barrens; Grimson the Pale, Deep Elem Mine, Silverpine Forest" },
		["Dual Wield Specialization"]={ rune="Rune of Dual Wield Specialization", phase=1, spellID=408496, level=20, icon=9,
				slot=5, start="Grizzby @ Ratchet, The Barrens" },
		["Lava Burst"]={ rune="Kajaric Icon", phase=1, spellID=408490, level=25, icon=10, slot=10,
				start="Mudsnout Shaman, Hillsbrad Foothills" },
		["Greater Ghost Wolf"]={ rune="Rune of Primordial Fury", phase=1, spellID=425341, level=25, icon=11, slot=7,
				start="Primordial Anomaly, south of the Charred Vale, Stonetalon Mountains. More details. See tooltip" },
		["Earth Shield"]={ rune="Rune of Earth Shield", phase=1, spellID=408514, level=25, icon=12, slot=7,
				start="Kill Baron Aquanis in Blackfathom Deeps" },
		-- Phase 2
		["Spirit of the Alpha"]={ rune="Rune of the Alpha", phase=2, spellID=408696, level=25, icon=13, slot=8,
				start="Light parkour near Freewind Post in Thousand Needles" },
		["Decoy Totem"]={ rune="Decoy Totem", phase=2, spellID=425874, level=27, icon=14, slot=8,
				start="Farm items in Thousand Needles (L25-30), make an Altar offering, profit" },				
		["Ancestral Awakening"]={ rune="Rune of Ancestral Awakening", phase=2, spellID=425858, level=30, icon=15, slot=8,
				start="Go to a pillaged campsite in Desolace" },		
		["Fire Nova"]={ rune="Brimstone Icon", phase=2, spellID=408339, level=33, icon=16, slot=6,
				start="Kill Flameseer Dubelen (L35e) in Desolace. Then 2 x Maraudon antechamber corpse runs" },
		["Power Surge"]={ rune="Rune of Power", phase=2, spellID=415100, level=34, icon=17, slot=6,
				start="Search for Bouldefist Ogres (L32-33) in Arathi Highlands. Can be grouped" },
		["Maelstrom Weapon"]={ rune="Rune of the Storm", phase=2, spellID=408498, level=36, icon=18, slot=6,
				start="Obtain a Tattered Note off Charlga Razorflank in RFK and complete a quest chain" },				
		["Two-Handed Mastery"]={ rune="Rune of Two-Handed Mastery", phase=2, spellID=436364, level=40, icon=19, slot=5,
				start=ns.dalaranSpeakTo },
		-- Phase 2 Skill Books
		["Totemic Projection"]={ skillBook="Revelation of Totemic Projection", spellID=437009, level=25,
				start=ns.purchaseSkillBook },
		-- Phase 3
		["Burn"]={ rune="Rune of Burn", phase=3, spellID=415231, level="23/37/47", icon=20, slot=1, start=ns.emeraldWardens },
		["Tidal Waves"]={ rune="Rune of Tidal Waves", phase=3, spellID=432042, level=37, icon=21, slot=1,
				start="Look for a crate and an empty tent past the lakes south of Camp Mojache in Feralas. "
				.."Fighting not necessary" },
		["Static Shock"]={ rune="Rune of Static Shock", phase=3, spellID=432237, level=42, icon=22, slot=9,
				start="Two players, both of whom can ideally deliver nature damage, are essential. Not "
				.."necessarily another Shammy. Proceed to the southern ogre area of Feralas" },
		["Riptide"]={ rune="Rune of Riptide", phase=3, spellID=409954, level=40, icon=23, slot=9, start=ns.wildGodsStart },
		["Mental Dexterity"]={ rune="Rune of Mental Dexterity", phase=3, spellID=415140, level=43, icon=24, slot=1,
				start=ns.enragedVoidWalkerStart },
		["Rolling Thunder"]={ rune="Rune of Rolling Thunder", phase=3, spellID=432235, level=43, icon=25, slot=9,
				start="Abyssal Sands, Tanaris. Simple mob run through... except you have a 50% damage taken debuff. "
				.."Mobs are L43-45" },
		["Overcharged"]={ rune="Rune of Overcharged", phase=3, spellID=432240, level=45, icon=26, slot=9,
				start="Fetch quests in Azshara, Searing Gorge, Tanaris & The Hinterlands. Final hand in is in Feralas" },
		-- Phase 4
		["Coherence"]={ rune="Rune of Composure", phase=4, spellID=415096, level=54, icon=27, slot=15,
				start="Look for Greater Obsidian Elementals around the Burning Steppes lava pools (L54). TIMED!" },
		["Feral Spirit"]={ rune="Rune of the Bound Spirit", phase=4, spellID=440580, level=60, icon=28, slot=15,
				start="Drops from Frijidar (L60e) in a cave east of Everlook, Winterspring." },
		["Storm, Earth and Fire"]={ rune="Voltaic Icon", phase=4, spellID=440569, level=51, icon=29, slot=15,
				start="Farm Deadwood Shaman (L53-54) for the rune. Northern Felwood. Then see the guide" },
		-- Phase 4 Skill Books
		["Shamanistic Rage"]={ skillBook="Rune of Primordial Fury", spellID=425336, level=10, start=ns.purchaseSkillBook },

		spells={ "Overload", "Lava Lash", "Shield Mastery", "Ancestral Guidance", "Molten Blast",
			"Way of Earth", "Healing Rain", "Water Shield", "Dual Wield Specialization",
			"Lava Burst", "Greater Ghost Wolf", "Earth Shield", "Spirit of the Alpha", "Decoy Totem",
			"Ancestral Awakening", "Fire Nova", "Power Surge", "Maelstrom Weapon", "Two-Handed Mastery",
			"Burn", "Tidal Waves", "Static Shock", "Riptide", "Mental Dexterity", "Rolling Thunder",
			"Overcharged", "Coherence", "Feral Spirit", "Storm, Earth and Fire" },
		skillBooks={ "Shamanistic Rage", "Totemic Projection" },
		rings={ "Axe Specialization", "Dagger Specialization", "Defense Specialization", "Fire Specialization",
			"Fist Weapon Specialization", "Frost Specialization", "Healing Specialization", "Mace Specialization",
			"Meditation Specialization", "Nature Specialization", "Pole Weapon Specialization" },
	},

	["WARLOCK"] = {
		-- Phase 1
		["Haunt"]={ rune="Rune of Haunting", phase=1, spellID=403501, level=2, icon=1, slot=10,
				start="Speak to Alamar Grimm, Anvilmar, Coldridge Valley; Drusilla La Salle, Northshire (A). "
					.."Nartok, Valley of Trials; Maximillion, Deathknell (H)" },
		["Chaos Bolt"]={ rune="Rune of Chaos Bolt", phase=1, spellID=403629, level=6, icon=2, slot=10,
				start="Frozen: Trogg, Gol'bolar quarry, Dun Morogh; Murloc, Stonecairn Lake, Elwynn Forest (A) "
					.."Makrura, east of Razor Hill, Durotar; Murloc, north-west of Brightwater Lake, Tirisfal Glades (H)" },
		["Demonic Grace"]={ rune="Rune of Grace", phase=1, spellID=425463, level=8, icon=3, slot=7,
				start="Ominous Tome drops from: Frostmane Shadowcaster, cave west of Brewnall, Dun Morogh; Lasperlode Mine Kobolds, "
					.."Elwynn Forest (A). Voodoo Doll on Echo Isles, Durotar; Darkeye Bonecaster, Agamand Mills, Tirisfal (H)" },
		["Demonic Tactics"]={ rune="Rune of Tactics", phase=1, spellID=412727, level=8, icon=4, slot=5,
				start="Dead Acolyte near Jasperlode Mine, Elwynn Forest (A); "
					.."Dead Acolyte, towards the Monastery, Tirisfal Glades (H)" },
		["Soul Siphon"]={ rune="Rune of Soul Siphon", phase=1, spellID=403511, level=10, icon=5, slot=15,
				start="Use Drain Soul twice. See these tooltips: Captain Beld, far south-east Dun Morogh; Hogger, Elwynn Forest (A) "
					.."Gazz'uz, cave outside Orgrimmar; Maggot Eye, Garren's Haunt, Tirisfal Glades (H)" },
		["Master Channeler"]={ rune="Rune of Channeling", phase=1, spellID=403668, level=12, icon=6, slot=5,
				start="Greishan Ironstove, long path, Loch Modan; Dark Strand Fanatics, Tower of Athalaxx, Darkshore (A) "
					.."Altar of Thorns, Thorn Hill, The Barrens; Sadistic Fiend, Deep Elm Mine, Silverpine Forest (H)" },
		["Everlasting Affliction"]={ rune="Rune of Everlasting Affliction", phase=1, spellID=412689, level=15, icon=7, slot=7,
				start=ns.supplyFactionStart },
		["Lake of Fire"]={ rune="Rune of Fires Wake", phase=1, spellID=403666, level=20, icon=8, slot=5,
				start="Zixil, wanders between Tarren Mill and Southshore, Hillsbrad Foothills (A/H)" },
		["Shadow Bolt Volley"]={ rune="Rune of Shadowbolts", phase=1, spellID=403628, level=20, icon=9, slot=10,
				start="Delmanis the Hated, Tower of Athalaxx, Darkshore; Demonic Remains, Ironbands Excavation, "
					.."Loch Modan (A) "
					.."Supervisor Lugwizzle, Sludge Fen, The Barrens; Ravenclaw mobs, Beren's Peril cave, "
					.."Silverpine Forest (H)" },
		["Demonic Pact"]={ rune="Rune of the Pact", phase=1, spellID=425464, level=20, icon=10, slot=7,
				start="Grizzby @ Ratchet, The Barrens" },
		["Incinerate"]={ rune="Rune of Incinerate", phase=1, spellID=412758, level=23, icon=11, slot=9,
				start="Incinerator Gar'im, cave south-east corner of Redridge (A/H)" },
		["Metamorphosis"]={ rune="Rune of Metamorphosis", phase=1, spellID=403789, level=25, icon=12, slot=10,
				start="Doan Karhan, near Camp Taurajo, southern Barrens" },
		-- Phase 2
		["Dance of the Wicked"]={ rune="Rune of Wickedness", phase=2, spellID=412798, level=30, icon=13, slot=8,
				start="With Hellfire learnt, interact with a dead ogre in Stranglethorn, Alterac, Desolace or "
				.."Thousand Needles" },
		["Shadow and Flame"]={ rune="Rune of Burning Darkness", phase=2, spellID=426316, level=30, icon=14, slot=6, 
				start="Go to a pillaged campsite in Desolace" },
		["Grimoire of Synergy"]={ rune="Rune of Synergy", phase=2, spellID=426301, level=32, icon=15, slot=6,
				start="Raszel Ander, near Camp Taurajo, southern Barrens" },
		["Invocation"]={ rune="Rune of Invocation", phase=2, spellID=426243, level=34, icon=16, slot=6,
				start="Go to Stromgarde Keep in Arathi Highlands and begin by killing Syndicate Conjurors" },
		["Shadowflame"]={ rune="Rune of Shadowflames", phase=2, spellID=426320, level=38, icon=17, slot=8,
				start="Go to Shadowbreak Ravine in Desolace and do Warlock stuff" },
		["Demonic Knowledge"]={ rune="Rune of Forbidden Knowledge", phase=2, spellID=412732, level=40, icon=18, slot=8,
				start=ns.dalaranSpeakTo },
		-- Phase 2 Skill Books
		["Portal Summoning"]={ skillBook="Grimoire of Portal Summoning", spellID=437169, level=25, start=ns.purchaseSkillBook },
		["Soul Harvesting"]={ skillBook="Grimoire of Soul Harvesting", spellID=437032, level=25, start=ns.purchaseSkillBook },
		-- Phase 3
		["Summon Felguard"]={ rune="Rune of the Felguard", phase=3, spellID=427733, level=10, icon=19, slot=9,
				start="Acquire an Explorer Imp, randomly after using Drain Soul (L10). Stand near a Fel Portal "
					.."Summon and send your Imp through. Loot bag has a chance to contain the rune." ..ns.felPortals
					..ns.getCGM },
		["Unstable Affliction"]={ rune="Rune of Affliction", phase=3, spellID=427717, level="23/37/47", icon=20, slot=9,
				start=ns.emeraldWardens },
		["Immolation Aura"]={ rune="Rune of Immolation Aura", phase=3, spellID=427726, level=38, icon=21, slot=9,
				start="Farm mobs (L40) in the far north-east Bough Shadow corner of Ashenvale, for components to combine" },
		["Pandemic"]={ rune="Rune of Pandemic", phase=3, spellID=427712, level=40, icon=22, slot=1,
				start="Around the path west of Camp Mojache, loot two containers and defeat a Diseased Forest Walker (L43-44)" },
		["Vengeance"]={ rune="Rune of Vengeance", phase=3, spellID=426469, level=40, icon=23, slot=1, start=ns.wildGodsStart },
		["Backdraft"]={ rune="Backdraft", phase=3, spellID=427713, level=47, icon=24, slot=1, start=ns.leylineSummary },
		-- Phase 4
		["Mark of Chaos"]={ rune="Rune of Mark of Chaos", phase=4, spellID=440892, level=45, icon=25, slot=15,
				start="Just farm a couple of Skeletal Flayers  (L50-51) in the Western Plaguelands then go to turn in" },
		["Decimation"]={ rune="Rune of Decimation", phase=4, spellID=440870, level=53, icon=26, slot=15,
				start="Explorer Imp. Fel Rift in Burning Steppes or Eastern Plaguelands until a Legion Portal Tuner drops" },
		["Infernal Armor"]={ rune="Rune of Infernal Armor", phase=4, spellID=440882, level=56, icon=27, slot=15,
				start="Farm Shadowsworn mobs in the Blased Lands (L56e)" },
		-- Phase 4 Skill Books
		["Fel Armor"]={ skillBook="Grimoire of Fel Armor", spellID=403619, level=50, start=ns.purchaseSkillBook },
		
		spells={ "Haunt", "Chaos Bolt", "Demonic Grace", "Demonic Tactics", "Soul Siphon",
			"Master Channeler", "Everlasting Affliction", "Lake of Fire", "Shadow Bolt Volley",
			"Demonic Pact", "Incinerate", "Metamorphosis", "Dance of the Wicked", "Shadow and Flame",
			"Grimoire of Synergy", "Invocation", "Shadowflame", "Demonic Knowledge", "Summon Felguard",
			"Unstable Affliction", "Immolation Aura", "Pandemic", "Vengeance", "Backdraft",
			"Mark of Chaos", "Decimation", "Infernal Armor", },
		skillBooks={ "Portal Summoning", "Soul Harvesting", "Fel Armor", },
		rings={ "Dagger Specialization", "Defense Specialization", "Fire Specialization", 
			"Pole Weapon Specialization", "Meditation Specialization", "Shadow Specialization", 
			"Sword Specialization", },
	},

	["WARRIOR"] = {
		["Victory Rush"]={ rune="Rune of Victory Rush", phase=1, spellID=402927, level=2, icon=1, slot=10,
				start="You'll stumble across the stash / quest while questing in your starting zone" },
		["Blood Frenzy"]={ rune="Rune of Blood Frenzy", phase=1, spellID=412507, level=7, icon=2, slot=5,
				start="Wandering Swordsman: Westbrook Garrison, Elwynn Forest (A); Bladescar Highlands, Durotar (H). Other locations" },
		["Furious Thunder"]={ rune="Rune of Furious Thunder", phase=1, spellID=403219, level=7, icon=3, slot=7,
				start="Various Elites/Rares in Dun Morogh (A) and Durotar, Mulgore (H); Goldtooth, Mother Fang in Elwynn Forest (A) "
				.."Gnarlpine Cache, Ban'ethil Barrow Den, Teldrassil (A); Gillgar, west of Soliden Farmstead, Tirisfal (H)" },
		["Devastate"]={ rune="Rune of Devastate", phase=1, spellID=403196, level=8, icon=4, slot=10,
				start="Junni Steelpass, Kharanos; Viktoria Woods, SW; Delwynna, Darn; Vahi Bonespliter, Razor Hill; "
				.."Vateya Timberhoof, Bloodhoof; Dorac Graves, UC. Each one will accept three items you'll "
				.."loot as you quest normally. Alliance side there's no overlap, Horde - a little overlap. "
				.."Check each NPC above for complete, localised, details as way too many too list here" },
		["Frenzied Assault"]={ rune="Rune of Frenzied Assault", phase=1, spellID=425412, level=10, icon=5, slot=7,
				start="Simply help one of six people, mostly Innkeepers, one in each main city" },
		["Single-Minded Fury"]={ rune="Rune of Single-Minded Fury", phase=1, spellID=413404, level=15, icon=6, slot=10,
				start=ns.supplyFactionStart },
		["Endless Rage"]={ rune="Rune of Endless Rage", phase=1, spellID=403218, level=20, icon=7, slot=1,
				start="Old Murk-eye, southern coast, Westfall; Lady Sedorax, Darkshore (A); "
				.."Horde Warbanner, The Crossroads; Skittering Dark Cave, Silverpine Forest (H)" },
		["Quick Strike"]={ rune="Rune of Quick Strike", phase=1, spellID=429765, level=20, icon=8, slot=10,
				start="Paxnozz, Mathystra, Darkshore; Defias in Westfall (A); Kilxx @ Ratchet (H); "
				.."Troggs west of Thelsamar, Loch Modan" },
		["Warbringer"]={ rune="Rune of the Warbringer", phase=1, spellID=425421, level=20, icon=9, slot=5,
				start="Grizzby @ Ratchet, The Barrens" },
		["Consumed by Rage"]={ rune="Rune of Consuming Rage", phase=1, spellID=425418, level=25, icon=10, slot=7,
				start="Carrodin @ Thelgen Rock Cave, Wetlands" },
		["Flagellation"]={ rune="Rune of Flagellation", phase=1, spellID=402877, level=25, icon=11, slot=5,
				start="Crypts in the Raven Hill Cemetary, Duskwood" },
		["Raging Blow"]={ rune="Rune of Raging Blow", phase=1, spellID=402911, level=25, icon=12, slot=5,
				start="Alonso, Ashenvale @ the path to Stonetalon Mountains" },
		-- Phase 2
		["Intervene"]={ rune="Rune of Intervention", phase=2, spellID=403338, level=24, icon=13, slot=8,
				start="Strike three combat dummies in Thousand Needles in a specific manner" },
		["Enraged Regeneration"]={ rune="Rune of Healing Rage", phase=2, spellID=402913, level=30, icon=14, slot=8,
				start="Go to a pillaged campsite in Desolace" },
		["Focused Rage"]={ rune="Rune of Focused Rage", phase=2, spellID=29787, level=33, icon=15, slot=6,
				start="Head to Witherbark Village in Arathi Highlands and slay Witherbark mobs" },
		["Blood Surge"]={ rune="Rune of Blood Surge", phase=2, spellID=413380, level=36, icon=16, slot=6,
				start="Begin by slaying elite Boulderfist Maulers (Arathi) or Crushridge Mages (Alterac) (L37)" },
		["Rallying Cry"]={ rune="Rune of the Commander", phase=2, spellID=426490, level=39, icon=17, slot=8,
				start="Drops of the Wandering Swordsman (L40) in the Badlands" },
		["Precise Timing"]={ rune="Rune of Ruthless Precision", phase=2, spellID=402922, level=40, icon=18, slot=6,
				start=ns.dalaranSpeakTo },
		-- Phase 2 Skill Books
		["Commanding Shout"]={ skillBook="Handbook of Commanding Shout", spellID=403215, level=25, start=ns.purchaseSkillBook },
		-- Phase 3
		["Shield Mastery"]={ rune="Rune of the Protector",phase=3,  spellID=426980, level="23/37/47", icon=19, slot=1,
				start=ns.emeraldWardens },
		["Wrecking Crew"]={ rune="Rune of Demolition", phase=3, spellID=427065, level=38, icon=20, slot=9,
				start="Head to The Hinterlands and farm Witherbark Troll mobs (L40-45) for a Geode Hammer" },
		["Sword and Board"]={ rune="Rune of the Knight", phase=3, spellID=426978, level=40, icon=21, slot=9,
				start=ns.wildGodsStart },
		["Rampage"]={ rune="Rune of the Unbridled", phase=3, spellID=426940, level=43, icon=22, slot=9,
				start="Kill Ohk'zi (L43e). Inside a Gordunni Outpost cave. North of Camp Majache, Feralas" },
		["Gladiator Stance"]={ rune="Rune of the Gladiator", phase=3, spellID=412513, level=46, icon=23, slot=8,
				start="Must have Blood Frenzy & Rallying Cry. Go pick up a quest from Fizbuz Mithril in Gadgetzan, Tanaris" },
		["Taste for Blood"]={ rune="Rune of the Bloodthirsty", phase=3, spellID=426953, level=50, icon=24, slot=1,
				start="Head to the Searing Gorge, collect some constructor parts, summon Iodax (L50). Defeat. Loot" },
		["Vigilance"]={ rune="Rune of the Watchman", phase=3, spellID=426972, level=50, icon=25, slot=1,
				start="Defeat the Tyrant of the Hive (L46e) in the Writhing Deep, Feralas. Best to group up" },
		-- Phase 4
		["Fresh Meat"]={ rune="Rune of the First Warrior", phase=4, spellID=440484, level=60, icon=26, slot=15,
				start="At Blackrock Stronghold, Burning Steppes, kill 5 mobs with Execute then summon a Revered "
				.."Champion (L58-60e)" },
		["Sudden Death"]={ rune="Timeless Wanderer's Insights", phase=4, spellID=440113, level=60, icon=27, slot=15,
				start="Search all over Silithis for a Wandering Swordsman. Defeat Khonsu (L60e)" },
		["Shockwave"]={ rune="Premonition and Combat Foresight", phase=4, spellID=440488, level=60, icon=28, slot=15,
				start="Head to the Tanaris coast to locate a Half-Buried Mech and then... quest chain -> (L60e). GROUP" },

		spells={ "Victory Rush", "Blood Frenzy", "Furious Thunder", "Devastate", "Frenzied Assault",
			"Single-Minded Fury", "Endless Rage", "Quick Strike", "Warbringer", "Consumed by Rage", 
			"Flagellation", "Raging Blow", "Intervene", "Enraged Regeneration", "Focused Rage",
			"Blood Surge", "Rallying Cry", "Precise Timing", "Shield Mastery", "Wrecking Crew",
			"Sword and Board", "Rampage", "Gladiator Stance", "Taste for Blood", "Vigilance", 
			"Fresh Meat", "Sudden Death", "Shockwave", },
		skillBooks={ "Commanding Shout" },
		rings={ "Axe Specialization", "Dagger Specialization", "Defense Specialization",
			"Fist Weapon Specialization", "Mace Specialization", "Pole Weapon Specialization",
			"Ranged Weapon Specialization", "Sword Specialization", },
	},
}

--=======================================================================================================
--
-- EASTERN KINGDOMS
--
--=======================================================================================================

points[ 1416 ] = { -- Alterac Mountains
	[39616086] = { item=213452, name="Dormant Holy Rune", class={ "PALADIN" }, spell={ "Guarded by the Light" },
					guide={ ns.paladin.guardedLight } },
	[40604700] = { name="Crushridge mobs (Various)", class={ "WARRIOR" }, spell={ "Blood Surge" },
					guide={ ns.warrior.bloodSurge }, quest={ { 79624, 79677, 79678 } },
					questName={ { "Anyone Can Cook", "A Quick Grocery Run", "Taste Testing" } } },
	[48555776] = { object=423896, name="Manual", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="On a crate, just inside the tower at Gallows' Corner",
					quest={ 79948, }, questName={ "Defensive Magics 101" }, },
	[51004020] = { name="Crushridge ogres (various)", class={ "PRIEST" }, spell={ "Empowered Renew" },
					tip="Farming Grimtotem mobs in Thousand Needles is much easier", guide={ ns.priest.empowered }, },
	[51605640] = { name="Crushridge ogres (various)", class={ "PRIEST" }, spell={ "Empowered Renew" },
					tip="Farming Grimtotem mobs in Thousand Needles is much easier", guide={ ns.priest.empowered }, },
	[54604940] = { npc=217620, name="Reckless Warlock", class={ "WARLOCK" }, spell={ "Dance of the Wicked" },
					guide={ ns.warlock.dance }, tip="At the back of the cave" },
	[61004760] = { npc=217305, name="Ancient Fire Elemental", class={ "MAGE" }, spell={ "Hot Streak" }, guide={ ns.mage.hotStreak } },
	[80406680] = { npc=6176, name="Bath'rah the Windwatcher", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[84608020] = { name="Fahrad / Zan Shivsproket", class={ "ROGUE" }, spell={ "Honor Among Thieves" },
					guide={ ns.rogue.honorThieves },
					quest={ { 6681, 80526, 80411, 80453, 80454, 80455 } }, preRune={ { "Deadly Brew", "Shadowstep" } },
					questName={ { "The Manor, Ravenholdt", "Fool Me Twice", "The Talisman of Kazdor", "Best Laid Plans",
						"One Last Drop", "Biding Our Time" } } },
}
points[ 1417 ] = { -- Arathi Highlands
	[21508390] = { object=422911, name="Sealed Barrel", spell={ "Blood Surge" }, guide={ ns.warrior.bloodSurge },
					tip="Lowest level of the boat. Nearby naga (L40) can root you for 10s. Loot the Smuggler's Spice Blend",
					class={ "WARRIOR" }, quest={ { 79624, 79677, 79678 } },
					questName={ { "Anyone Can Cook", "A Quick Grocery Run", "Taste Testing" } } },
	[22206760] = { name="Boulderfist mobs (Various)", spell={ "Blood Surge" }, guide={ ns.warrior.bloodSurge },
					class={ "WARRIOR" }, quest={ { 79624, 79677, 79678 } },
					questName={ { "Anyone Can Cook", "A Quick Grocery Run", "Taste Testing" } } },
	[26006360] = { npc=2590, name="Syndicate Conjuror", class={ "WARLOCK" },
					tip="you need 10 x Conjuror's Pendant. You may safely group with other warlocks",
					spell={ "Invocation" }, guide={ ns.warlock.invocation } },
	[34128047] = { object=499987, name="Spellbook", spell={ "Healing Specialization" }, ring=true, 
					class={ "DRUID", "MAGE", "PALADIN", "PRIEST", "SHAMAN", },
					guide="You'll see the book on a crate near a bonfire in the pirate cove. Easy as!", },
	[53009100] = { object=420055, name="Rowboat", class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "Eclipse", "Trap Launcher", "Brain Freeze", "The Art of War",
					"Mind Spike", "Poisoned Knife", "Ancestral Awakening", "Shadow and Flame", "Enraged Regeneration" },
					guide={ ns.pillaged }, quest={ { 79229, 79235, 79236, 79242 } }, 
					questName={ { "Highway Robbery", "On the Lam", "Cherry for Your Thoughts", "No Honor Among Thieves" } } },
	[27205700] = { npc=217387, name="Brother Atticus", class={ "PALADIN" },
					spell={ "Malleable Protection" }, guide={ ns.paladin.malleable } },
	[30802860] = { npc=217589, name="Hay Weevil", class={ "DRUID", "HUNTER" },
					spell={ "Survival Instincts", "Wyvern Strike" }, guide={ ns.amaryllis } },
	[31406480] = { object=422911, name="Sealed Barrel", class={ "WARRIOR" }, guide={ ns.warrior.bloodSurge },
					spell={ "Blood Surge" }, tip="Cave entrance through to the sunken boat", quest={ { 79624, 79677, 79678 } },
					questName={ { "Anyone Can Cook", "A Quick Grocery Run", "Taste Testing" } } },
	[34004400] = { npc=2562, name="Boulderfist Ogre", class={ "SHAMAN" }, spell={ "Power Surge" }, guide={ ns.shaman.powerSurge } },
	[48608860] = { name="Dark Iron (Various)", class={ "PALADIN" },
					spell={ "Malleable Protection" }, guide={ ns.paladin.malleable } },
	[55603920] = { npc=217589, name="Hay Weevil", class={ "DRUID", "HUNTER" },
					spell={ "Survival Instincts", "Wyvern Strike" }, guide={ ns.amaryllis } },
	[57607460] = { npc=217300, name="Skonk", class={ "WARRIOR" }, spell={ "Blood Surge" }, guide={ ns.warrior.bloodSurge },
					quest={ { 79624, 79677, 79678 } },
					questName={ { "Anyone Can Cook", "A Quick Grocery Run", "Taste Testing" } } },
	[61604100] = { npc=218931, name="Dark Rider", tip="Search this area", guide={ ns.dalaranAgent }, 
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "King of the Jungle", "Melee Specialist", "Missile Barrage",
					"Infusion of Light", "Spirit of the Redeemer", "Waylay", "Two-Handed Mastery", "Demonic Knowledge",
					"Precise Timing" }, quest={ ns.dalaranQuest }, questName={ ns.dalaranQuestName } },
	[61905570] = { npc=217589, name="Hay Weevil", class={ "DRUID", "HUNTER" },
					spell={ "Survival Instincts", "Wyvern Strike" }, guide={ ns.amaryllis } },
	[62205450] = { object=424267, name="Grave", class={ "PRIEST" }, tip="Arathi Echo",
					spell={ "Pain Suppression" }, guide={ ns.priest.painSuppression } },
	[68006440] = { npc=217836, name="Needletooth", class={ "HUNTER" }, spell={ "Steady Shot" }, guide="Kill Needletooth!" },
	[68257142] = { name="Witherbark mobs (Various)", class={ "WARRIOR" }, spell={ "Focused Rage" },
					guide={ ns.warrior.focusedRage } },
	[73606520] = { object=423897, name="Scrolls", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="Just to the right of a tent entrance at Winterbark Village, Arathi Highlands",
					quest={ 79949, }, questName={ "A Web of Lies: Debunking Myths and Legends" }, },
	[93807160] = { npc=215655, name="Illari Duskfeather", class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "Eclipse", "Trap Launcher", "Brain Freeze", "The Art of War",
					"Mind Spike", "Poisoned Knife", "Ancestral Awakening", "Shadow and Flame", "Enraged Regeneration" },
					guide={ ns.pillaged }, quest={ { 79229, 79235, 79236, 79242 } }, 
					questName={ { "Highway Robbery", "On the Lam", "Cherry for Your Thoughts", "No Honor Among Thieves" } } },
	[94106930] = { object=418855, name="Illari's Loot Cache", class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "Eclipse", "Trap Launcher", "Brain Freeze", "The Art of War",
					"Mind Spike", "Poisoned Knife", "Ancestral Awakening", "Shadow and Flame", "Enraged Regeneration" },
					guide={ ns.pillaged }, quest={ { 79229, 79235, 79236, 79242 } }, 
					questName={ { "Highway Robbery", "On the Lam", "Cherry for Your Thoughts", "No Honor Among Thieves" } } },
}
points[ 1418 ] = { -- Badlands
	[04008060] = { name="Rock Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[17404080] = { name="Rock Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[20005460] = { npc=218273, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Rallying Cry" }, guide={ ns.warrior.rallyingCry } },
	[22406670] = { object=413699, name="Large Nest", class={ "HUNTER" }, spell={ "Expose Weaknesss" },
					tip="On top of a small mesa. Approach from the east",
					guide={ ns.hunter.expose }, quest={ { 78823, 78830 } },
					questName={ { "Terror of the Desert Skies", "Terror of the Desert Skies" } } },
	[25406120] = { npc=218273, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Rallying Cry" }, guide={ ns.warrior.rallyingCry } },
	[27206960] = { npc=218273, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Rallying Cry" }, guide={ ns.warrior.rallyingCry } },
	[30805760] = { name="Dustbelcher (Various), Stonevault (Various)", class={ "HUNTER" }, spell={ "Expose Weaknesss" },
					tip="Farm until the Primitive Drawing drops. Dustbelcher Ogres/Brutes have the "
					.."far better drop rate (1 in 8)", guide={ ns.hunter.expose }, quest={ { 78823, 78830 } },
					questName={ { "Terror of the Desert Skies", "Terror of the Desert Skies" } } },
	[33606800] = { npc=218273, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Rallying Cry" }, guide={ ns.warrior.rallyingCry } },
	[35805840] = { npc=218273, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Rallying Cry" }, guide={ ns.warrior.rallyingCry } },
	[41502810] = { object=422919, name="Tapped Shadowforge Keg", class={ "WARRIOR" }, guide={ ns.warrior.bloodSurge },
					spell={ "Blood Surge" }, tip="Descend to the basement of Angor Fortress. Loot the Balmy Brew",
					quest={ { 79624, 79677, 79678 } },
					questName={ { "Anyone Can Cook", "A Quick Grocery Run", "Taste Testing" } } },
	[43007860] = { name="Rock Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
--	[44001600] = { name="Skillbooks", tip="Uldaman", skillBook=true, guide={ ns.dungeonDrops }, 
--					class={ "DRUID", "DRUID", "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "PRIEST", "ROGUE", "SHAMAN",
--						"WARLOCK", "WARLOCK", "WARRIOR" },	
--					spell={ "Deeper Wilds", "Enhanced Restoration", "Revive", "Aspect of the Viper", "Expanded Intellect",
--							"Enhanced Blessings", "Increased Fortitude", "Shadowfiend", "Redirect", "Totemic Projection",
--							"Portal Summoning", "Soul Harvesting", "Commanding Shout" }, },
	[56405540] = { npc=218931, name="Dark Rider", tip="Search this area",
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "King of the Jungle", "Melee Specialist", "Missile Barrage",
					"Infusion of Light", "Spirit of the Redeemer", "Waylay", "Two-Handed Mastery", "Demonic Knowledge",
					"Precise Timing" }, guide={ ns.dalaranAgent }, quest={ ns.dalaranQuest },
					questName={ ns.dalaranQuestName } },
	[56703990] = { object=423899, name="Scrolls", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="Approach via the path to the south. Inside the crypt",
					quest={ 79951, }, questName={ "Mummies: A Guide to the Unsavory Undead" }, },
	[63207000] = { name="Dustbelcher (Various), Stonevault (Various)", class={ "HUNTER" }, spell={ "Expose Weaknesss" },
					tip="Farm until the Primitive Drawing drops. Dustbelcher Ogres/Brutes have the "
					.."far better drop rate (1 in 8)", guide={ ns.hunter.expose }, quest={ { 78823, 78830 } },
					questName={ { "Terror of the Desert Skies", "Terror of the Desert Skies" } } },
--	[65504330] = { name="Skillbooks", tip="Uldaman Back Entrance", skillBook=true, guide={ ns.dungeonDrops }, 
--					class={ "DRUID", "DRUID", "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "PRIEST", "ROGUE", "SHAMAN",
--						"WARLOCK", "WARLOCK", "WARRIOR" },	
--					spell={ "Deeper Wilds", "Enhanced Restoration", "Revive", "Aspect of the Viper", "Expanded Intellect",
--							"Enhanced Blessings", "Increased Fortitude", "Shadowfiend", "Redirect", "Totemic Projection",
--							"Portal Summoning", "Soul Harvesting", "Commanding Shout" }, },
}
points[ 1419 ] = { -- Blasted Lands
	[33604870] = { object=457089, name="The Shadow Connection", spell={ "Shadow Specialization" }, ring=true, 
					class={ "PRIEST", "WARLOCK", },
					guide="To get here you head far south-west. Then turn north and in the far top corner of the "
					.."Tainted Scar is a large altar. The book is behind it. Phat lewt!", },
	[44303300] = { npc=222698, name="Fel Scar", class={ "WARLOCK" },
					spell={ "Decimation" }, guide={ ns.warlock.decimation }, tip=ns.warlock.felRift, },
	[45301640] = { object=442405, name="Abandoned Cache", class={ "ROGUE" }, spell={ "Carnage" },
					guide={ "Climb the tower, lockpick the chest. Surprise! A Murderous Lost One (L46). Kill for your "
					.."phat lewt!" }, },
	[45405420] = { npc=221740, name="Calefactus the Unleashed", class={ "HUNTER" }, spell={ "Rapid Killing" },
					questName={ { "The Burning Beast", "Chains That Bind", "Brought to Heel" } },
					quest={ { 81900, 81917, 81919 } }, guide={ ns.hunter.rapidKilling }, tip={ ns.hunter.calefactus } },
	[49001400] = { item=223331, name="Pulsating Eye", class={ "PRIEST" }, spell={ "Eye of the Void" },
					quest={ { 82316 } }, questName={ { "Seven Eyes I Seek..." } }, guide={ ns.priest.eyeOfVoid } },
	[50003900] = { npc=221740, name="Calefactus the Unleashed", class={ "HUNTER" }, spell={ "Rapid Killing" },
					questName={ { "The Burning Beast", "Chains That Bind", "Brought to Heel" } },
					quest={ { 81900, 81917, 81919 } }, guide={ ns.hunter.rapidKilling }, tip={ ns.hunter.calefactus } },
	[50601420] = { npc=7506, name="Bloodmage Lynnore", class={ "HUNTER" }, spell={ "Rapid Killing" },
					questName={ { "The Burning Beast", "Chains That Bind", "Brought to Heel" } },
					quest={ { 81900, 81917, 81919 } }, guide={ ns.hunter.rapidKilling } },
	[55303220] = { item=220353, name="Conjurer's Codex", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 81956, }, questName={ "Conjurer's Codex" }, },
	[59404100] = { npc=222698, name="Fel Scar", class={ "WARLOCK" },
					spell={ "Decimation" }, guide={ ns.warlock.decimation }, tip=ns.warlock.felRift, },
	[64404680] = { npc=7506, name="Shadowsworn mobs (Various)", class={ "HUNTER" }, spell={ "Rapid Killing" },
					questName={ { "The Burning Beast", "Chains That Bind", "Brought to Heel" } },
					quest={ { 81900, 81917, 81919 } }, guide={ ns.hunter.rapidKilling }, tip={ "These are L51-53" } },
	[66003100] = { name="Shadowsworn mobs (various)", class={ "WARLOCK" }, spell={ "Infernal Armor" },
					guide={ "Farm the Shadowsworn mobs in the vicinity until a Shadowsworn Note drops.\n\n"
					.."Adjacent to the east is a cave. Go to the altar at the back, hugging the left.\n\n"
					.."Oh, it's chockas with L53 mobs...\n\nVoidwalker up. Equip Greater Spellstone. Use. "
					.."Sacrifice -> Shadow Ward -> Click the altar.\n\nHighly recommended: A Healer friend if your "
					.."gear, level or ability are low. It is the altar damage that will likely kill you.\n\n"
					.."Kill Heliath (L56e). Grab your phat lewt.\n\nCurse Blizzard. Plenty of online QQ for this" }, },
	[66603120] = { npc=7506, name="Shadowsworn mobs (Various)", class={ "HUNTER" }, spell={ "Rapid Killing" },
					questName={ { "The Burning Beast", "Chains That Bind", "Brought to Heel" } },
					quest={ { 81900, 81917, 81919 } }, guide={ ns.hunter.rapidKilling }, tip={ "These are L51-53" } },
}
points[ 1428 ] = { -- Burning Steppes
	[26005620] = { npc=227746, name="Escaped Core Hound", class={ "HUNTER" },
					spell={ "Hit and Run" }, guide={ ns.hunter.hitAndRun }, tip="These are L60", },
	[26104800] = { npc=222288, name="Fel Rift", class={ "WARLOCK" },
					spell={ "Decimation" }, guide={ ns.warlock.decimation }, tip=ns.warlock.felRift, },
	[28002900] = { item=220349, name="Stonewrought Design", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true, tip=ns.mage.booksBM,
					quest={ 81953, }, questName={ "Stonewrought Design" }, },
	[28902450] = { npc=227746, name="Escaped Core Hound", class={ "HUNTER" },
					spell={ "Hit and Run" }, guide={ ns.hunter.hitAndRun }, tip="These are L60", },
	[30002400] = { name="Scrolls", class={ "MAGE" }, tip=ns.mage.magmaLarva,
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,				
					quest={ 84396, }, questName={ "Magma or Larva" }, },
	[35202710] = { object=457099, name="Zirene's Guide to Getting Punched ", spell={ "Defense Specialization" }, ring=true, 
					class={ "DRUID", "PALADIN", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR" },
					guide=ns.ring.defense, tip=ns.ring.defenseTip, },
	[37006040] = { npc=7032, name="Greater Obsidian Elemental", class={ "SHAMAN" }, spell={ "Coherence" },
					guide={ ns.shaman.coherence }, tip="These are more locations", },
	[39603380] = { name="Blackrock mobs (various)", class={ "WARRIOR" }, spell={ "Fresh Meat" },
					tip="Reference to the first warrior Indalamar of the Nurfed guild. He was also a Blizzard dev "
					.."and in fact designed the warriors. He released a video during WoW beta that showed him clean- "
					.."ing house in Blackrock Stronghold. So OP! Blizzard reacted by nerfing Warriors hard! "
					.."Travis Day R.I.P.\n\nExtra trivia: his brother was GM and you know "
					.."Noktyn who got the first/only Legendary amy, the Talisman of Binding Shard? Same guild! "
					.."Hayven Games (also R.I.P.) has an excellent video about the amulet", quest={ { 84124 } },
					questName={ { "Legacy of Valor" } }, guide={ "Kill five mobs with Execute. Just ensure "
						.."they really die from Execute.\n\nYou'll know you're done when you gain the "
						.."\"Rhythm of War\" buff.\n\nHead behind the Keep to the Altar of Reverence. /salute it.\n\n"
						.."Up pops the Revered Champion (L58-60e). Kill it, get the quest. Turn in at the "
						.."Altar et voilà! (Hits real hard!)" }, },
	[40203450] = { object=457101, name="The Rites of Mak'Gora", class={ "HUNTER", "PALADIN", "SHAMAN", "WARRIOR" },
					spell={ "Axe Specialization" }, ring=true,
					guide="On a ledge in the central pit of the Blackrock Stronghold. Loot FTW!", },
	[40606060] = { npc=227746, name="Escaped Core Hound", class={ "HUNTER" },
					spell={ "Hit and Run" }, guide={ ns.hunter.hitAndRun }, tip="These are L60", },
	[44204360] = { npc=7032, name="Greater Obsidian Elemental", class={ "SHAMAN" }, spell={ "Coherence" },
					guide={ ns.shaman.coherence }, tip="These are more locations", },
	[50803040] = { name="Blackrock Bootlegger & Sulfuron Smuggler", class={ "WARRIOR" }, spell={ "Shockwave" },
					quest={ { 84135, 84137, 84138, 84146, 84211, 84212, 84213,  } }, guide={ ns.warrior.shockwave },
					questName={ { "Beach Bot", "Mechanical Romance", "Frosty Favors", "Red Bag Blues", "Poacher's Den", 
						"Nookin' it Back", "Rift Away", } }, },
	[53002480] = { npc=218236, name="Red Bag", class={ "WARRIOR" }, spell={ "Shockwave" },
					quest={ { 84135, 84137, 84138, 84146, 84211, 84212, 84213,  } }, guide={ ns.warrior.shockwave },
					questName={ { "Beach Bot", "Mechanical Romance", "Frosty Favors", "Red Bag Blues", "Poacher's Den", 
						"Nookin' it Back", "Rift Away", } }, },
	[59002900] = { name="Begin here", class={ "WARRIOR" }, spell={ "Shockwave" },
					quest={ { 84135, 84137, 84138, 84146, 84211, 84212, 84213,  } }, guide={ ns.warrior.shockwave },
					questName={ { "Beach Bot", "Mechanical Romance", "Frosty Favors", "Red Bag Blues", "Poacher's Den", 
						"Nookin' it Back", "Rift Away", } }, },
	[63804980] = { npc=227746, name="Escaped Core Hound", class={ "HUNTER" },
					spell={ "Hit and Run" }, guide={ ns.hunter.hitAndRun }, tip="These are L60", },
	[65602960] = { npc=7032, name="Greater Obsidian Elemental", class={ "SHAMAN" }, spell={ "Coherence" },
					guide={ ns.shaman.coherence }, tip="These are more locations", },
	[70802890] = { npc=222288, name="Fel Rift", class={ "WARLOCK" },
					spell={ "Decimation" }, guide={ ns.warlock.decimation }, tip=ns.warlock.felRift, },
	[89005300] = { npc=227746, name="Escaped Core Hound", class={ "HUNTER" },
					spell={ "Hit and Run" }, guide={ ns.hunter.hitAndRun }, tip="These are L60", },
}
points[ 1430 ] = { -- Deadwind Pass
	[52003440] = { npc=218920, name="Dalaran Agent",
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR" },
					spell={ "King of the Jungle", "Melee Specialist", "Missile Barrage", "Infusion of Light",
					"Spirit of the Redeemer", "Waylay", "Two-Handed Mastery", "Demonic Knowledge",
					"Precise Timing" }, guide={ ns.dalaranAgent }, quest={ ns.dalaranQuest },
					questName={ ns.dalaranQuestName } },
	[43107460] = { object=457088, name="Advanced Swordplay", spell={ "Sword Specialization" }, ring=true, 
					class={ "HUNTER", "MAGE", "PALADIN", "ROGUE", "WARLOCK", "WARRIOR", }, guide=ns.ring.sword, },
	[43803380] = { npc=218931, name="Dalaran Agent", tip="Seen all along the top path plus north from here",
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR" },
					spell={ "King of the Jungle", "Melee Specialist", "Missile Barrage", "Infusion of Light",
					"Spirit of the Redeemer", "Waylay", "Two-Handed Mastery", "Demonic Knowledge", "Precise Timing" },
					guide={ ns.dalaranAgent }, quest={ ns.dalaranQuest }, questName={ ns.dalaranQuestName } },
	[47707830] = { object=457088, name="Advanced Swordplay", spell={ "Sword Specialization" }, tip="Use this entrance",
					class={ "HUNTER", "MAGE", "PALADIN", "ROGUE", "WARLOCK", "WARRIOR", }, guide=ns.ring.sword, ring=true, },
}
points[ 1426 ] = { -- Dun Morogh
	[18007450] = { name="Newman's Landing", class={ "PALADIN" }, spell={ "Sheath of Light" }, guide={ ns.paladin.sheathLight },
					quest={ { 79939, 79940, 79945, 79970 } },
					questName={ { "The Broken Hammer", "A Lost Brother", "Orders from the Grand Crusader",
					"Aeonas the Vindicated" } } },
	[21205380] = { npc=1124, name="Frostmane Shadowcaster", class={ "MAGE", "PRIEST", "WARLOCK", "WARRIOR" },				
					spell={ "Living Flame", "Homunculi", "Demonic Grace", "Devastate" }, faction="Alliance",
					guide={ ns.mage.livingFlame, ns.priest.citadel, ns.warlock.grace ..ns.warlock.graceDM,
							ns.warrior.devastate ..ns.warrior.devastateJunni },
					tip={ nil, nil, "Ominous Tome", "Severed Troll Head"} },
	[21607360] = { npc=724, name="Burly Rockjaw Trogg", class={ "ROGUE" }, faction="Alliance",
					tip="Pick Pocket Top-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM } },
	[22005300] = { name="Frostmane mobs (Various)", class={ "ROGUE" }, faction="Alliance",
					tip="Pick Pocket Top-Right Map Piece", spell={ "Quick Draw" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM } },
	[22607840] = { npc=706, name="Frostmane Troll Whelp", class={ "PALADIN", "ROGUE", "WARRIOR" }, faction="Alliance",
					tip={ nil, "Pick Pocket Top-Right Map Piece", nil },
					spell={ "Crusader Strike", "Quick Draw", "Victory Rush" },
					quest={ 77657, {}, ( ( ns.race == "Dwarf" ) and 77655 or 77656 ) },
					questName={ "Relics of the Light", {}, "The Lost Rune" },
					guide={ ns.paladin.judgement, ns.rogue.quickDraw ..ns.rogue.quickDrawDM, ns.starterZoneClass } },
	[23407860] = { name="Ragged Wolf (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[24607440] = { npc=724, name="Burly Rockjaw Trogg", class={ "ROGUE" }, faction="Alliance",
					tip="Pick Pocket Top-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM } },
	[25405100] = { npc=1124, name="Frostmane Shadowcaster", faction="Alliance", class={ "MAGE", "PRIEST", "WARLOCK", "WARRIOR" },
					spell={ "Living Flame", "Homunculi", "Demonic Grace", "Devastate" },
					guide={ ns.mage.livingFlame, ns.priest.citadel, ns.warlock.grace ..ns.warlock.graceDM,
							ns.warrior.devastate ..ns.warrior.devastateJunni },
					tip={ nil, nil, "Ominous Tome", "Severed Troll Head"} },
	[25604350] = { npc=208802, name="Wounded Adventurer", class={ "PALADIN" }, faction="Alliance",
					spell={ "Aegis" }, guide={ ns.paladin.runeOfAegis } }, 
	[25804440] = { npc=8503, name="Gibblewilt", class={ "PRIEST" }, faction="Alliance",
					spell={ "Shared Pain" }, guide={ ns.priest.sharedPain } },
	[26006940] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[26607440] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[26737255] = { object=405633, name="Rockjaw Footlocker", class={ "MAGE", "PRIEST", "WARLOCK" },  faction="Alliance",
					spell={ "Ice Lance", "Penance", "Haunt" },
					guide={ ns.starterZoneClass, ns.starterZoneClass ..ns.priest.penanceDM, ns.starterZoneClass },
					quest={ 77667, 77661, 77666 }, questName={ "Spell Research", "Meditation on the Light", "Stolen Power" } },
	[26807620] = { name="Ragged Wolf (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[27007840] = { npc=706, name="Frostmane Troll Whelp", class={ "PALADIN", "ROGUE", "WARRIOR" }, faction="Alliance",
					tip={ nil, "Pick Pocket Top-Right Map Piece", nil },
					spell={ "Crusader Strike", "Quick Draw", "Victory Rush" },
					quest={ 77657, {}, ( ( ns.race == "Dwarf" ) and 77655 or 77656 ) },
					questName={ "Relics of the Light", {}, "The Lost Rune" },
					guide={ ns.paladin.judgement, ns.rogue.quickDraw ..ns.rogue.quickDrawDM, ns.starterZoneClass } },
	[27603700] = { npc=1211, name="Leper Gnome", class={ "PRIEST", "ROGUE" }, faction="Alliance",
					tip={ nil, "Pick pocket and kill. Bottom-Right Map Piece" }, spell={ "Void Plague", "Quick Draw" }, 
					guide={ ns.priest.voidPlague, ns.rogue.quickDraw .. ns.rogue.quickDrawDM } },
	[27607560] = { npc=6113, name="Vejrek", class={ "WARRIOR" }, faction="Alliance",
					tip="The quest is a normal levelling quest, for your convenience. "
						.."Obtain from Muren Stormpike, Military Wing, Ironforge",
					quest={ 1679 }, questName={ "Vejrek" }, spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[28376751] = { npc=916, name="Solm Hargrin", class={ "ROGUE" }, faction="Alliance", tip="Inside Anvlimar",
					quest={ ( ( ns.class == "DWARF" ) and 77658 or 77659 ) }, questName={ "Thrice Stolen" },
					spell={ "Shadowstrike" }, guide={ ns.starterZoneClass } },
	[28606638] = { npc=837, name="Branstock Khalder", class={ "PRIEST" }, faction="Alliance", tip="Inside Anvilmar",
					quest={ 77661 }, questName={ "Meditation on the Light" },
					spell={ "Penance" }, guide={ ns.starterZoneClass ..ns.priest.penanceDM } },
	[28656615] = { npc=460, name="Alamar Grimm", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Haunt" }, guide={ ns.starterZoneClass }, quest={ 77666 },
					questName={ "Stolen Power" } },
	[28716637] = { npc=944, name="Marryk Nurribit", class={ "MAGE" },
					quest={ 77667 }, questName={ "Spell Research" },
					faction="Alliance", spell={ "Ice Lance" }, guide={ ns.starterZoneClass } },
	[28854986] = { npc=208975, name="Rustling Bush", class={ "HUNTER" }, faction="Alliance",
					spell={ "Master Marksman" }, guide={ ns.hunter.masterMark } },
	[28808060] = { npc=706, name="Frostmane Troll Whelp", class={ "PALADIN", "ROGUE", "WARRIOR" }, faction="Alliance",
					tip={ nil, "Pick Pocket Top-Right Map Piece", nil },
					spell={ "Crusader Strike", "Quick Draw", "Victory Rush" },
					quest={ 77657, {}, ( ( ns.race == "Dwarf" ) and 77655 or 77656 ) },
					questName={ "Relics of the Light", {}, "The Lost Rune" },
					guide={ ns.paladin.judgement, ns.rogue.quickDraw ..ns.rogue.quickDrawDM, ns.starterZoneClass } },
	[28836724] = { npc=912, name="Thran Khorman", class={ "WARRIOR" }, rfaction="Alliance",
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass },
					quest={ ( ( ns.race == "Dwarf" ) and 77655 or 77656 ) } },
	[28836833] = { npc=926, name="Bromos Grummner", class={ "PALADIN" }, faction="Alliance",
					spell={ "Crusader Strike" }, quest={ 77657 }, questName={ "Relics of the Light" }, tip="Inside Anvilmar",
					guide={ ns.paladin.judgement } },
	[29186745] = { npc=895, name="Thorgas Grimson", class={ "HUNTER" }, faction="Alliance", tip="Inside Anvlimar",
					quest={ 77660 }, questName={ "Trek Through the Caves" },
					spell={ "Chimera Shot" }, guide={ ns.starterZoneClass } },
	[29404260] = { npc=1119, name="Fyodi", class={ "HUNTER", "MAGE", "WARRIOR" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.mage.fingers, ns.warrior.furiousThunder } },
	[29807460] = { name="Ragged Wolf (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[30008240] = { npc=946, name="Frostmane Novice", class={ "ROGUE" }, faction="Alliance",
					tip="Pick Pocket Top-Right Map Piece", spell={ "Quick Draw" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM } },
	[30607500] = { npc=724, name="Burly Rockjaw Trogg", class={ "ROGUE" }, faction="Alliance",
					tip="Pick Pocket Top-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM } },
	[30748008] = { object=405628, name="Frostmane Loot Cache", class={ "HUNTER", "ROGUE" }, faction="Alliance",
					quest={ 77660, ( ( ns.class == "DWARF" ) and 77658 or 77659 ) },
					questName={ "Trek Through the Caves", "Thrice Stolen" },
					spell={ "Chimera Shot", "Shadowstrike" }, guide={ ns.starterZoneClass },
					tip="Behind Grik'nir the Cold, deep in the cave" },
	[31607000] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[31804400] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[32803980] = { npc=1132, name="Timber", class={ "HUNTER", "MAGE" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost" }, guide={ ns.hunter.explosiveShot, ns.mage.fingers } },
	[32404020] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[33404540] = { npc=1132, name="Timber", class={ "HUNTER", "MAGE" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost" }, 
					guide={ ns.hunter.explosiveShot, ns.mage.fingers } },
	[35203500] = { npc=1119, name="Fyodi", class={ "HUNTER", "MAGE", "WARRIOR" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.mage.fingers, ns.warrior.furiousThunder } },
	[35604500] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[36003880] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[37203880] = { npc=1132, name="Timber", class={ "HUNTER", "MAGE" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost" }, 
					guide={ ns.hunter.explosiveShot, ns.mage.fingers } },
	[37904250] = { npc=208812, name="Jorul", class={ "HUNTER" }, spell={ "Flanking Strike" },
					guide={ ns.hunter.flankingStrike }, tip="Farm Dun Morogh Pig Meat from nearby boars" },
	[38405400] = { npc=1271, name="Old Icebeard", class={ "HUNTER", "MAGE", "WARRIOR" }, faction="Alliance",
					tip="Six minutes in the cave, 45 seconds outside. Cycle",
					spell={ "Explosive Shot", "Fingers of Frost", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.mage.fingers, ns.warrior.furiousThunder } },
	[39604600] = { npc=1137, name="Edan the Howler", class={ "HUNTER", "MAGE", "WARRIOR" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost", "Furious Thunder" }, tip="In the Grizzled Den",
					guide={ ns.hunter.explosiveShot, ns.mage.fingers, ns.warrior.furiousThunder } },
	[40603660] = { npc=1397, name="Frostmane Seer", faction="Alliance", class={ "MAGE", "PRIEST", "WARLOCK", "WARRIOR" },
					spell={ "Living Flame", "Homunculi", "Demonic Grace", "Devastate" },
					guide={ ns.mage.livingFlame, ns.priest.citadel, ns.warlock.grace ..ns.warlock.graceDM,
							ns.warrior.devastate ..ns.warrior.devastateJunni },
					tip={ nil, nil, "Ominous Tome", "Severed Troll Head" } },
	[40604340] = { npc=1397, name="Frostmane Seer", faction="Alliance", class={ "MAGE", "PRIEST", "WARLOCK", "WARRIOR" },
					spell={ "Living Flame", "Homunculi", "Demonic Grace", "Devastate" },
					guide={ ns.mage.livingFlame, ns.priest.citadel, ns.warlock.grace ..ns.warlock.graceDM,
							ns.warrior.devastate ..ns.warrior.devastateJunni },
					tip={ nil, nil, "Ominous Tome", "Severed Troll Head" } },
	[41403600] = { name="Frostmane mobs (Various)", class={ "ROGUE" }, faction="Alliance",
					tip="Pick Pocket Top-Right Map Piece", spell={ "Quick Draw" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM } },
	[41405560] = { npc=1134, name="Young Wendigo", faction="Alliance", class={ "WARLOCK", "WARRIOR" },
					spell={ "Demonic Grace", "Devastate" },
					guide={ ns.warlock.grace ..ns.warlock.graceDM, ns.warrior.devastate  ..ns.warrior.devastateJunni },
					tip={ "Wendigo Blood", "Severed Wendigo Paw"} },
	[41604380] = { name="Frostmane mobs (Various)", class={ "ROGUE" }, faction="Alliance",
					tip="Pick Pocket Top-Right Map Piece", spell={ "Quick Draw" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM } },
	[41805140] = { npc=1135, name="Wendigo", faction="Alliance", class={ "WARLOCK", "WARRIOR" },
					spell={ "Demonic Grace", "Devastate" },
					guide={ ns.warlock.grace ..ns.warlock.graceDM, ns.warrior.devastate  ..ns.warrior.devastateJunni },
					tip={ "Wendigo Blood", "Severed Wendigo Paw"} },
	[42004560] = { npc=1397, name="Frostmane Seer", faction="Alliance", class={ "MAGE", "PRIEST", "WARLOCK", "WARRIOR" },
					spell={ "Living Flame", "Homunculi", "Demonic Grace", "Devastate" },
					guide={ ns.mage.livingFlame, ns.priest.citadel, ns.warlock.grace ..ns.warlock.graceDM,
							ns.warrior.devastate ..ns.warrior.devastateJunni },
					tip={ nil, nil, "Ominous Tome", "Severed Troll Head" } },
	[42203560] = { npc=204070, name="Soboz", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Shimmer Ridge" },
	[42204740] = { npc=1135, name="Wendigo", faction="Alliance", class={ "WARLOCK", "WARRIOR" },
					spell={ "Demonic Grace", "Devastate" },
					guide={ ns.warlock.grace ..ns.warlock.graceDM, ns.warrior.devastate  ..ns.warrior.devastateJunni },
					tip={ "Wendigo Blood", "Severed Wendigo Paw"} },
	[42603380] = { npc=1397, name="Frostmane Seer", faction="Alliance", class={ "MAGE", "PRIEST", "WARLOCK", "WARRIOR" },
					spell={ "Living Flame", "Homunculi", "Demonic Grace", "Devastate" },
					guide={ ns.mage.livingFlame, ns.priest.citadel, ns.warlock.grace ..ns.warlock.graceDM,
							ns.warrior.devastate ..ns.warrior.devastateJunni},
					tip={ nil, nil, "Ominous Tome", "Severed Troll Head" } },
	[43004760] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[43004960] = { npc=204827, name="Adventurer's Remains", class={ "DRUID", "PALADIN", "PRIEST", "SHAMAN" }, faction="Alliance",
					spell={ "Lifebloom", "Inspiration Exemplar", "Prayer of Mending", "Ancestral Guidance" }, 
					guide={ ns.woundedAdventurer }, tip="In the Grizzled Den" },
	[43204960] = { npc=1137, name="Edan the Howler", class={ "HUNTER", "MAGE", "WARRIOR" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.mage.fingers, ns.warrior.furiousThunder } },
	[43605560] = { npc=1134, name="Young Wendigo", faction="Alliance", class={ "WARLOCK", "WARRIOR" },
					spell={ "Demonic Grace", "Devastate" },
					guide={ ns.warlock.grace ..ns.warlock.graceDM, ns.warrior.devastate  ..ns.warrior.devastateJunni },
					tip={ "Wendigo Blood", "Severed Wendigo Paw"} },
	[45604320] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[46604760] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[46615334] = { npc=208652, name="Junni Steelpass", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateJunni } },
	[46964373] = { name="Rune of Quick Draw", faction="Alliance", class={ "ROGUE" }, tip="Final Rune location. Under a bridge",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[47005200] = { object=387466, name="Rusty Lockbox", class={ "ROGUE" }, faction="Alliance",
					spell={ "Slaughter from the Shadows" }, guide={ ns.rogue.slaughter },
					tip="On the roof of the Inn" },
	[47355355] = { npc=209002, name="Gaklik Voidtwist", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Soul Siphon" }, guide={ ns.warlock.soulSiphon } },
	[50004580] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[50605160] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[528057900] = { npc=1130, name="Bjarn", class={ "MAGE" }, faction="Alliance",
					spell={ "Fingers of Frost" }, guide={ ns.mage.fingers } },
	[51804000] = { name="Wolves (Various)", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDM }, tip="Wolf Jawbone" },
	[51804180] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[53804720] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[54983192] = { npc=214099, name="Tamelyn Aldridge", faction="Alliance",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[56705850] = { npc=1130, name="Bjarn", class={ "MAGE" }, faction="Alliance",
					spell={ "Fingers of Frost" }, guide={ ns.mage.fingers } },
	[57264523] = { npc=208886, name="Blackrat", class={ "ROGUE" }, faction="Alliance", tip="Stealthed. In the boat",
					spell={ "Mutilate" }, guide={ ns.rogue.mutilate } },
	[50805940] = { npc=1130, name="Bjarn", class={ "MAGE" }, faction="Alliance",
					spell={ "Fingers of Frost" }, guide={ ns.mage.fingers } },
	[60106080] = { npc=1130, name="Bjarn", class={ "MAGE" }, faction="Alliance",
					spell={ "Fingers of Frost" }, guide={ ns.mage.fingers } },
	[59412327] = { object=405946, name="Dusty Chest", class={ "ROGUE" }, faction="Alliance", guide={ ns.rogue.precision },
					tip="In an alcove to the right of the stairs", spell={ "Slaughter from the Shadows" } },
	[59804940] = { npc=1388, name="Vagash", class={ "HUNTER", "MAGE", "WARRIOR" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.mage.fingers, ns.warrior.furiousThunder } },
	[62604620] = { npc=1388, name="Vagash", class={ "HUNTER", "MAGE", "WARRIOR" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.mage.fingers, ns.warrior.furiousThunder } },
	[62605640] = { npc=1130, name="Bjarn", class={ "MAGE" }, faction="Alliance",
					spell={ "Fingers of Frost" }, guide={ ns.mage.fingers } },
	[62723345] = { npc=5570, name="Bruuk Barleybeard", class={ "WARRIOR" }, faction="Alliance",					
					spell={ "Frenzied Assault" }, guide={ ns.warrior.frenziedAssault },
					tip="Speak to Bruuk first, and then speak to Bruart, who is nearby. "
						.."They are in the inn Bruuk's Corner, to the left of the "
						.."entrance to the Military Wing" },
	[63282278] = { object=386691, name="Library Book", class={ "MAGE" }, faction="Alliance",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 79091, }, questName={ "Archmage Antonidas: The Unabridged Autobiography", },
					tip="The Ironforge Library of course!" },
	[63605020] = { npc=208711, name="Toby", class={ "HUNTER" }, spell={ "Carve" },
					guide={ ns.hunter.carve } },
	[65005960] = { npc=1130, name="Bjarn", class={ "MAGE" }, faction="Alliance",
					spell={ "Fingers of Frost" }, guide={ ns.mage.fingers } },
	[67005960] = { name="Rockjaw mobs (Various)", class={ "ROGUE", "WARRIOR" }, faction="Alliance",
					tip={ "Pick Pocket Top-Left Map Piece", "Pristine Trogg Heart" }, spell={ "Quick Draw", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM, ns.warrior.devastate ..ns.warrior.devastateJunni } },
	[69405220] = { name="Rockjaw mobs (Various)", class={ "ROGUE", "WARRIOR" }, faction="Alliance",
					tip={ "Pick Pocket Top-Left Map Piece", "Pristine Trogg Heart" }, spell={ "Quick Draw", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM, ns.warrior.devastate ..ns.warrior.devastateJunni } },
	[69605820] = { npc=208752, name="Frozen Trogg", class={ "MAGE", "WARLOCK" }, faction="Alliance",
					tip="Needs about five separate Fire debuffs to defrost",
					spell={ "Burnout", "Chaos Bolt" }, guide={ ns.frozen } },
	[69805900] = { npc=1118, name="Rockjaw Trogg mobs (Various)", class={ "HUNTER" }, spell={ "Carve" },
					guide={ ns.hunter.carve } },
	[70005640] = { name="Rockjaw mobs (Various)", class={ "ROGUE", "WARRIOR" }, faction="Alliance",
					tip={ "Pick Pocket Top-Left Map Piece", "Pristine Trogg Heart" }, spell={ "Quick Draw", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM, ns.warrior.devastate ..ns.warrior.devastateJunni } },
	[71805040] = { name="Rockjaw mobs (Various)", class={ "ROGUE", "WARRIOR" }, faction="Alliance",
					tip={ "Pick Pocket Top-Left Map Piece", "Pristine Trogg Heart" }, spell={ "Quick Draw", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM, ns.warrior.devastate ..ns.warrior.devastateJunni } },
	[72605140] = { npc=1119, name="Hammerspine", class={ "MAGE", "PRIEST" }, faction="Alliance",
					spell={ "Fingers of Frost", "Shared Pain" }, guide={ ns.mage.fingers, ns.priest.sharedPain } },
	[73005920] = { name="Rockjaw mobs (Various)", class={ "ROGUE", "WARRIOR" }, faction="Alliance",
					tip={ "Pick Pocket Top-Left Map Piece", "Pristine Trogg Heart" }, spell={ "Quick Draw", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM, ns.warrior.devastate ..ns.warrior.devastateJunni } },
	[75005800] = { name="Rockjaw mobs (Various)", class={ "ROGUE", "WARRIOR" }, faction="Alliance",
					tip={ "Pick Pocket Top-Left Map Piece", "Pristine Trogg Heart" }, spell={ "Quick Draw", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDM, ns.warrior.devastate ..ns.warrior.devastateJunni } },
	[77506080] = { npc=6123, name="Dark Iron Spy", class={ "ROGUE", "ROGUE" }, faction="Alliance", tip="Pickpocket",
					tip={ nil, "Pp and kill. Bottom-Left Map Piece" }, spell={ "Mutilate", "Quick Draw" },
					guide={ ns.rogue.mutilate, ns.rogue.quickDraw ..ns.rogue.quickDrawDM } },
	[78206230] = { npc=6124, name="Captain Beld", class={ "PRIEST", "WARLOCK" }, faction="Alliance",
					spell={ "Shared Pain", "Soul Siphon" }, guide={ ns.priest.sharedPain, ns.warlock.soulSiphon } },
	[79003710] = { npc=1961, name="Mangeclaw", class={ "HUNTER", "MAGE" }, faction="Alliance",
					spell={ "Explosive Shot", "Fingers of Frost" }, 
					guide={ ns.hunter.explosiveShot, ns.mage.fingers } },
}
points[ 1431 ] = { -- Duskwood
	[04402840] = { npc=205153, name="Ada Gelhardt", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Light" }, guide={ ns.paladin.martyrdom } },
	[16702850] = { object=409735, name="Spellbook", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 78147, }, questName={ "Crimes Against Anatomy", },
					tip="In the last room of the Dawning Wood Catacombs. The western building" },
	[17603740] = { object=411328, name="Slumbering Bones", class={ "MAGE", "WARRIOR" },
					spell={ "Mass Regeneration", "Flagellation" }, guide={ ns.duskwoodCrypts },
					tip="This Crypt second" },
	[19904550] = { npc=215, name="Statue", class={ "ROGUE" },
					tip="/kneel here at the statue, after you obtain an Engraved Gold Ring",
					spell={ "Cutthroat" }, guide=ns.rogue.cutthroat },
	[21804640] = { npc=218931, name="Dark Rider", tip="Seen throughout the Raven Hill cemetary",
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "King of the Jungle", "Melee Specialist", "Missile Barrage",
					"Infusion of Light", "Spirit of the Redeemer", "Waylay", "Two-Handed Mastery", "Demonic Knowledge",
					"Precise Timing" }, guide={ ns.dalaranAgent }, quest={ ns.dalaranQuest },
					questName={ ns.dalaranQuestName } },
	[22606880] = { name="Defias Mobs (Various)", class={ "PALADIN", "PRIEST" },
					spell={ "Aura Mastery", "Circle of Healing" }, guide={ ns.paladin.banishment, ns.priest.circle } },
	[22806560] = { npc=215, name="Defias Night Runner", class={ "ROGUE" },
					tip="Pp to obtain a Engraved Gold Ring",
					spell={ "Cutthroat" }, guide=ns.rogue.cutthroat },
	[22836560] = { name="Defias Mobs (Various)", class={ "PALADIN" }, faction="Alliance", -- offset to avoid duplicate pin
					spell={ "Aura Mastery" }, guide={ ns.paladin.banishment } },
	[23607320] = { name="Defias Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Aura Mastery" }, guide={ ns.paladin.banishment } },
	[26003090] = { object=411348, name="Dusty Coffer", class={ "MAGE", "WARRIOR" },
					spell={ "Mass Regeneration", "Flagellation" }, guide={ ns.duskwoodCrypts },
					tip="This Crypt first" },
	[45605120] = { name="Quartermaster Falinar / Field Captain Palandar", class=ns.allClass, spell=ns.emeraldSpell,
					guide={ ns.nightmareIncursions } },
	[50607540] = { name="Defias Mobs (Various)", class={ "PALADIN", "PRIEST" },
					spell={ "Aura Mastery", "Circle of Healing" }, guide={ ns.paladin.banishment, ns.priest.circle } },
	[50807100] = { npc=215, name="Defias Night Runner", class={ "ROGUE" },
					tip="Pp to obtain a Engraved Gold Ring",
					spell={ "Cutthroat" }, guide=ns.rogue.cutthroat },
	[61403040] = { item=210043, name="Symbol of the Second Owl", class={ "DRUID" },
					spell={ "Wild Growth" }, guide={ ns.druid.wildGrowth }, tip=ns.agon },
	[65003440] = { item=210043, name="Symbol of the Second Owl", class={ "DRUID" },
					spell={ "Wild Growth" }, guide={ ns.druid.wildGrowth }, tip=ns.agon },
	[65402600] = { item=210043, name="Symbol of the Second Owl", class={ "DRUID" },
					spell={ "Wild Growth" }, guide={ ns.druid.wildGrowth }, tip=ns.agon },
	[67202940] = { item=210043, name="Symbol of the Second Owl", class={ "DRUID" },
					spell={ "Wild Growth" }, guide={ ns.druid.wildGrowth }, tip=ns.agon },
	[91103060] = { name="Secluded Grave", class={ "PRIEST" },
					spell={ "Circle of Healing" }, guide={ ns.priest.circle } },
}
points[ 1423 ] = { -- Eastern Plaguelands
	[14753050] = { object=856874, name="Sending Pillar", class={ "ROGUE" }, spell={ "Blunderbuss" },
					guide={ ns.rogue.blunderbuss }, tip="Step (4) The fourth pillar. Above the spider cave entrance" },
	[18203320] = { npc=16117, name="Plagued Swine", class={ "HUNTER" }, spell={ "Resourcefulness" },
					guide={ ns.hunter.resourceful }, tip="You want 1 x Tainted Boar Meat" },
	[26307470] = { object=457090, name="Famous (and Infamous) Rangers of Azeroth", spell={ "Ranged Weapon Specialization" }, 
					class={ "HUNTER", "ROGUE", "WARRIOR", },  ring=true,
					guide="Left of the doorway at Marris Stead in Eastern Plaguelands.\n\n"
					.."Nathanos Blightcaller (L62e) and his two Blighthounds (L58-59e) are Horde friendly", },
	[27608600] = { npc=229018, name="Rotting Dwarf Corpse", class={ "PALADIN", }, spell={ "Shield of Righteousness" },
					guide={ ns.paladin.righteousness }, quest={ { 84318, 84319, 84330, 84414, 84332 } },
					tip="Step (5) Undercroft",
					questName={ { "Oil", "Oh No Ye Don't!", "A Wee Bit O' Necromancy", "Send Me On Me Way!",
					"A Thane's Gratitude" } }, },
	[29608180] = { npc=228620, name="Slack-Jawed Ghoul", class={ "PALADIN", }, spell={ "Shield of Righteousness" },
					guide={ ns.paladin.righteousness }, quest={ { 84318, 84319, 84330, 84414, 84332 } }, tip="Step (1)",
					questName={ { "Oil", "Oh No Ye Don't!", "A Wee Bit O' Necromancy", "Send Me On Me Way!",
					"A Thane's Gratitude" } }, },
	[30103290] = { npc=222288, name="Fel Rift", class={ "WARLOCK" },
					tip="6 ring the outer limits of the Plaguewood. " ..ns.warlock.felRift, 
					spell={ "Decimation" }, guide={ ns.warlock.decimation }, },
	[31002000] = { npc=10438, name="Maleki the Pallid", class={ "PALADIN", }, spell={ "Shield of Righteousness" },
					guide={ ns.paladin.righteousness }, quest={ { 84318, 84319, 84330, 84414, 84332 } },
					tip="Step (4) Inside Stratholme. 5th boss - Service Gate wing",
					questName={ { "Oil", "Oh No Ye Don't!", "A Wee Bit O' Necromancy", "Send Me On Me Way!",
					"A Thane's Gratitude" } }, },
	[35803560] = { name="Abominations/Stitched Horrors", class={ "PALADIN", }, spell={ "Shield of Righteousness" },
					guide={ ns.paladin.righteousness }, quest={ { 84318, 84319, 84330, 84414, 84332 } }, tip="Step (3)",
					questName={ { "Oil", "Oh No Ye Don't!", "A Wee Bit O' Necromancy", "Send Me On Me Way!",
					"A Thane's Gratitude" } }, },
	[37605760] = { name="Abominations/Stitched Horrors", class={ "PALADIN", }, spell={ "Shield of Righteousness" },
					guide={ ns.paladin.righteousness }, quest={ { 84318, 84319, 84330, 84414, 84332 } }, tip="Step (3)",
					questName={ { "Oil", "Oh No Ye Don't!", "A Wee Bit O' Necromancy", "Send Me On Me Way!",
					"A Thane's Gratitude" } }, },
	[40009200] = { object=856876, name="Sending Pillar", class={ "ROGUE" }, spell={ "Blunderbuss" },
					guide={ ns.rogue.blunderbuss },
					tip="Step (2) The second pillar. It's on a small hill near the wrecked building" },
	[42007960] = { npc=228620, name="Slack-Jawed Ghoul", class={ "PALADIN", }, spell={ "Shield of Righteousness" },
					guide={ ns.paladin.righteousness }, quest={ { 84318, 84319, 84330, 84414, 84332 } }, tip="Step (1)",
					questName={ { "Oil", "Oh No Ye Don't!", "A Wee Bit O' Necromancy", "Send Me On Me Way!",
					"A Thane's Gratitude" } }, },
	[61006780] = { name="Abominations/Stitched Horrors", class={ "PALADIN", }, spell={ "Shield of Righteousness" },
					guide={ ns.paladin.righteousness }, quest={ { 84318, 84319, 84330, 84414, 84332 } }, tip="Step (3)",
					questName={ { "Oil", "Oh No Ye Don't!", "A Wee Bit O' Necromancy", "Send Me On Me Way!",
					"A Thane's Gratitude" } }, },
	[61306920] = { object=461639, name="Orthas' Hammer", class={ "PALADIN", }, spell={ "Shield of Righteousness" },
					guide={ ns.paladin.righteousness }, quest={ { 84318, 84319, 84330, 84414, 84332 } },
					tip="Step (2) Corrin's Crossing",
					questName={ { "Oil", "Oh No Ye Don't!", "A Wee Bit O' Necromancy", "Send Me On Me Way!",
					"A Thane's Gratitude" } }, },
	[31251950] = { name="Stratholme Live Side (Main Entrance)", class={ "PRIEST" },
					spell={ "Soul Warding" }, guide={ ns.priest.soulWarding }, },
	[31252100] = { object=463212, name="Scrolls", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="On the table right before the bridge to Stratholme",
					quest={ 84401, }, questName={ "Scourge: Undead Menace or Misunderstood?" }, },
	[54505120] = { object=463208, name="Scrolls", class={ "MAGE" }, tip="In a small house",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ { 84400 } }, questName={ { "The Knight and the Lady" } } },
	[54607020] = { name="Living Decay / Rotting Sludge", class={ "HUNTER" }, spell={ "Resourcefulness" },
					guide={ ns.hunter.resourceful }, tip="You want 1 x Bubbling Green Ichor" },
	[62200750] = { object=456883, name="Adon's Trunk", class={ "ROGUE" }, spell={ "Blunderbuss" },
					guide={ ns.rogue.blunderbuss }, tip="Step (5) Grab your phat lewt!" },
	[66606660] = { npc=8603, name="Carrion Grub", class={ "HUNTER" }, spell={ "Resourcefulness" },
					guide={ ns.hunter.resourceful }, tip="They are literally everywhere. This is just one example" },
	[70003500] = { object=856874, name="Sending Pillar", class={ "ROGUE" }, spell={ "Blunderbuss" },
					guide={ ns.rogue.blunderbuss }, tip="Step (3) The third pillar" },
	[76006060] = { name="Living Decay / Rotting Sludge", class={ "HUNTER" }, spell={ "Resourcefulness" },
					guide={ ns.hunter.resourceful }, tip="You want 1 x Bubbling Green Ichor" },
	[80808520] = { object=179498, name="Scarlet Footlocker", class={ "ROGUE" }, spell={ "Blunderbuss" },
					guide={ ns.rogue.blunderbuss }, tip="Step (0) pick these until a Sending Sigil drops" },
	[81705780] = { object=463207, name="Scrolls", class={ "MAGE" }, tip="Back left corner of Light's Hope Chapel",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,				
					quest={ 84398, }, questName={ "A Study of the Light" }, },
	[82005800] = { object=856874, name="Sending Pillar", class={ "ROGUE" }, spell={ "Blunderbuss" },
					guide={ ns.rogue.blunderbuss }, tip="Step (1) The first pillar" },
	[82008400] = { item=228912, name="Artifact Storage Key", class={ "PRIEST" }, spell={ "Binding Heal" },
					quest={ ( ( ns.faction == "Alliance" ) and { 84320, 84321, 84322, 84323 } or
					{ 84405, 84406, 84322, 84407 } ) }, guide={ ns.priest.bindingHeal },
					questName={ { "Lost Heirloom", "Relic of Light", "Scarlet Research", "The Prize Within", } }, },
	[82908470] = { object=179498, name="Scarlet Footlocker", class={ "ROGUE" }, spell={ "Blunderbuss" },
					guide={ ns.rogue.blunderbuss }, tip="Step (0) pick these until a Sending Sigil drops" },
	[83507950] = { object=459388, name="Artifact Cache", class={ "PRIEST" }, spell={ "Binding Heal" },
					quest={ ( ( ns.faction == "Alliance" ) and { 84320, 84321, 84322, 84323 } or
					{ 84405, 84406, 84322, 84407 } ) }, guide={ ns.priest.bindingHeal },
					questName={ { "Lost Heirloom", "Relic of Light", "Scarlet Research", "The Prize Within", } }, },
	[83607820] = { object=457094, name="The True Nature of the Light", spell={ "Holy Specialization" }, ring=true, 
					class={ "PALADIN", "PRIEST", },
					guide="As per the pin, enter the Abbey and turn left, making for the library wing.\n\n"
					.."The book is on top of a bookshelf which is next to a staircase.\n\n"
					.."Note that if you die and rez on the first landing, you'll be out of LoS of the mobs "
					.."for an easy loot and hearth!", },
	[83607930] = { object=179498, name="Scarlet Footlocker", class={ "ROGUE" }, spell={ "Blunderbuss" },
					guide={ ns.rogue.blunderbuss }, tip="Step (0) pick these until a Sending Sigil drops "
						.."There might be 2 or 3 in this area" },
	[85004070] = { npc=222288, name="Fel Rift", class={ "WARLOCK" },
					tip="5 are in this area. " ..ns.warlock.felRift, 
					spell={ "Decimation" }, guide={ ns.warlock.decimation }, },
	[86603960] = { npc=227985, name="Arkonos the Cursed", class={ "PALADIN", "PALADIN", },
					spell={ "Shock and Awe", "Avenging Wrath" },
					guide={ ns.paladin.shockAwe, ns.paladin.avengingWrath },
					tip="The Scourge Shadow Scalpel will drop from the Shadowmage and Dread Weaver mobs",
					quest={ { 83936, 83823, 84008, 84017, 84125, 84126 }, { 84126 } },
					questName={ { "Dalton's Quest", "A Lesson in Violence", "A Lesson in Grace", "A Time to Kill", 
						"Close Enough to Touch", "Finish the Fight" }, { "Finish the Fight" }, }, },
	[86708320] = { object=179498, name="Scarlet Footlocker", class={ "ROGUE" }, spell={ "Blunderbuss" },
					guide={ ns.rogue.blunderbuss }, tip="Step (0) pick these until a Sending Sigil drops" },
}
points[ 1429 ] = { -- Elwynn Forest
	[13213968] = { npc=203475, name="Liv Bradford", class={ "PALADIN", "WARRIOR" }, faction="Alliance",
					spell={ "Rebuke", "Frenzied Assault" },
					guide={ ns.livAndStuart, ns.warrior.frenziedAssault .."\n\n" ..ns.livAndStuart } },
	[14184463] = { npc=204070, name="Soboz", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF },
					tip="He's" ..ns.secretCoven ..".\n\nTake the ramp next to Gakin and descend "
						.."into the crypts. Take the first right turn and go down. Now the first left turn down. Voilà!\n\n"
						.."Stand on the magenta rune and summon!" },
	[14234510] = { npc=6122, name="Gakin the Darkbinder", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Soul Siphon" }, guide={ ns.warlock.soulSiphon }, tip="He's" ..ns.secretCoven },
	[14574457] = { npc=5495, name="Ursula Deline", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } }, tip="She's" ..ns.secretCoven,
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[18862699] = { npc=5492, name="Katherine the Pure", class={ "PALADIN", "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm", "Sheath of Light" }, tip="First room on the left",
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 79939, 79940, 79945, 79970 } },					
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Broken Hammer", "A Lost Brother",
						"Orders from the Grand Crusader", "Aeonas the Vindicated" } },
						guide={ ns.paladin.divineStorm, ns.paladin.sheathLight } },
	[17104563] = { npc=211033, name="Garion Wendell", class={ "MAGE", }, faction="Alliance", mageBook=true,
					spell=ns.mage.bookRunes, quest=ns.mage.bookQuestIDs, questName=ns.mage.bookQuestNames, 
					guide=ns.mage.books, tip="Tally", },
	[21104563] = { npc=211033, name="Garion Wendell", class={ "MAGE" }, faction="Alliance", mageBook=true,
					spell=ns.mage.bookRunes, quest=ns.mage.booksQuestIDsA, questName=ns.mage.booksQuestNamesA, 
					guide=ns.mage.books, },
	[19104563] = { npc=211033, name="Garion Wendell", class={ "MAGE" }, faction="Alliance",
					spell={ "Temporal Anomaly" }, guide={ ns.mage.temporal },
					quest={ { 82084 }, }, questName={ { "A Lesson in Literacy" }, }, },					
	[19212554] = { npc=205278, name="Brother Romulus", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Light" }, guide={ ns.paladin.martyrdom } },
	[22607320] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[23609180] = { npc=100, name="Gruff Swiftbite", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[24409460] = { name="Riverpaw Runt/Outrunner", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",				
					guide={ ns.warlock.grace ..ns.warlock.graceEF, ns.warrior.devastate ..ns.warrior.devastateVik },
					spell={ "Demonic Grace", "Devastate" }, tip={ "Gnoll Blood", "Severed Gnoll Head"} },
	[25408820] = { name="Riverpaw Runt/Outrunner", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					guide={ ns.warlock.grace ..ns.warlock.graceEF, ns.warrior.devastate ..ns.warrior.devastateVik },
					spell={ "Demonic Grace", "Devastate" }, tip={ "Gnoll Blood", "Severed Gnoll Head"} },
	[25573835] = { npc=213077, name="Elaine Compton", faction="Alliance",
					tip="Standing near the street corner, easily missed",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[25607420] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[26609360] = { npc=448, name="Hogger", class={ "MAGE", "WARLOCK", "WARRIOR" },
					spell={ "Fingers of Frost", "Soul Siphon", "Furious Thunder" },
					guide={ ns.mage.fingers, ns.warlock.soulSiphon, ns.warrior.furiousThunder },
					tip="Pin marks his camp. Frequently kited" },
	[26808620] = { npc=100, name="Gruff Swiftbite", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[27408020] = { npc=478, name="Riverpaw Outrunner", faction="Alliance", class={ "ROGUE" }, spell={ "Quick Draw" },
					tip="Pick Pocket or kill. Bottom-Left Map Piece", guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[27409200] = { npc=478, name="Riverpaw Outrunner", class={ "ROGUE" }, tip="Pick Pocket or kill. Bottom-Left Map Piece",
					faction="Alliance", spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[28009580] = { npc=100, name="Gruff Swiftbite", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[28362596] = { object=386777, name="Dusty Chest", class={ "ROGUE" }, faction="Alliance", guide={ ns.rogue.precision },
					spell={ "Slaughter from the Shadows" }, tip="Upper level of the house in Cutthroat Alley, Stormwind" },
	[29807480] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[30608300] = { name="Riverpaw Runt/Outrunner", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					guide={ ns.warlock.grace ..ns.warlock.graceEF, ns.warrior.devastate ..ns.warrior.devastateVik },
					spell={ "Demonic Grace", "Devastate" }, tip={ "Gnoll Blood", "Severed Gnoll Head"} },
	[30608820] = { npc=100, name="Gruff Swiftbite", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[31205720] = { npc=116, name="Defias Bandit", faction="Alliance", class={ "ROGUE" }, spell={ "Quick Draw" }, 
					tip="Pick Pocket or kill. Top-Left Map Piece", guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[31443441] = { npc=203226, name="Viktoria Woods", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVik }, },
	[41208820] = { name="Riverpaw Runt/Outrunner", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					guide={ ns.warlock.grace ..ns.warlock.graceEF, ns.warrior.devastate ..ns.warrior.devastateVik },
					spell={ "Demonic Grace", "Devastate" }, tip={ "Gnoll Blood", "Severed Gnoll Head"} },
	[36008260] = { npc=475, name="Kobold Tunneler", class={ "ROGUE", "WARRIOR" }, spell={ "Quick Draw", "Devastate" },
					tip={ "Pick Pocket or kill. Top-Right Map Piece", "Severed Kobold Head" }, faction="Alliance", 				
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF, ns.warrior.devastate ..ns.warrior.devastateVik } },
	[36208000] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[38607560] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[40808020] = { npc=40, name="Kobold Miner", faction="Alliance", class={ "PRIEST", "ROGUE", "WARRIOR" },
					tip={ nil, "Pick Pocket or kill. Top-Right Map Piece", "Severed Kobold Head" },
					spell={ "Shared Pain", "Quick Draw", "Devastate" },
					guide={ ns.priest.sharedPain, ns.rogue.quickDraw ..ns.rogue.quickDrawEF, 
							ns.warrior.devastate ..ns.warrior.devastateVik } },
	[41607600] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[41607800] = { npc=327, name="Goldtooth", class={ "PRIEST", "WARRIOR", "WARRIOR" }, faction="Alliance",
					spell={ "Void Plague", "Furious Thunder", "Devastate" }, tip={ nil, nil, "Severed Kobold Head" },
					guide={ ns.priest.voidPlague, ns.warrior.furiousThunder, ns.warrior.devastate ..ns.warrior.devastateVik } },
	[44096632] = { npc=204256, name="Damien Kane", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Soul Siphon" }, guide={ ns.warlock.soulSiphon },
					tip= "Basement of the Lion's Pride, hiding behind barrels. Or go upstairs for ERP. "
						.."Truly a Season of Discovery! :O" },
	[44396624] = { npc=906, name="Maximillian Crowe", class={ "WARLOCK" }, faction="Alliance",
					tip="Basement of the Lion's Pride, via the kitchen backroom",
					spell={ "Demonic Tactics" }, guide={ ns.warlock.tactics } },
	[46176213] = { object=387466, name="Rusty Lockbox", class={ "ROGUE" }, faction="Alliance",
					spell={ "Slaughter from the Shadows" }, guide={ ns.rogue.slaughter },
					tip="On the roof of the spooky house north of Goldshire. Next to the chimney so can be difficult to see. "
						.."Use the crates at the side of the house to jump" },
	[46807460] = { npc=116, name="Defias Bandit", faction="Alliance", tip="Pick Pocket or kill. Top-Left Map Piece",
					class={ "ROGUE" }, spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[48402920] = { npc=80, name="Kobold Laborer", class={ "PRIEST" }, faction="Alliance",
					tip="You want a Memory of a Troubled Acolyte to drop", spell={ "Penance" }, quest={ 77619 },
					guide={ ns.starterZoneClass ..ns.priest.penanceEF }, questName={ "Meditation on the Light" } },
	[49008320] = { name="Defias Bandit/Bodyguard", faction="Alliance", class={ "ROGUE" }, spell={ "Quick Draw" },
					tip="Pick Pocket or kill. Top-Left Map Piece", guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[49206560] = { name="Crystal Lake Murlocs (Various)", faction="Alliance", class={ "WARRIOR" }, tip="Severed Murloc Head",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVik } },
	[49663941] = { npc=198, name="Khelden Bremen", class={ "MAGE" }, faction="Alliance",
					tip="Enter the Abbey and bear left. He is upstairs in the Library Wing",
					spell={ "Ice Lance" }, guide={ ns.starterZoneClass }, quest={ 77620 }, questName={ "Spell Research" } },
	[49874265] = { npc=459, name="Drusilla La Salle", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Haunt" }, guide={ ns.starterZoneClass }, quest={ 77621 },
					questName={ "Stolen Power" } },
	[49985201] = { npc=201854, name="Cutty", class={ "ROGUE" }, faction="Alliance",
					tip="Stealthed. Outside of and leaning against the Northshire wall. Far eastern edge, past the river",
					spell={ "Mutilate" }, guide={ ns.rogue.mutilate } },
	[49813949] = { npc=915, name="Priestess Anetta", class={ "PRIEST" }, faction="Alliance", spell={ "Penance" },
					tip="Enter the Abbey and bear left. Enter the Library Wing and she's in the back room", quest={ 77619 }, 
					guide={ ns.starterZoneClass ..ns.priest.penanceEF }, questName={ "Meditation on the Light" } },
	[50003500] = { npc=257, name="Kobold Worker", faction="Alliance", class={ "ROGUE" }, spell={ "Quick Draw" }, 
					tip="Pick Pocket or kill. Top-Right Map Piece", guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[50406100] = { name="Crystal Lake Murlocs (Various)", faction="Alliance", class={ "WARRIOR" }, tip="Severed Murloc Head",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVik } },
	[50434212] = { npc=925, name="Brother Sammuel", class={ "PALADIN" }, faction="Alliance",
					tip="Enter the Abbey and bear right. In the Hall of Arms, a back room",
					spell={ "Crusader Strike" }, quest={ 77617 }, questName={ "Relics of the Light" },
					guide={ ns.paladin.judgement } },
	[50642727] = { object=397987, name="Kobold Stashbox", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass }, 
					tip="Go to the very back. Battered Chest can spawn nearby!", },
	[50313992] = { npc=915, name="Jorik Kerridan", class={ "ROGUE" }, faction="Alliance",
					tip="Skulking behind the Abbey in the stables",
					spell={ "Shadowstrike" }, guide={ ns.starterZoneClass }, quest={ 77618 }, questName={ "Thrice stolen" } },
	[52545192] = { object=387477, name="Defias Stashbox", class={ "ROGUE", "WARLOCK" }, faction="Alliance",
					tip="Between two dunnies, after the vineyard",
					spell={ "Shadowstrike", "Haunt" }, guide={ ns.starterZoneClass }, quest={ 77618, 77621 },
					questName={ "Thrice stolen", "Stolen Power" } },
	[53406220] = { name="Crystal Lake Murlocs (Various)", faction="Alliance", class={ "WARRIOR" }, tip="Severed Murloc Head",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVik } },
	[54004480] = { npc=38, name="Defias Thug", class={ "MAGE", "PALADIN" }, faction="Alliance",	
					spell={ "Ice Lance", "Crusader Strike" }, quest={ {}, { 77617 } },
					questName={ {}, { "Relics of the Light" } },
					guide={ ns.starterZoneClass, ns.paladin.judgement } },
	[54006880] = { name="Crystal Lake Murlocs (Various)", faction="Alliance", class={ "WARRIOR" }, tip="Severed Murloc Head",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVik } },
	[54804020] = { npc=38, name="Defias Thug", class={ "MAGE", "PALADIN" }, faction="Alliance",	
					spell={ "Ice Lance", "Crusader Strike" }, quest={ {}, { 77617 } },
					questName={ {}, { "Relics of the Light" } },
					guide={ ns.starterZoneClass, ns.paladin.judgement } },
	[52205160] = { npc=38, name="Defias Thug", class={ "MAGE", "PALADIN" }, faction="Alliance",	
					spell={ "Ice Lance", "Crusader Strike" }, quest={ {}, { 77617 } },
					questName={ {}, { "Relics of the Light" } },
					guide={ ns.starterZoneClass, ns.paladin.judgement } },
	[52208460] = { npc=204827, name="Adventurer's Remains", class={ "DRUID", "PALADIN", "PRIEST", "SHAMAN" }, faction="Alliance",
					spell={ "Lifebloom", "Inspiration Exemplar", "Prayer of Mending", "Ancestral Guidance" }, guide={ ns.woundedAdventurer } },
	[52805980] = { npc=116, name="Defias Bandit", faction="Alliance", class={ "ROGUE" },
					tip="Pick Pocket or kill. Top-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[56805770] = { npc=204503, name="Dead Acolyte", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Tactics" }, guide={ ns.warlock.tactics } },
	[56806220] = { name="Crystal Lake Murlocs (Various)", faction="Alliance", class={ "WARRIOR" }, tip="Severed Murloc Head",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVik } },
	[57514826] = { npc=103, name="Garrick Proudfoot", class={ "ROGUE" }, faction="Alliance", 
					tip="At a shack. East of the Vineyards. Beware, extremely fast respawn. Battered chest can spawn nearby",
					spell={ "Mutilate" }, guide={ ns.rogue.mutilate } },
	[58006840] = { name="Crystal Lake Murlocs (Various)", faction="Alliance", class={ "WARRIOR" }, tip="Severed Murloc Head",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVik } },
	[58406480] = { npc=1922, name="Gray Forest Wolf", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[59606940] = { npc=1922, name="Gray Forest Wolf", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[60405920] = { npc=1922, name="Gray Forest Wolf", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[60804700] = { npc=471, name="Mother Fang", class={ "PRIEST" }, faction="Alliance",
					spell={ "Shared Pain" }, guide={ ns.priest.sharedPain } },
	[61605380] = { npc=40, name="Kobold Miner", faction="Alliance", class={ "PRIEST", "ROGUE", "WARRIOR" },
					tip={ nil, "Pick Pocket or kill. Top-Right Map Piece", "Severed Kobold Head" },
					spell={ "Shared Pain", "Quick Draw", "Devastate" },
					guide={ ns.priest.sharedPain, ns.rogue.quickDraw ..ns.rogue.quickDrawEF, 
							ns.warrior.devastate ..ns.warrior.devastateVik } },
	[61904730] = { npc=204989, name="Wounded Adventurer", class={ "PALADIN" }, faction="Alliance",
					spell={ "Aegis" }, guide={ ns.paladin.runeOfAegis } },
	[63605540] = { npc=476, name="Kobold Geomancer", class={ "MAGE", "PRIEST", "WARLOCK" }, faction="Alliance",
					spell={ "Living Flame", "Shared Pain", "Demonic Grace" },
					guide={ ns.mage.livingFlame, ns.priest.sharedPain, ns.warlock.grace ..ns.warlock.graceDM } },
	[63806960] = { npc=1922, name="Gray Forest Wolf", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[65205840] = { npc=1922, name="Gray Forest Wolf", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[65404460] = { npc=118, name="Prowler", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[65467007] = { object=386759, name="Library Book", class={ "MAGE" }, faction="Alliance",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="Halfway up the Tower of Azora. Sparkles, you can't miss it. Continue up to click on the "
						.."Eye of Azora. Harmless fun!\n\nOverall a very safe book to collect early. Nothing to fight",
					quest={ 79092, }, questName={ "Archmage Theocritus's Research Journal", } },
	[65608400] = { npc=46, name="Murloc Forager", faction="Alliance", class={ "ROGUE" },
					tip="Pick Pocket or kill. Bottom-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[67005800] = { npc=60, name="Ruklar the Trapper", class={ "PRIEST" }, faction="Alliance",
					spell={ "Shared Pain" }, guide={ ns.priest.sharedPain } },
	[67803840] = { name="Riverpaw Runt/Outrunner", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					guide={ ns.warlock.grace ..ns.warlock.graceEF, ns.warrior.devastate ..ns.warrior.devastateVik },
					spell={ "Demonic Grace", "Devastate" }, tip={ "Gnoll Blood", "Severed Gnoll Head"} },
	[68204520] = { npc=478, name="Riverpaw Outrunner", faction="Alliance", class={ "ROGUE" },
					tip="Pick Pocket or kill. Bottom-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[68204580] = { name="Riverpaw Runt/Outrunner", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					guide={ ns.warlock.grace ..ns.warlock.graceEF, ns.warrior.devastate ..ns.warrior.devastateVik },
					spell={ "Demonic Grace", "Devastate" }, tip={ "Gnoll Blood", "Severed Gnoll Head"} },
	[68605080] = { name="Riverpaw Runt/Outrunner", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					guide={ ns.warlock.grace ..ns.warlock.graceEF, ns.warrior.devastate ..ns.warrior.devastateVik },
					spell={ "Demonic Grace", "Devastate" }, tip={ "Gnoll Blood", "Severed Gnoll Head"} },
	[68807860] = { npc=116, name="Defias Bandit", faction="Alliance", class={ "ROGUE" },
					tip="Pick Pocket or kill. Top-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[69806740] = { npc=1922, name="Gray Forest Wolf", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[70606160] = { npc=1922, name="Gray Forest Wolf", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[72803860] = { name="Riverpaw Runt/Outrunner", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					guide={ ns.warlock.grace ..ns.warlock.graceEF, ns.warrior.devastate ..ns.warrior.devastateVik },
					spell={ "Demonic Grace", "Devastate" }, tip={ "Gnoll Blood", "Severed Gnoll Head"} },
	[74403860] = { npc=118, name="Prowler", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[74805200] = { npc=474, name="Defias Rogue Wizard", faction="Alliance", class={ "PRIEST", "ROGUE", "WARLOCK" },
					tip={ nil, "Pick Pocket or kill. Top-Left Map Piece",  "Ominous Tome" }, spell={ "Homunculi", 
					"Quick Draw", "Demonic Grace" }, guide={ ns.priest.citadel, ns.rogue.quickDraw ..ns.rogue.quickDrawEF,
					ns.warlock.grace ..ns.warlock.graceEF } },
	[74806440] = { npc=1922, name="Gray Forest Wolf", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[76608580] = { npc=46, name="Murloc Forager", faction="Alliance", class={ "ROGUE" },
					tip="Pick Pocket or kill. Bottom-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[77005180] = { npc=202060, name="Frozen Murloc", class={ "MAGE", "WARLOCK" }, faction="Alliance",
					tip="Needs about five separate Fire debuffs to defrost",
					spell={ "Burnout", "Chaos Bolt" }, guide={ ns.frozen } },
	[78805900] = { npc=46, name="Murloc Forager", faction="Alliance", class={ "ROGUE" },
					tip="Pick Pocket or kill. Bottom-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[80004160] = { npc=118, name="Prowler", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF }, tip="Wolf Jawbone" },
	[80204700] = { npc=46, name="Murloc Forager", faction="Alliance", class={ "ROGUE" },
					tip="Pick Pocket or kill. Bottom-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
	[80307942] = { name="Rune of Quick Draw", faction="Alliance", class={ "ROGUE" },
					tip="Final Rune location. Ridgepoint Tower grounds",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[84607960] = { name="Critters with Wild Polymorph debuff", class={ "MAGE" },
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment },
					tip="Reports of plenty at Ridgepoint Tower but they can be anywhere" },
	[89607800] = { npc=116, name="Defias Bandit", faction="Alliance", class={ "ROGUE" },
					tip="Pick Pocket or kill. Top-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawEF } },
}
points[ 1424 ] = { -- Hillsbrad Foothills
	[36917614] = { item=210026, name="Symbol of the Third Owl", class={ "DRUID" },
					spell={ "Wild Growth" }, guide={ ns.druid.wildGrowth }, tip=ns.druid.swim },
	[50504970] = { npc=3537, name="Zixil", class={ "HUNTER", "WARLOCK" }, tip=ns.zixil,
					spell={ "Cobra Strikes", "Lake of Fire" }, guide={ ns.hunter.cobraStrikes, ns.warlock.firesWake } },
	[52704130] = { npc=3537, name="Zixil", class={ "HUNTER", "WARLOCK" }, tip=ns.zixil,
					spell={ "Cobra Strikes", "Lake of Fire" }, guide={ ns.hunter.cobraStrikes, ns.warlock.firesWake } },
	[54438201] = { item=210026, name="Symbol of the Third Owl", class={ "DRUID" },
					spell={ "Wild Growth" }, guide={ ns.druid.wildGrowth }, tip=ns.druid.swim },
	[55501880] = { npc=3537, name="Zixil", class={ "HUNTER", "WARLOCK" }, tip=ns.zixil,
					spell={ "Cobra Strikes", "Lake of Fire" }, guide={ ns.hunter.cobraStrikes, ns.warlock.firesWake } },
	[55602660] = { npc=3537, name="Zixil", class={ "HUNTER", "WARLOCK" }, tip=ns.zixil,
					spell={ "Cobra Strikes", "Lake of Fire" }, guide={ ns.hunter.cobraStrikes, ns.warlock.firesWake } },
	[55603460] = { npc=3537, name="Zixil", class={ "HUNTER", "WARLOCK" }, tip=ns.zixil,
					spell={ "Cobra Strikes", "Lake of Fire" }, guide={ ns.hunter.cobraStrikes, ns.warlock.firesWake } },
	[60603140] = { npc=211951, name="Koartul", class={ "HUNTER", "WARLOCK" },
					spell={ "Cobra Strikes", "Lake of Fire" }, guide={ ns.hunter.cobraStrikes, ns.warlock.firesWake } },
	[60702020] = { npc=3537, name="Zixil", class={ "HUNTER", "WARLOCK" }, tip=ns.zixil,
					spell={ "Cobra Strikes", "Lake of Fire" }, guide={ ns.hunter.cobraStrikes, ns.warlock.firesWake } },
	[62206360] = { npc=2373, name="Kajaric Icon", class={ "SHAMAN" },
					spell={ "Lava Burst" }, guide={ ns.shaman.kajaricIcon } },
	[62805680] = { npc=2373, name="Kajaric Icon", class={ "SHAMAN" },
					spell={ "Lava Burst" }, guide={ ns.shaman.kajaricIcon } },
	[63606100] = { npc=2373, name="Kajaric Icon", class={ "SHAMAN" },
					spell={ "Lava Burst" }, guide={ ns.shaman.kajaricIcon } },
	[65606040] = { npc=2373, name="Kajaric Icon", class={ "SHAMAN" },
					spell={ "Lava Burst" }, guide={ ns.shaman.kajaricIcon } },
	[65606300] = { npc=2373, name="Kajaric Icon", class={ "SHAMAN" },
					spell={ "Lava Burst" }, guide={ ns.shaman.kajaricIcon } },
	[67601500] = { npc=214529, name="Brave Stonetorch", class={ "PALADIN" }, preRune={ { "Fanaticism" } },
					quest={ { 81790 } }, questName={ { "Materials of Significance" } }, spell={ "Hammer of the Righteous" },
					tip="Yes, a Tauren Paladin. Nice lead in to Horde Paladins!", guide={ ns.paladin.hammerRighteous } },
	[78603860] = { name="Wild Gryphon/Kurdros/Granistad", class={ "WARRIOR" }, spell={ "Blood Surge" },
					guide={ ns.warrior.bloodSurge }, quest={ { 79624, 79677, 79678 } },
					questName={ { "Anyone Can Cook", "A Quick Grocery Run", "Taste Testing" } } },
	[79704090] = { name="Rubble Pile/Storage Locker", class={ "WARLOCK" },
					spell={ "Lake of Fire" }, guide={ ns.warlock.firesWake }, 
					tip="Aim carefully or bye bye 5 gold... QQ" },
	[80003900] = { npc=3536, name="Kris Legace", class={ "ROGUE" },
					tip="She sells a range of limited supply / rare leathers Maybe for you or the AH!",
					spell={ "Envenom" }, guide={ ns.rogue.envenom } },
	[88604120] = { name="Wild Gryphon/Kurdros/Granistad", class={ "WARRIOR" }, spell={ "Blood Surge" },
					guide={ ns.warrior.bloodSurge }, tip="Loot a Hybrid Haunch", quest={ { 79624, 79677, 79678 } },
					questName={ { "Anyone Can Cook", "A Quick Grocery Run", "Taste Testing" } } },
}
points[ 1455 ] = { -- Ironforge
	[24276747] = { npc=214099, name="Tamelyn Aldridge", faction="Alliance",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[27601120] = { npc=221827, name="Magister Falath", class={ "PALADIN" }, spell={ "Wrath" },
					guide={ ns.paladin.wrath }, },
	[51901360] = { object=405946, name="Dusty Chest", class={ "ROGUE" }, faction="Alliance", guide={ ns.rogue.precision },
					tip="In an alcove to the right of the stairs", spell={ "Between the Eyes" } },
	[53861403] = { npc=233335, name="Rune Broker", skillBook=true, guide=ns.runeBroker, faction="Alliance",
					tip="In the Forlorn Cavern in a nook on the left side of the stairs to the Rogue Trainer and "
						.."the Shady Dealer", },
	[72537696] = { npc=5570, name="Bruuk Barleybeard", class={ "WARRIOR" }, faction="Alliance",					
					spell={ "Frenzied Assault" }, guide={ ns.warrior.frenziedAssault },
					tip="Speak to Bruuk first, and then speak to Bruart, who is nearby. "
						.."They are in the inn Bruuk's Corner, to the left of the "
						.."entrance to the Military Wing" },
	[72417361] = { npc=209004, name="Bruart", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Frenzied Assault" }, guide={ ns.warrior.frenziedAssault },
					tip="Speak to Bruuk first, and then speak to Bruart, who is nearby. "
						.."They are in the inn Bruuk's Corner, to the left of the "
						.."entrance to the Military Wing" },
	[75971056] = { object=386691, name="Library Book", class={ "MAGE" }, faction="Alliance",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 79091, }, questName={ "Archmage Antonidas: The Unabridged Autobiography", },
					tip="The Ironforge Library of course!" },
}
points[ 1432 ] = { -- Loch Modan
	[22807080] = { npc=3291, name="Greishan Ironstove", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[26606460] = { npc=3291, name="Greishan Ironstove", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[27004660] = { name="Stonesplitter Scout/Trogg", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="Skull-Shaped Geode. Then get hit by a Stonesplitter Skullthumper in the caves" },				
	[27205100] = { name="Stonesplitter Scout/Trogg", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="Skull-Shaped Geode. Then get hit by a Stonesplitter Skullthumper in the caves" },				
	[27605480] = { name="Stonesplitter Scout/Trogg", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="Skull-Shaped Geode. Then get hit by a Stonesplitter Skullthumper in the caves" },				
	[29008500] = { npc=1166, name="Stonesplitter Seer", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb } },
	[29206080] = { npc=3291, name="Greishan Ironstove", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[29208320] = { npc=1163, name="Stonesplitter Skullthumper", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="They will crack open your Skull-Shaped Geode" },				
	[30203300] = { npc=3291, name="Greishan Ironstove", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[30208200] = { name="Stonesplitter Scout/Trogg", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="Skull-Shaped Geode. Then get hit by a Stonesplitter Skullthumper in the caves" },				
	[30404710] = { npc=3291, name="Greishan Ironstove", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[30407520] = { name="Stonesplitter Scout/Trogg", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="Skull-Shaped Geode. Then get hit by a Stonesplitter Skullthumper in the caves" },				
	[31705420] = { npc=3291, name="Greishan Ironstove", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[33607140] = { name="Stonesplitter Scout/Trogg", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="Skull-Shaped Geode. Then get hit by a Stonesplitter Skullthumper in the caves" },				
	[34204760] = { npc=3291, name="Greishan Ironstove", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[34807640] = { name="Stonesplitter Scout/Trogg", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="Skull-Shaped Geode. Then get hit by a Stonesplitter Skullthumper in the caves" },				
	[35008100] = { npc=1166, name="Stonesplitter Seer", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb } },
	[35509060] = { npc=1166, name="Stonesplitter Seer", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb } },
	[35208100] = { npc=1163, name="Stonesplitter Skullthumper", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="They will crack open your Skull-Shaped Geode" },				
	[35514895] = { object=408014, name="Gnomish Tome", class={ "MAGE" }, faction="Alliance",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 79093, }, questName={ "Rumi of Gnomeregan: The Collected Works", },
					tip="On a table behind the Inn keeper" },
	[35804950] = { object=407844, name="Libram Of Blessings", class={ "PALADIN" },
					faction="Alliance", spell={ "Hallowed Ground" }, tip="Lower room", guide={ ns.paladin.blessings } },
	[36208620] = { npc=1163, name="Stonesplitter Skullthumper", class={ "WARRIOR" },
					spell={ "Quick Strike" }, guide={ ns.warrior.quickStrike },
					tip="They will crack open your Skull-Shaped Geode" },				
	[36602560] = { name="Tunnel Rat mobs (Various)", class={ "PRIEST" }, faction="Alliance",
					spell={ "Twisted Faith" }, guide={ ns.priest.twisted ..ns.priest.twistedLM } },
	[36809160] = { object=407850, name="Sunken Reliquary", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice },
					tip="Hug the left side of the cave. Go to the very back. At the bottom of the waterfall" },
	[37208560] = { npc=1166, name="Stonesplitter Seer", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb } },
	[39403920] = { npc=1684, name="Khara Deepwater", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[43003780] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[44404920] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[44603020] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[45204420] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[46402700] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[46501270] = { object=407731, name="Stonemason's Toolbox", class={ "ROGUE" }, faction="Alliance",
					tip="There's an escape rope nearby!",
					spell={ "Saber Slash" }, guide={ ns.rogue.saberSlash } },
	[47202780] = { npc=1166, name="Stonesplitter Seer", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb } },
	[47401960] = { npc=1166, name="Stonesplitter Seer", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb } },
	[47806380] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[49602980] = { npc=1166, name="Stonesplitter Seer", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb } },
	[50602500] = { npc=1166, name="Stonesplitter Seer", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb } },
	[50805880] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[51003950] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[51203340] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[51504720] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[54202700] = { object=407983, name="Pile of Stolen Books", class={ "MAGE" },
					spell={ "Regeneration" }, guide={ ns.mage.regeneration } },
	[54206740] = { npc=1178, name="Haren Swifthoof", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[55005400] = { npc=210107, name="Kackle", class={ "HUNTER" }, faction="Alliance",
					spell={ "Sniper Training" }, guide={ ns.hunter.sniper } },
	[55206160] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[55505250] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[56201420] = { npc=1178, name="Haren Swifthoof", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[56601420] = { name="Dark Iron mobs (Various)", class={ "ROGUE" }, faction="Alliance",
					tip="Eventually you'll score a Dark Iron Lockbox from Pp.",
					spell={ "Blade Dance" }, guide={ ns.rogue.bladeDance } },
	[57804280] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[59201820] = { npc=1178, name="Haren Swifthoof", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[59602380] = { npc=1178, name="Haren Swifthoof", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[61204440] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[61403360] = { npc=1178, name="Haren Swifthoof", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[61405560] = { npc=1224, name="Young Threshadon", class={ "DRUID" }, faction="Alliance",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[61605940] = { npc=1178, name="Haren Swifthoof", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[62404180] = { npc=1178, name="Haren Swifthoof", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[64205240] = { npc=1178, name="Haren Swifthoof", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[68003480] = { npc=1178, name="Mo'grosh Ogres", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[68202360] = { npc=1178, name="Mo'grosh Ogres", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[71802760] = { npc=209908, name="Heretic Idol", class={ "PRIEST" }, faction="Alliance", 
					spell={ "Shadow Word: Death" }, guide={ "/kneel at the Idol. Done!" } },
	[72601940] = { name="Mo'grosh Ogres", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[72606880] = { npc=209954, name="Demonic Remains", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Shadow Bolt Volley" }, guide={ ns.warlock.shadowbolts }, tip="Must use a Shadow spell" },
	[75803260] = { npc=1178, name="Mo'grosh Ogres", class={ "WARRIOR" }, faction="Alliance", tip=ns.warrior.harenTip,
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[77451416] = { object=409731, name="Scrolls", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 78148, }, questName={ "Runes of the Sorceror-Kings", },
					tip="Keep to the left as you walk in" },
	[83406520] = { npc=1187, name="Daryl the Youngling", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery } },
}
points[ 1433 ] = { -- Redridge Mountains
	[26001400] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[27200940] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[28601160] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[28601760] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[30801540] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[31000960] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[31400640] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[34400680] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[36001060] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[37401280] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[39601480] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[40204170] = { name="Standing Water (Lake)", class={ "SHAMAN" }, spell={ "Coherence" },
					guide={ ns.shaman.coherence }, tip="These are more locations", },
	[42201760] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[44001980] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[62404360] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[63206300] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[64204500] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[64605160] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[65004840] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[65204840] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[65405480] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[66006060] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[67405600] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[67604860] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[67605260] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[68405600] = { npc=436, name="Blackrock Shadowcaster", class={ "PRIEST" },
					spell={ "Power Word: Barrier" }, guide={ "Low drop rate. Sucks to be Horde" } },
	[68805740] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[69805400] = { name="Blackrock Mobs (Various)", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[69805580] = { npc=409754, name="Wall-Mounted Shield", class={ "WARRIOR" },
					spell={ "Raging Blow" }, guide={ ns.warrior.ragingBlow }, quest={ 78132, 78134, 78133, 78144 },
					questName={ "Dragonslayer's Helm", "Dragonslayer's Lance", "Dragonslayer's Shield",
						"Alonso the Dragonslayer" } },
	[72808060] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[74008220] = { npc=214519, name="Incinerator Gar'im", class={ "WARLOCK" },
					spell={ "Incinerate" }, tip="Loot and learn. Level 23 Elite with lots of adds" },
	[74607360] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[75407780] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[75408220] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[77607400] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[77608660] = { npc=214519, name="Incinerator Gar'im", class={ "WARLOCK" },
					spell={ "Incinerate" }, tip="Loot and learn. Level 23 Elite with lots of adds" },
	[78006960] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[80007000] = { npc=214456, name="Dro'zem the Blasphemous", class={ "PALADIN" },
					faction="Alliance", spell={ "Avenger's Shield" }, guide={ "50% drop chance" } },
	[80204950] = { item=210765, name="Orb of Des", class={ "WARLOCK" },
					spell={ "Metamorphosis" }, guide={ ns.warlock.metamorphosis },
					tip="Top of the Tower of Ilgalar, in a Demonic Reliquary",
					quest={ { 1740, 78680, 78681, 78684, 78702 } }, questName={ { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
}
points[ 1427 ] = { -- Searing Gorge
	[14503650] = { object=441061, name="Weathered Etching", class={ "HUNTER" }, spell={ "Rapid Killing" },
					guide={ ns.hunter.rapidKilling }, quest={ { 81900, 81917, 81919 } },
					questName={ { "The Burning Beast", "Chains That Bind", "Brought to Heel" } }, },
	[24207280] = { npc=222620, name="Corrupt Moderate Manifestation of Fire", class={ "SHAMAN" }, spell={ "Overcharged" },
					guide={ ns.shaman.overcharged },
					quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[28008200] = { object=457099, name="Zirene's Guide to Getting Punched ", spell={ "Defense Specialization" }, ring=true, 
					class={ "DRUID", "PALADIN", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR" },
					guide=ns.ring.defense, tip=ns.ring.defenseTip, },
	[30008200] = { item=220349, name="Stonewrought Design", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true, tip=ns.mage.booksBM,
					quest={ 81953, }, questName={ "Stonewrought Design" }, },
	[31008600] = { name="Scrolls", class={ "MAGE" }, tip=ns.mage.magmaLarva,
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,				
					quest={ 84396, }, questName={ "Magma or Larva" }, },
	[31807340] = { name="Magma / Inferno Elemental", class={ "SHAMAN" }, spell={ "Overcharged" },
					guide={ ns.shaman.overcharged }, quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[37804950] = { object=441253, name="Book", class={ "MAGE" }, tip="Look inside the tent. On the table",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 81955, }, questName={ "A Mind of Metal" }, },
	[41503560] = { object=457097, name="Elements for Dummies Volume II: Fire", spell={ "Fire Specialization" }, ring=true, 
					class={ "HUNTER", "MAGE", "SHAMAN", "WARLOCK", }, guide=ns.ring.fire, tip="(3) Left alcove" },
	[42994469] = { object=441915, name="Giant Golem Arm (left)", class={ "WARRIOR" }, spell={ "Taste for Blood" },
					guide={ ns.warrior.tasteForBlood } },
	[42503050] = { object=441913, name="Giant Golem Foot (left)", class={ "WARRIOR" }, spell={ "Taste for Blood" },
					guide={ ns.warrior.tasteForBlood }, tip="At the back of the cave" },
	[43804580] = { item=223332, name="Vibrating Eye", class={ "PRIEST" }, spell={ "Eye of the Void" },
					quest={ { 82316 } }, questName={ { "Seven Eyes I Seek..." } }, guide={ ns.priest.eyeOfVoid },
					tip="In a cave. You'll need to drop down" },
	[44003290] = { object=441912, name="Giant Golem Foot (right)", class={ "WARRIOR" }, spell={ "Taste for Blood" },
					guide={ ns.warrior.tasteForBlood }, tip="Inside the slag pits" },
	[48704500] = { object=457097, name="Elements for Dummies Volume II: Fire", spell={ "Fire Specialization" }, ring=true, 
					class={ "HUNTER", "MAGE", "SHAMAN", "WARLOCK", }, guide=ns.ring.fire, tip="(1) Jump down here" },
	[49703740] = { object=441914, name="Giant Golem Arm (right)", class={ "WARRIOR" }, spell={ "Taste for Blood" },
					guide={ ns.warrior.tasteForBlood }, tip="In the lower cave" },
	[49704560] = { object=457097, name="Elements for Dummies Volume II: Fire", spell={ "Fire Specialization" }, ring=true, 
					class={ "HUNTER", "MAGE", "SHAMAN", "WARLOCK", }, guide=ns.ring.fire, tip="(2) Go to the Slag Pit", },
	[53105590] = { name="Stormcrow Nest/Egg", class={ "HUNTER" }, spell={ "Focus Fire" }, guide={ ns.hunter.focusFire } },
	[55006500] = { item=221319, name="Blackrock Leycryst", class={ "MAGE", "PALADIN", "PRIEST", "WARLOCK" },
					spell={ "Displacement", "Purifying Power", "Despair", "Backdraft" }, guide={ ns.leylineGuide },
					tip="Near to The Forlorn Ridge" },
	[66604500] = { npc=222546, name="Iodax the Obliterator", class={ "WARRIOR" }, spell={ "Taste for Blood" },
					guide={ ns.warrior.tasteForBlood }, },
}
points[ 1421 ] = { -- Silverpine Forest
	[34800780] = { npc=210802, name="Webbed Victim", class={ "WARRIOR" }, faction="Horde",
					spell={ "Endless Rage" }, guide={ ns.warriorEndlessRage },
					tip="In the Skittering Dark Cave you'll easily see the vicitms. Click on then and defeat "
						.."the crazed Lost Adventurer.\n\nBut so many spiders to contend with" },
	[43402260] = { npc=1773, name="Rot Hide Mystic", class={ "SHAMAN" }, faction="Horde",
					spell={ "Way of Earth" }, guide={ ns.shaman.earthenRune } },
	[43404120] = { object=410299, name="Arcane Secrets", class={ "MAGE" }, faction="Horde",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 79096, }, questName={ "Ataeric: On Arcane Curiosities", },
					tip="Inside the tomb, near Sebastian Meloche" },
	[44401940] = { npc=1773, name="Rot Hide Mystic", class={ "SHAMAN" }, faction="Horde",
					spell={ "Way of Earth" }, guide={ ns.shaman.earthenRune } },
	[45002360] = { npc=1773, name="Rot Hide Mystic", class={ "SHAMAN" }, faction="Horde",
					spell={ "Way of Earth" }, guide={ ns.shaman.earthenRune } },
	[45306730] = { object=409131, name="Rusty Chest", class={ "ROGUE" }, faction="Horde",
					tip="On a small platform near the entrance",
					spell={ "Saber Slash" }, guide={ ns.rogue.saberSlash } },
	[45602160] = { npc=1773, name="Rot Hide Mystic", class={ "SHAMAN" }, faction="Horde",
					spell={ "Way of Earth" }, guide={ ns.shaman.earthenRune } },
	[45604720] = { npc=1778, name="Ferocious Grizzled Bear", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery } },
	[46802660] = { npc=1778, name="Ferocious Grizzled Bear", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery } },
	[47107110] = { object=410369, name="Dead Drop", class={ "ROGUE", "ROGUE" }, spell={ "Deadly Brew", "Shadowstep" },
					guide={ ns.rogue.deadlyBrew, ns.rogue.shadowstep }, quest={ { 78261, 78307 }, { 78699,78676 } },
					questName={ { "The Horn of Xelthos (Main)", "The Horn of Xelthos (Reward)" },
						{ "The Eye of Bhossca (Dead Drop)", "The Eye of Bhossca (SM)" }, } },
	[48607260] = { object=410369, name="Dead Drop", class={ "ROGUE" }, spell={ "Honor Among Thieves" },
					guide={ ns.rogue.honorThieves },preRune={ { "Deadly Brew", "Shadowstep" } },
					quest={ { 6681, 80526, 80411, 80453, 80454, 80455 } },
					questName={ { "The Manor, Ravenholdt", "Fool Me Twice", "The Talisman of Kazdor", "Best Laid Plans",
						"One Last Drop", "Biding Our Time" } } },
	[48004060] = { npc=1769, name="Moonrage Whitescalp", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[48203360] = { npc=1769, name="Moonrage Whitescalp", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[49403680] = { npc=1778, name="Ferocious Grizzled Bear", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery } },
	[49606860] = { npc=1867, name="Dalaran Apprentice", class={ "MAGE" },
					spell={ "Regeneration" }, guide={ ns.mage.regeneration }, faction="Horde" },
	[50201560] = { npc=1778, name="Ferocious Grizzled Bear", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery } },
	[50806160] = { npc=1867, name="Dalaran Apprentice", class={ "MAGE" },
					spell={ "Regeneration" }, guide={ ns.mage.regeneration }, faction="Horde" },
	[51804420] = { npc=1769, name="Moonrage Whitescalp", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[52202720] = { npc=1769, name="Moonrage Whitescalp", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[52602060] = { npc=1778, name="Ferocious Grizzled Bear", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery } },
	[53604760] = { npc=1778, name="Ferocious Grizzled Bear", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery } },
	[54603880] = { npc=1778, name="Ferocious Grizzled Bear", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery } },
	[54801960] = { npc=1769, name="Moonrage Whitescalp", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[55404080] = { npc=1769, name="Moonrage Whitescalp", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[55607280] = { npc=1867, name="Dalaran Apprentice", class={ "MAGE" },
					spell={ "Regeneration" }, guide={ ns.mage.regeneration }, faction="Horde" },
	[56806540] = { npc=1867, name="Dalaran Apprentice", class={ "MAGE" },
					spell={ "Regeneration" }, guide={ ns.mage.regeneration }, faction="Horde" },
	[57404480] = { npc=1972, name="Grimson the Pale", class={ "DRUID" }, faction="Horde",
					spell={ "Savage Roar", "Water Shield" }, guide={ ns.druid.ferocious, ns.shaman.tempestIcon } },
	[57806980] = { name="Ravenclaw Mobs (Various)", class={ "WARLOCK" },
					spell={ "Shadow Bolt Volley" }, guide={ ns.warlock.shadowbolts } },
	[58204520] = { npc=212763, name="Sadistic Fiend", class={ "WARLOCK" }, faction="Horde",
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling },
					tip= "In the same cave as Grimson the Pale so it'll be busy with rune engravers. This "
						.."helps with clearing the cave of trash" },
	[59307210] = { npc=212809, name="Wailing Spirit", class={ "PRIEST" },
					spell={ "Twisted Faith" }, guide={ ns.priest.twisted ..ns.priest.twistedSil } },
	[59407040] = { name="Ravenclaw Mobs (Various)", class={ "WARLOCK" },
					spell={ "Shadow Bolt Volley" }, guide={ ns.warlock.shadowbolts } },
	[60607260] = { name="Ravenclaw Mobs (Various)", class={ "WARLOCK" },
					spell={ "Shadow Bolt Volley" }, guide={ ns.warlock.shadowbolts } },
	[63506310] = { object=409501, name="Dalaran Digest", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 78127, }, questName={ "The Dalaran Digest", },
					tip="On a bookshelf in the main Amber Mill building" },
	[64402300] = { name="Rot Hide mobs (Various)", class={ "MAGE" }, faction="Horde",
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb }, tip="Look for \"A Talking Head\"",
					quest={ { 460, 461, 491, 78277 } },
					questName={ { "Resting in Pieces", "The Hidden Niche", "Wand to Bethor", "A Token of Gratitude" } } },
	[65302480] = { name="Rot Hide mobs (Various)", class={ "MAGE" }, faction="Horde",
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb }, tip="Look for \"A Talking Head\"",
					quest={ { 460, 461, 491, 78277 } }, tip="Location of \"The Hidden Niche\"",
					questName={ { "Resting in Pieces", "The Hidden Niche", "Wand to Bethor", "A Token of Gratitude" } } },
	[65602420] = { npc=1947, name="Thule Ravenclaw", class={ "PRIEST" }, faction="Alliance", 
					spell={ "Shadow Word: Death" }, guide={ "On the desk nearby. No kill needed" } },
	[65603140] = { name="Rot Hide mobs (Various)", class={ "MAGE" }, faction="Horde",
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb }, tip="Look for \"A Talking Head\"",
					quest={ { 460, 461, 491, 78277 } },
					questName={ { "Resting in Pieces", "The Hidden Niche", "Wand to Bethor", "A Token of Gratitude" } } },
	[65802700] = { name="Rot Hide mobs (Various)", class={ "MAGE" }, faction="Horde",
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb }, tip="Look for \"A Talking Head\"",
					quest={ { 460, 461, 491, 78277 } },
					questName={ { "Resting in Pieces", "The Hidden Niche", "Wand to Bethor", "A Token of Gratitude" } } },
	[67003660] = { name="Rot Hide mobs (Various)", class={ "MAGE" }, faction="Horde",
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb }, tip="Look for \"A Talking Head\"",
					quest={ { 460, 461, 491, 78277 } },
					questName={ { "Resting in Pieces", "The Hidden Niche", "Wand to Bethor", "A Token of Gratitude" } } },
	[67802480] = { object=1599, name="Shallow Grave", class={ "MAGE" }, faction="Horde",
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb }, tip="Look for \"A Talking Head\"",
					quest={ { 460, 461, 491, 78277 } }, tip="Turn in \"Resting in Pieces\" here",
					questName={ { "Resting in Pieces", "The Hidden Niche", "Wand to Bethor", "A Token of Gratitude" } } },
	[68003160] = { name="Rot Hide mobs (Various)", class={ "MAGE" }, faction="Horde",
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb }, tip="Look for \"A Talking Head\"",
					quest={ { 460, 461, 491, 78277 } },
					questName={ { "Resting in Pieces", "The Hidden Niche", "Wand to Bethor", "A Token of Gratitude" } } },
	[69803480] = { name="Rot Hide mobs (Various)", class={ "MAGE" }, faction="Horde",
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb }, tip="Look for \"A Talking Head\"",
					quest={ { 460, 461, 491, 78277 } },
					questName={ { "Resting in Pieces", "The Hidden Niche", "Wand to Bethor", "A Token of Gratitude" } } },
}
points[ 1453 ] = { -- Stormwind City
	[21216279] = { npc=203478, name="Stuart", class={ "PALADIN", "WARRIOR" }, faction="Alliance",
					spell={ "Rebuke", "Frenzied Assault" },
					guide={ ns.livAndStuart, ns.warrior.frenziedAssault .."\n\n" ..ns.livAndStuart } },
	[22616463] = { npc=203475, name="Liv Bradford", class={ "PALADIN", "WARRIOR" }, faction="Alliance",
					spell={ "Rebuke", "Frenzied Assault" },
					guide={ ns.livAndStuart, ns.warrior.frenziedAssault .."\n\n" ..ns.livAndStuart } },
	[25267860] = { npc=6122, name="Gakin the Darkbinder", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Soul Siphon" }, guide={ ns.warlock.soulSiphon }, tip="He's" ..ns.secretCoven },
	[25127738] = { npc=204070, name="Soboz", class={ "WARLOCK" }, faction="Alliance",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceEF },
					tip="He's" ..ns.secretCoven ..".\n\nTake the ramp next to Gakin and descend "
						.."into the crypts. Take the first right turn and go down. Now the first left turn down. Voilà!\n\n"
						.."Stand on the magenta rune and summon!" },
	[26127723] = { npc=5495, name="Ursula Deline", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } }, tip="She's" ..ns.secretCoven,
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[37223185] = { npc=5492, name="Katherine the Pure", class={ "PALADIN", "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm", "Sheath of Light" }, tip="First room on the left",
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 79939, 79940, 79945, 79970 } },					
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Broken Hammer", "A Lost Brother",
						"Orders from the Grand Crusader", "Aeonas the Vindicated" } },
						guide={ ns.paladin.divineStorm, ns.paladin.sheathLight } },
	[37603160] = { name="Aeonas the Vindicated / Katherine the Pure", class={ "PALADIN" }, faction="Alliance",
					quest={ { 81764, 81766 } }, questName={ { "The Mysterious Merchant", "The Bloody Missive" } }, 
					spell={ "Fanaticism" }, guide={ ns.paladin.fanaticism },  preRune={ { "Sheath of Light" } }, },
	[38702640] = { npc=376, name="High Priestess Laurena", class={ "PRIEST" }, faction="Alliance", spell={ "Binding Heal" },
					quest={ { 84320, 84321, 84322, 84323 } }, guide={ ns.priest.bindingHeal },
					questName={ { "Lost Heirloom", "Relic of Light", "Scarlet Research", "The Prize Within", } }, },
	[34708050] = { npc=211033, name="Garion Wendell", class={ "MAGE", }, faction="Alliance", mageBook=true,
					spell=ns.mage.bookRunes, quest=ns.mage.bookQuestIDs, questName=ns.mage.bookQuestNames, 
					guide=ns.mage.books, tip="Progress", },
	[39708050] = { npc=211033, name="Garion Wendell", class={ "MAGE" }, faction="Alliance", mageBook=true,
					spell=ns.mage.bookRunes, quest=ns.mage.booksQuestIDsA, questName=ns.mage.booksQuestNamesA, 
					guide=ns.mage.books, },
	[37708050] = { npc=211033, name="Garion Wendell", class={ "MAGE" }, faction="Alliance",
					spell={ "Temporal Anomaly" }, guide={ ns.mage.temporal },
					quest={ { 82084 }, }, questName={ { "A Lesson in Literacy" }, }, },					
	[38102809] = { npc=205278, name="Brother Romulus", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Light" }, guide={ ns.paladin.martyrdom } },
	[54536118] = { npc=213077, name="Elaine Compton", faction="Alliance",
					tip="Standing near the street corner, easily missed",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[56692985] = { name="Cutthroat Alley", class={ "ROGUE" }, faction="Alliance", guide={ ns.rogue.precision },
					spell={ "Slaughter from the Shadows" }, tip="Begin by entering this empty shop" },
	[57442684] = { npc=233335, name="Rune Broker", skillBook=true, guide=ns.runeBroker, faction="Alliance",
					tip="In Cut-Throat Alley. Access via the Canals, through an empty unnamed shop", },
	[61732920] = { object=386777, name="Dusty Chest", class={ "ROGUE" }, faction="Alliance", guide={ ns.rogue.precision },
					spell={ "Between the Eyes" }, tip="Upper level of the house in Cutthroat Alley" },
	[69695102] = { npc=203226, name="Viktoria Woods", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVik }, },
	[74180746] = { npc=1440, name="Milton Sheaf", tip="Skill Books vendor", skillBook=true, guide={ ns.skillBookVendor }, 
					faction="Alliance", },
}
points[ 1434 ] = { -- Stranglethorn Vale
	[23800860] = { npc=1061,name="Gan'zulah", class={ "PRIEST" }, spell={ "Dispersion" }, guide={ ns.priest.dispersion } },
	[27007720] = { npc=215643, name="Tokal", class=ns.allClass,
					spell={ "Eclipse", "Trap Launcher", "Brain Freeze", "The Art of War",
					"Mind Spike", "Poisoned Knife", "Ancestral Awakening", "Shadow and Flame", "Enraged Regeneration" },
					guide=ns.pillaged, quest={ { 79229, 79235, 79236, 79242 } }, 
					questName={ { "Highway Robbery", "On the Lam", "Cherry for Your Thoughts", "No Honor Among Thieves" } } },
	[27607660] = { npc=218229,name="CaptainAransas", class={ "ROGUE" }, spell={ "Master of Subtlety" },
					guide={ ns.rogue.subtlety } },
	[27607740] = { name="Teleporter", class={ "PALADIN" }, spell={ "Light's Grace" },
					tip="This teleporter is only available on completion "
						.."of the above quest. That quest is part of the "
						.."Phase 2 / Gnomeregan profession gear quest line.\n\n"
						.."If you do use this portal then consider setting "
						.."your hearth here as you'll need to return",
					guide={ ns.paladin.lightsGrace }, quest={ 79984 }, questName={ "Quadrangulation" } },
	[23007700] = { npc=214954, name="Pix Xizzix", class=ns.allClass, guide=ns.purchaseForAlt,
					tip=ns.colour.daily ..ns.L[ "Emblem of Dishonor" ],
					spell={ "Eclipse", "Trap Launcher", "Brain Freeze", "The Art of War", "Mind Spike", "Poisoned Knife",
						"Ancestral Awakening", "Shadow and Flame", "Enraged Regeneration", }, },
	[25007900] = { npc=214954, name="Pix Xizzix", class=ns.allClass, guide=ns.purchaseForAlt,
					tip=ns.colour.daily ..ns.L[ "Emblem of the Violet Eye" ],
					spell={ "King of the Jungle", "Melee Specialist", "Missile Barrage", "Infusion of Light",
						"Spirit of the Redeemer", "Waylay", "Two-Handed Mastery", "Demonic Knowledge", "Precise Timing", }, },
	[27008100] = { npc=214954, name="Pix Xizzix", class=ns.allClass, guide=ns.purchaseForAlt,
					tip=ns.colour.daily ..ns.L[ "Emblem of the Wild Gods" ],
					spell={ "Improved Frenzied Regeneration", "Lock and Load", "Advanced Warding", "Improved Sanctuary",
						"Divine Aegis", "Combat Potency", "Riptide", "Vengeance", "Sword and Board", }, },
	[29008300] = { npc=214954, name="Pix Xizzix", class={ "MAGE", "PALADIN", "PRIEST", "WARLOCK", },
					guide=ns.purchaseForAlt, tip=ns.colour.daily ..ns.L[ "Emblem of the Worldcoree" ],
					spell={ "Displacement", "Purifying Power", "Despair", "Backdraft", }, },
	[28557575] = { npc=214954, name="Rix Xizzix", class={ "PALADIN" }, spell={ "Light's Grace" },
					guide={ ns.paladin.lightsGrace }, quest={ 79984 }, questName={ "Quadrangulation" } },
	[28906200] = { item=737,name="Holy Water", class={ "PRIEST" }, spell={ "Dispersion" }, guide={ ns.priest.dispersion } },
	[30804700] = { npc=217620, name="Reckless Warlock", class={ "WARLOCK" }, spell={ "Dance of the Wicked" },
					guide=ns.warlock.dance,
					tip="Western side of the Gurubashi Arena" },
	[31801570] = { npc=217783, name="Bloodscalp Guerrilla", class={ "HUNTER" },
					spell={ "Dual Wield Specialization" }, guide={ ns.hunter.dualWield } },
	[33001380] = { name="Bloodscalp trolls (Various)", class={ "PRIEST" }, spell={ "Dispersion" },
					guide={ ns.priest.dispersion } },
	[33008800] = { item=223333, name="Baleful Eye", class={ "PRIEST" }, spell={ "Eye of the Void" },
					quest={ { 82316 } }, questName={ { "Seven Eyes I Seek..." } }, guide={ ns.priest.eyeOfVoid },
					tip="Directly behind Captain Stillwater" },
	[35601080] = { npc=715, name="Hemet Nesingwary", class={ "HUNTER", "PRIEST" }, spell={ "Expose Weaknesss", "Dispersion" },
					guide={ ns.hunter.expose, ns.priest.dispersion }, quest={ { 78823, 78830 }, {} },
					questName={ { "Terror of the Desert Skies", "Terror of the Desert Skies" }, {} } },
	[36001800] = { name="Murkgill Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide=ns.grizzby, quest={ 78265 }, questName={ "Fish Oil" } },
	[34602180] = { name="Murkgill Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide=ns.grizzby, quest={ 78265 }, questName={ "Fish Oil" } },
	[37002460] = { name="Murkgill Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide=ns.grizzby, quest={ 78265 }, questName={ "Fish Oil" } },
	[40705850] = { npc=223591, name="Echo of a Lost Soul", class={ "PRIEST" }, spell={ "Surge of Light" },
					tip="Outside these hours the Lost Soul might be seen on the beach at the end of the Blood Moon "
					.."PvP event. YMMV", guide={ ns.priest.surgeLight } },
	[41505090] = { object=421526, name="Research Notes", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="On a bench to the right of the cave entrance",
					quest={ 79535, }, questName={ "Basilisks: Should Petrification be Feared?" }, },
	[42203620] = { npc=780, name="Skullsplitter Mystic", class={ "MAGE", "MAGE" }, spell={ "Frostfire Bolt", "Spellfrost Bolt" },
					guide={ ns.mage.fireAndFrost } },
	[44200800] = { npc=218230,name="Wendel Mathers", class={ "ROGUE" }, spell={ "Master of Subtlety" },
					guide={ ns.rogue.subtlety } },
	[45001900] = { npc=217588, name="Arbor Tarantula", class={ "DRUID", "HUNTER" },
					spell={ "Survival Instincts", "Wyvern Strike" }, guide={ ns.amaryllis } },
	[47003080] = { npc=780, name="Skullsplitter Mystic", class={ "MAGE", "MAGE" }, spell={ "Frostfire Bolt", "Spellfrost Bolt" },
					guide={ ns.mage.fireAndFrost } },
	[48003960] = { npc=780, name="Skullsplitter Mystic", class={ "MAGE", "MAGE" }, spell={ "Frostfire Bolt", "Spellfrost Bolt" },
					guide={ ns.mage.fireAndFrost } },
	[49600770] = { name="Kurzen mobs (Various)", class={ "ROGUE" }, spell={ "Master of Subtlety" },
					guide={ ns.rogue.subtlety } },
}
points[ 1435 ] = { -- Swamp of Sorrows
	[16805380] = { object=424265, name="Grave", class={ "PRIEST" }, tip="Swamp Echo",
					spell={ "Pain Suppression" }, guide={ ns.priest.painSuppression } },
	[25105400] = { npc=217412, name="Amaryllis Webb", class={ "DRUID", "HUNTER" },
					spell={ "Survival Instincts", "Wyvern Strike" }, guide={ ns.amaryllis } },
	[42603070] = { object=428228, name="Conspicuous Cache", class={ "ROGUE" },
					spell={ "Shuriken Toss" }, guide={ ns.rogue.shurikenToss } },
	[50106200] = { npc=223591, name="Echo of a Lost Soul", class={ "PRIEST" }, spell={ "Surge of Light" },
					guide={ ns.priest.surgeLight } },
	[56307620] = { item=220345, name="Sanguine Sorcery", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 81947, }, questName={ "Sanguine Sorcery" }, },
	[58406220] = { npc=769, name="Deathstrike Tarantula", class={ "WARRIOR" }, spell={ "Blood Surge" },
					guide={ ns.warrior.bloodSurge }, tip="Loot the Viscous Venom", quest={ { 79624, 79677, 79678 } },
					questName={ { "Anyone Can Cook", "A Quick Grocery Run", "Taste Testing" } } },
	[61602240] = { object=423901, name="Book", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="Farm nearby Lost Ones for a Rusted Cage Key to open the Rusted Cage",
					quest={ 79953, }, questName={ "A Ludite's Guide to Caring for Your Demonic Pet" }, },
	[62308350] = { name="Marsh Mobs (Various Murlocs)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[63809160] = { name="Marsh Mobs (Various Murlocs)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[67007440] = { name="Marsh Mobs (Various Murlocs)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[69402880] = { npc=218931, name="Dark Rider", name="Dark Rider", tip="Search this area",
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "King of the Jungle", "Melee Specialist", "Missile Barrage",
					"Infusion of Light", "Spirit of the Redeemer", "Waylay", "Two-Handed Mastery", "Demonic Knowledge",
					"Precise Timing" }, guide={ ns.dalaranAgent }, quest={ ns.dalaranQuest },
					questName={ ns.dalaranQuestName } },
	[82609460] = { name="Marsh Mobs (Various Murlocs)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[83208620] = { name="Marsh Mobs (Various Murlocs)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[86407840] = { name="Marsh Mobs (Various Murlocs)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[91007080] = { name="Marsh Mobs (Various Murlocs)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[93206100] = { name="Marsh Mobs (Various Murlocs)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[95805220] = { name="Marsh Mobs (Various Murlocs)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
}
points[ 1425 ] = { -- The Hinterlands
	[24605780] = { name="Witherbark Mobs (Various)", class={ "WARRIOR" }, spell={ "Wrecking Crew" },
					guide={ "Far west The Hinterlands is where you'll be farming any Witherbark troll mobs for a Geode "
						.."Hammer.\n\nEquip and continue pwning the mobs. The Hammer will break. Right click for phat profit!\n\n"
						.."Don't go east to Shadra'Alor as the Sadists there are much tougher. Stay south of Aerie Peak" } },
	[28606120] = { name="Owlbeast Mobs (Various)", class={ "MAGE" }, spell={ "Temporal Anomaly" },
					guide={ ns.mage.temporal }, quest={ 82082 }, questName={ "A Lesson in Literacy" } },
	[33004400] = { npc=221828, name="Vengeful Spirit", class={ "PALADIN" }, spell={ "Wrath" },
					guide={ ns.paladin.wrath }, tip="Use Sense Undead to see. Respawn is about 10 minutes" },
	[36007270] = { object=441252, name="Book", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true, tip="Behind a wall",
					quest={ 81954, }, questName={ "Venomous Journeys" }, },
	[44006360] = { name="Owlbeast Mobs (Various)", class={ "MAGE" }, spell={ "Temporal Anomaly" },
					guide={ ns.mage.temporal }, quest={ 82082 }, questName={ "A Lesson in Literacy" } },
	[47404740] = { name="Owlbeast Mobs (Various)", class={ "MAGE" }, spell={ "Temporal Anomaly" },
					guide={ ns.mage.temporal }, quest={ 82082 }, questName={ "A Lesson in Literacy" } },
	[48005900] = { item=221320, name="Hinterlands Leycryst", class={ "MAGE", "PALADIN", "PRIEST", "WARLOCK" },
					spell={ "Displacement", "Purifying Power", "Despair", "Backdraft" }, guide={ ns.leylineGuide },
					tip="North of the Altar of Zul" },
	[51004690] = { npc=222232, name="Corrupt Moderate Manifestation of Air", class={ "SHAMAN" }, spell={ "Overcharged" },
					guide={ ns.shaman.overcharged },
					quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[50005080] = { name="Green Sludge, Jade Ooze", class={ "SHAMAN" }, spell={ "Overcharged" }, guide={ ns.shaman.overcharged },
					quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[58407270] = { item=223334, name="Glowing Eye", class={ "PRIEST" }, spell={ "Eye of the Void" },
					quest={ { 82316 } }, questName={ { "Seven Eyes I Seek..." } }, guide={ ns.priest.eyeOfVoid } },
	[61403450] = { name="Quartermaster Alandra / Field Captain Korlian", class=ns.allClass, spell=ns.emeraldSpell,
					guide={ ns.nightmareIncursions } },
	[64006680] = { name="Vilebranch Trolls (Various)", class=ns.allClass, spell=ns.wildGodsSpells, guide={ ns.wildGods },
					quest={ { 82043, 82044 } }, questName={ { "The Wild Gods (Part 1)", "The Wild Gods (Part 2)" } } },
	[61405140] = { name="Owlbeast Mobs (Various)", class={ "MAGE" }, spell={ "Temporal Anomaly" },
					guide={ ns.mage.temporal }, quest={ 82082 }, questName={ "A Lesson in Literacy" } },
	[66005300] = { npc=221933, name="Moonkin Avatar", class={ "DRUID" }, spell={ "Efflorescence" },
					guide={ ns.druid.efflorescence }, quest={ 81924 }, questName={ "Wisdom of the Guardians" } },
	[72506870] = { npc=223591, name="Echo of a Lost Soul", class={ "PRIEST" }, spell={ "Surge of Light" },
					guide={ ns.priest.surgeLight } },
	[72605280] = { npc=222695, name="Vilebranch Mask", class={ "ROGUE" }, spell={ "Focused Attacks" }, 
					guide={ "Use Blind (L34). Loot the chest. There are stealthed wolves in the area" } },
}
points[ 1420 ] = { -- Tirisfal Glades
	[24705945] = { object=406736, name="Lost Stash", class={ "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Haunt", "Victory Rush" }, guide={ ns.starterZoneClass } },
	[25604860] = { npc=208196, name="Gillgar", class={ "MAGE", "PRIEST", "WARRIOR" }, faction="Horde",
					spell={ "Fingers of Frost", "Void Plague", "Furious Thunder" },
					guide={ ns.mage.fingers, ns.priest.voidPlague, ns.warrior.furiousThunder } },
	[27204640] = { npc=208196, name="Gillgar", class={ "MAGE", "PRIEST", "WARRIOR" }, faction="Horde",
					spell={ "Fingers of Frost", "Void Plague", "Furious Thunder" },
					guide={ ns.mage.fingers, ns.priest.voidPlague, ns.warrior.furiousThunder } },
	[29404520] = {  name="Vile Fin mobs (Various)", class={ "ROGUE", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Between the Eyes", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.precision, 
						ns.warrior.devastate ..ns.warrior.devastateDor },
					tip={ "Bottom-Right Map Piece (Drop or Pickpocketing). Shipwreck Cache Key (mostly) Pickpocketing",
							"Key for the Cache", "Severed Murloc Head" } },
	[29804600] = { npc=208196, name="Gillgar", class={ "MAGE", "PRIEST", "WARRIOR" }, faction="Horde",
					spell={ "Fingers of Frost", "Void Plague", "Furious Thunder" },
					guide={ ns.mage.fingers, ns.priest.voidPlague, ns.warrior.furiousThunder } },
	[30405080] = { npc=1535, name="Scarlet Warrior", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[30806600] = { npc=2124, name="Isabella", class={ "MAGE" }, questName={ "Spell Research" },
					quest={ 77671 }, faction="Horde", spell={ "Ice Lance" }, guide={ ns.starterZoneClass } },
	[30806620] = { npc=3156, name="Maximillion", class={ "WARLOCK" }, faction="Horde",
					spell={ "Haunt" }, guide={ ns.starterZoneClass }, quest={ 77672 }, questName={ "The Lost Rune" } },
	[31004620] = { npc=1535, name="Scarlet Warrior", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[31006600] = { npc=2123, name="Dark Cleric Duesten", class={ "PRIEST" }, faction="Horde",
					tip="After picking up the quest, go to the Graveyard just next door and /kneel. Check your bag. Done",
					spell={ "Penance" }, guide={ ns.starterZoneClass ..ns.priest.penanceTG }, 
					quest={ 77670 }, questName={ "Meditation on Undeath" } },
	[32604860] = { npc=1535, name="Scarlet Warrior", faction="Horde", class={ "ROGUE" }, spell={ "Quick Draw" }, 
					tip="Pick Pocket or kill. Top-Right Map Piece", guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG } },
	[32606560] = { npc=2122, name="David Trias", class={ "ROGUE" }, faction="Horde",
					spell={ "Shadowstrike" }, guide={ ns.starterZoneClass }, quest={ 77669 }, questName={ "The Scarlet Rune" } },
	[33205160] = { npc=1535, name="Scarlet Warrior", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[33604980] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[34604900] = { npc=1535, name="Scarlet Warrior", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[34804480] = {  name="Vile Fin mobs (Various)", class={ "ROGUE", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Between the Eyes", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.precision, 
						ns.warrior.devastate ..ns.warrior.devastateDor }, 
					tip={ "Bottom-Right Map Piece (Drop or Pickpocketing). Shipwreck Cache Key (mostly) Pickpocketing",
							nil, "Severed Murloc Head" } },
	[35604750] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[36406840] = { npc=1507, name="Scarlet Initiate", class={ "MAGE" }, faction="Horde",
					spell={ "Ice Lance" }, questName={ "Spell Research" }, quest={ 77671 }, guide={ ns.starterZoneClass } },
	[36803980] = {  name="Vile Fin mobs (Various)", class={ "ROGUE", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Between the Eyes", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.precision, 
						ns.warrior.devastate ..ns.warrior.devastateDor }, 
					tip={ "Bottom-Right Map Piece (Drop or Pickpocketing). Shipwreck Cache Key (mostly) Pickpocketing",
							"Key for the Cache", "Severed Murloc Head" } },
	[36805100] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[36806660] = { npc=1506, name="Scarlet Convert", class={ "ROGUE" }, faction="Horde",
					tip="Pickpocket. Don't kill. Quest says to \"steal\"",
					spell={ "Shadowstrike" }, guide={ ns.starterZoneClass }, quest={ 77669 }, questName={ "The Scarlet Rune" } },
	[37404920] = { name="Tirisfal Farmers (Various)", faction="Horde", class={ "PRIEST", "ROGUE" },
					tip={ nil, "Pick Pocket or kill. Top-Left Map Piece" }, spell={ "Shared Pain", "Quick Draw" },
					guide={ ns.priest.sharedPain, ns.rogue.quickDraw ..ns.rogue.quickDrawTG } },
	[37607160] = { npc=1507, name="Scarlet Initiate", class={ "MAGE" }, faction="Horde",
					spell={ "Ice Lance" }, questName={ "Spell Research" }, quest={ 77671 },
					guide={ ns.starterZoneClass } },
	[37806980] = { npc=1506, name="Scarlet Convert", class={ "ROGUE" }, faction="Horde",
					tip="Pickpocket. Don't kill", quest={ 77669 }, questName={ "The Scarlet Rune" },
					spell={ "Shadowstrike" }, guide={ ns.starterZoneClass } },
	[38606700] = { npc=1507, name="Scarlet Initiate", class={ "MAGE" }, faction="Horde",
					spell={ "Ice Lance" }, questName={ "Spell Research" }, quest={ 77671 },
					guide={ ns.starterZoneClass } },
	[39204880] = { npc=1535, name="Scarlet Warrior", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[42603220] = { npc=1522, name="Darkeye Bonecaster", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Ominous Tome" },
	[42004300] = { name="Darkhound (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Hound Jawbone" },
	[43806520] = { npc=1536, name="Scarlet Missionary", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[44403760] = { npc=1522, name="Darkeye Bonecaster", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Ominous Tome" },
	[44804560] = { name="Darkhound (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Hound Jawbone" },
	[45404260] = { npc=1522, name="Darkeye Bonecaster", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Ominous Tome" },
	[45605460] = { name="Darkhound (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Hound Jawbone" },
	[46002920] = { npc=1522, name="Darkeye Bonecaster", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Ominous Tome" },
	[47003240] = { npc=1522, name="Darkeye Bonecaster", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Ominous Tome" },
	[48006540] = { npc=1536, name="Scarlet Missionary", class={ "MAGE", "PRIEST" },
					spell={ "Living Flame", "Homunculi" }, guide={ ns.mage.livingFlame, ns.priest.citadel } },
	[48203940] = { npc=1522, name="Darkeye Bonecaster", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Ominous Tome" },
	[48604960] = { name="Darkhound (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Hound Jawbone" },
	[49203180] = { npc=1522, name="Darkeye Bonecaster", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Ominous Tome" },
	[49206700] = { npc=1537, name="Scarlet Zealot", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[50406960] = { npc=1536, name="Scarlet Missionary", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[50606740] = { name="Scarlet mobs (Various)", faction="Horde", class={ "PRIEST", "ROGUE" },
					tip={ "Warriors and Missionaries", "Pick Pocket or kill. Top-Right Map Piece" },
					spell={ "Homunculi", "Quick Draw" }, guide={ ns.priest.citadel, ns.rogue.quickDraw
					..ns.rogue.quickDrawTG } },
	[50806440] = { npc=1536, name="Scarlet Missionary", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[51206540] = { npc=1537, name="Scarlet Zealot", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[51405720] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[51407000] = { npc=1537, name="Scarlet Zealot", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[51806740] = { npc=1662, name="Captain Perrine", class={ "ROGUE" }, faction="Horde", spell={ "Mutilate" },
					tip="Pick Pocket Captain Perrine for his Signet Ring. Then go to the Brill Town Hall and make a forged  "
						.."document. Hand it to Jamie Nore nearby", guide={ ns.rogue.mutilate } },
	[52502580] = { object=404941, name="Relic Coffer", class={ "ROGUE" }, faction="Horde",
					spell={ "Slaughter from the Shadows" }, guide={ ns.rogue.slaughter },
					tip="Obtain the key from any of the Rot Hide Gnolls and named Undead, Shambling Horror, etc" },
	[52905400] = { name="Rune of Quick Draw", faction="Horde", class={ "ROGUE" }, 
					tip="Final location West of Brill, under the bridge west side",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG } },
	[53404380] = { name="Rot Hide (Various)", class={ "ROGUE", "ROGUE", "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Slaughter from the Shadows", "Demonic Grace", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.slaughter, 
						ns.warlock.grace ..ns.warlock.graceTG, ns.warrior.devastate ..ns.warrior.devastateDor },
					tip={ "Bottom-Left Map Piece Agamand Relic Coffer Key (Drop or Pickpocketing)",
							nil, "Gnoll Blood", "Severed Gnoll Head" } },
	[53606800] = { npc=1537, name="Scarlet Zealot", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[53606900] = { npc=1536, name="Scarlet Missionary", class={ "MAGE", "PRIEST" },
					spell={ "Living Flame", "Homunculi" }, guide={ ns.mage.livingFlame, ns.priest.citadel } },
	[53805980] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[54005540] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[55005240] = { name="Darkhound (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG }, tip="Hound Jawbone" },
	[55804140] = { name="Rot Hide (Various)", class={ "ROGUE", "ROGUE", "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Slaughter from the Shadows", "Demonic Grace", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.slaughter, 
						ns.warlock.grace ..ns.warlock.graceTG, ns.warrior.devastate ..ns.warrior.devastateDor },
					tip={ "Bottom-Left Map Piece Agamand Relic Coffer Key (Drop or Pickpocketing)",
							nil, "Gnoll Blood", "Severed Gnoll Head" } },
	[56604660] = { name="Rot Hide (Various)", class={ "ROGUE", "ROGUE", "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Slaughter from the Shadows", "Demonic Grace", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.slaughter, 
						ns.warlock.grace ..ns.warlock.graceTG, ns.warrior.devastate ..ns.warrior.devastateDor },
					tip={ "Bottom-Left Map Piece Agamand Relic Coffer Key (Drop or Pickpocketing)",
							nil, "Gnoll Blood", "Severed Gnoll Head" } },
	[57003400] = { name="Rot Hide (Various)", class={ "ROGUE", "ROGUE", "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Slaughter from the Shadows", "Demonic Grace", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.slaughter, 
						ns.warlock.grace ..ns.warlock.graceTG, ns.warrior.devastate ..ns.warrior.devastateDor },
					tip={ "Bottom-Left Map Piece Agamand Relic Coffer Key (Drop or Pickpocketing)",
							nil, "Gnoll Blood", "Severed Gnoll Head" } },
	[57205540] = { npc=212252, name="Harvest Golem V000-A", class={ "WARRIOR" }, spell={ "Shockwave" }, faction="Horde",
					tip="Does NOT reset, so keep running back!",
					quest={ { 84135, 84137, 84138, 84146, 84211, 84212, 84213,  } }, guide={ ns.warrior.shockwave },
					questName={ { "Beach Bot", "Mechanical Romance", "Frosty Favors", "Red Bag Blues", "Poacher's Den", 
						"Nookin' it Back", "Rift Away", } }, },
	[57602820] = {  name="Vile Fin mobs (Various)", class={ "ROGUE", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Between the Eyes", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.precision, 
						ns.warrior.devastate ..ns.warrior.devastateDor }, 
					tip={ "Bottom-Right Map Piece (Drop or Pickpocketing). Shipwreck Cache Key (mostly) Pickpocketing",
							"Key for the Cache", "Severed Murloc Head" } },
	[57803700] = { name="Rot Hide (Various)", class={ "ROGUE", "ROGUE", "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Slaughter from the Shadows", "Demonic Grace", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.slaughter, 
						ns.warlock.grace ..ns.warlock.graceTG, ns.warrior.devastate ..ns.warrior.devastateDor },
					tip={ "Bottom-Left Map Piece Agamand Relic Coffer Key (Drop or Pickpocketing)",
							nil, "Gnoll Blood", "Severed Gnoll Head" } },
	[58003600] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[58503050] = { npc=1753, name="Maggot Eye", class={ "WARLOCK" }, faction="Horde",
					spell={ "Soul Siphon" }, guide={ ns.warlock.soulSiphon },
					tip="It's level 10. Two classes need it! Inside the house in Garren's Haunt" },
	[59204440] = { name="Rot Hide (Various)", class={ "ROGUE", "ROGUE", "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Slaughter from the Shadows", "Demonic Grace", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.slaughter, 
						ns.warlock.grace ..ns.warlock.graceTG, ns.warrior.devastate ..ns.warrior.devastateDor },
					tip={ "Bottom-Left Map Piece Agamand Relic Coffer Key (Drop or Pickpocketing)",
							nil, "Gnoll Blood", "Severed Gnoll Head" } },
	[59505230] = { object=405879, name="Apothecary Society Primer", class={ "MAGE" }, faction="Horde",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 79095, }, questName={ "The Apothecary's Metaphysical Primer", },
					tip="On the shelf next to Apothecary Johaan" },
	[59803250] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[59903710] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[60403900] = { name="Rot Hide (Various)", class={ "ROGUE", "ROGUE", "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Slaughter from the Shadows", "Demonic Grace", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.slaughter, 
						ns.warlock.grace ..ns.warlock.graceTG, ns.warrior.devastate ..ns.warrior.devastateDor },
					tip={ "Bottom-Left Map Piece Agamand Relic Coffer Key (Drop or Pickpocketing)",
							nil, "Gnoll Blood", "Severed Gnoll Head" } },
	[60605060] = { npc=2310, name="Jamie Nore", class={ "ROGUE" }, faction="Horde", spell={ "Mutilate" },
					tip="Pick Pocket Captain Perrine for a Signet Ring. Then go to the Brill Town Hall and make a forged "
						.."document. Hand it to Jamie Nore nearby", guide={ ns.rogue.mutilate } },
	[60803580] = { name="Rot Hide (Various)", class={ "ROGUE", "ROGUE", "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Slaughter from the Shadows", "Demonic Grace", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.slaughter, 
						ns.warlock.grace ..ns.warlock.graceTG, ns.warrior.devastate ..ns.warrior.devastateDor },
					tip={ "Bottom-Left Map Piece Agamand Relic Coffer Key (Drop or Pickpocketing)",
							nil, "Gnoll Blood", "Severed Gnoll Head" } },
	[61602800] = {  name="Vile Fin mobs (Various)", class={ "ROGUE", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Between the Eyes", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.precision, 
						ns.warrior.devastate ..ns.warrior.devastateDor }, 
					tip={ "Bottom-Right Map Piece (Drop or Pickpocketing). Shipwreck Cache Key (mostly) Pickpocketing",
							"Key for the Cache", "Severed Murloc Head" } },
	[61605240] = { npc=2127, name="Rupert Boch", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Tactics" }, guide={ ns.warlock.tactics } },
	[61805180] = { name="Penny Hawkins & Blueheart", class={ "WARRIOR" }, faction="Horde",
					spell={ "Frenzied Assault" }, guide={ ns.warrior.frenziedAssault },
					tip="Speak to Penny Hawkins first, and then speak to Blueheart, who is in the basement", },
	[58507650] = { npc=211022, name="Owen Thadd", class={ "MAGE", }, faction="Horde", mageBook=true,
					spell=ns.mage.bookRunes, quest=ns.mage.bookQuestIDs, questName=ns.mage.bookQuestNames, 
					guide=ns.mage.books, tip="Progress", },
	[62507650] = { npc=211022, name="Owen Thadd", class={ "MAGE" }, faction="Horde", mageBook=true,
					spell=ns.mage.bookRunes, quest=ns.mage.booksQuestIDsH, questName=ns.mage.booksQuestNamesH, 
					guide=ns.mage.books, },
	[60507650] = { npc=211022, name="Owen Thadd", class={ "MAGE" }, faction="Horde",
					spell={ "Temporal Anomaly" }, guide={ ns.mage.temporal },
					quest={ { 82084 }, }, questName={ { "A Lesson in Literacy" }, }, },					
	[63603080] = {  name="Vile Fin mobs (Various)", class={ "ROGUE", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Between the Eyes", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.precision, 
						ns.warrior.devastate ..ns.warrior.devastateDor }, 
					tip={ "Bottom-Right Map Piece (Drop or Pickpocketing). Shipwreck Cache Key (mostly) Pickpocketing",
							"Key for the Cache", "Severed Murloc Head" } },
	[66204000] = { npc=202060, name="Frozen Murloc", class={ "MAGE", "WARLOCK" }, faction="Horde",
					tip="Needs about five separate Fire debuffs to defrost",
					spell={ "Burnout", "Chaos Bolt" }, guide={ ns.frozen } },
	[66702460] = {  object=405201, name="Shipwreck Cache", class={ "ROGUE" }, faction="Horde",
					spell={ "Between the Eyes" }, guide={ ns.rogue.precision }, 
					tip="Find the Shipwreck Cache Key from the Vile Fin Murlocs" },
	[69202500] = {  name="Vile Fin mobs (Various)", class={ "ROGUE", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Between the Eyes", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.precision, 
						ns.warrior.devastate ..ns.warrior.devastateDor }, 
					tip={ "Bottom-Right Map Piece (Drop or Pickpocketing). Shipwreck Cache Key (mostly) Pickpocketing",
							"Key for the Cache", "Severed Murloc Head" } },
	[73802680] = {  name="Vile Fin mobs (Various)", class={ "ROGUE", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Quick Draw", "Between the Eyes", "Devastate" },
					guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG, ns.rogue.precision, 
						ns.warrior.devastate ..ns.warrior.devastateDor }, 
					tip={ "Bottom-Right Map Piece (Drop or Pickpocketing). Shipwreck Cache Key (mostly) Pickpocketing",
							"Key for the Cache", "Severed Murloc Head" } },
	[74506160] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[75505840] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[76604480] = { npc=208927, name="Dead Acolyte", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Tactics" }, guide={ ns.warlock.tactics } },
	[76806100] = { npc=208712, name="Odd Melon", class={ "MAGE" }, faction="Horde",
					spell={ "Enlightenment" }, guide={ ns.mage.enlightenment } },
	[77005520] = { npc=1537, name="Scarlet Zealot", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[79003200] = { name="Scarlet mobs (Various)", faction="Horde", class={ "ROGUE" },
					tip="Pick Pocket or kill. Top-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG } },
	[79805540] = { name="Scarlet mobs (Various)", faction="Horde", class={ "ROGUE" },
					tip="Pick Pocket or kill. Top-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTG } },
	[80005540] = { npc=1537, name="Scarlet Zealot", class={ "MAGE" },
					spell={ "Living Flame" }, guide={ ns.mage.livingFlame } },
	[81203210] = { object=412147, name="Supply Locker", class={ "ROGUE" }, spell={ "Shadowstep" }, guide={ ns.rogue.shadowstep },
					quest={ { 78699,78676 } }, questName={ { "The Eye of Bhossca (Dead Drop)", "The Eye of Bhossca (SM)" } } },
	[83007250] = { npc=226797, name="Prazik Pilfershard", class={ "WARLOCK" }, spell={ "Mark of Chaos" },
					guide={ ns.warlock.markChaos }, faction="Horde" },
--	[84002900] = { name="Skillbooks", tip="Scarlet Monastery", skillBook=true, guide={ ns.dungeonDrops }, 
--					class={ "DRUID", "DRUID", "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "PRIEST", "ROGUE", "SHAMAN",
--						"WARLOCK", "WARLOCK", "WARRIOR" },	
--					spell={ "Deeper Wilds", "Enhanced Restoration", "Revive", "Aspect of the Viper", "Expanded Intellect",
--							"Enhanced Blessings", "Increased Fortitude", "Shadowfiend", "Redirect", "Totemic Projection",
--							"Portal Summoning", "Soul Harvesting", "Commanding Shout" }, },
}
points[ 1458 ] = { -- Undercity
	[24004160] = { npc=204070, name="Soboz", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceTG },
					tip="Undercity Sewer" },
	[48007060] = { npc=208619, name="Dorac Graves", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateDor }, },
	[64603820] = { npc=214098, name="Gishah", faction="Horde",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[70103450] = { npc=211022, name="Owen Thadd", class={ "MAGE", }, faction="Horde", mageBook=true,
					spell=ns.mage.bookRunes, quest=ns.mage.bookQuestIDs, questName=ns.mage.bookQuestNames, 
					guide=ns.mage.books, tip="Progress", },
	[74103450] = { npc=211022, name="Owen Thadd", class={ "MAGE" }, faction="Horde", mageBook=true,
					spell=ns.mage.bookRunes, quest=ns.mage.booksQuestIDsH, questName=ns.mage.booksQuestNamesH, 
					guide=ns.mage.books, },
	[72103450] = { npc=211022, name="Owen Thadd", class={ "MAGE" }, faction="Horde",
					spell={ "Temporal Anomaly" }, guide={ ns.mage.temporal },
					quest={ { 82084 }, }, questName={ { "A Lesson in Literacy" }, }, },					
	[79801900] = { npc=233428, name="Rune Broker", skillBook=true, guide=ns.runeBroker, faction="Horde",
					tip="In The Magic Quarter", },
	[83602620] = { npc=208682, name="Denton Bleakway", class={ "WARLOCK" }, faction="Horde",
					spell={ "Soul Siphon" }, guide={ ns.warlock.soulSiphon } },
	[84601620] = { npc=1498, name="Bethor Iceshard", class={ "MAGE" }, faction="Horde",
					spell={ "Living Bomb" }, guide={ ns.mage.livingBomb },
					quest={ { 460, 461, 491, 78277 } },
					questName={ { "Resting in Pieces", "The Hidden Niche", "Wand to Bethor", "A Token of Gratitude" } } },
	[84802660] = { npc=5675, name="Carendin Halgar", class={ "WARLOCK" }, faction="Horde",
					spell={ "Soul Siphon" }, guide={ ns.warlock.soulSiphon } },
}
points[ 1422 ] = { -- Western Plaguelands
	[36805470] = { name="Novice Frost Mage", class={ "MAGE" }, tip={ "In the house" }, spell={ "Overheat" },
					guide={ ns.mage.overheat } },
	[37805560] = { npc=1783, name="Skeletal Flayer", class={ "WARLOCK" }, spell={ "Mark of Chaos" },
					guide={ ns.warlock.markChaos } },
	[38205460] = { name="Scrolls", class={ "MAGE" }, tip="Upstairs, in the farmhouse",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,				
					quest={ 84395, }, questName={ "Undead Potatoes" }, },
	[42201810] = { object=457443, name="Scarlet Ledger", class={ "PRIEST" }, spell={ "Binding Heal" },
					quest={ ( ( ns.faction == "Alliance" ) and { 84320, 84321, 84322, 84323 } or
					{ 84405, 84406, 84322, 84407 } ) }, guide={ ns.priest.bindingHeal },
					questName={ { "Lost Heirloom", "Relic of Light", "Scarlet Research", "The Prize Within", } }, },
	[43368414] = { npc=226799, name="Pixi Pilfershard", class={ "WARLOCK" }, spell={ "Mark of Chaos" },
					guide={ ns.warlock.markChaos }, faction="Alliance" },
	[44604660] = { npc=227519, name="Fallen Knight", class={ "PALADIN", "PALADIN", "PALADIN" },
					spell={ "Righteous Vengeance", "Shock and Awe", "Avenging Wrath" },
					tip="(1) Begin here (4) You MUST select \"burn\"",
					guide={ ns.paladin.vengeance, ns.paladin.shockAwe, ns.paladin.avengingWrath },
					quest={ { 83808, 83935, 83822, }, { 83936, 83823, 84008, 84017, 84125, 84126 }, { 84126 } },
					questName={ { "In a Bind", "Clearing the Path", "The Fallen Knight", }, { "Dalton's Quest", 
						"A Lesson in Violence", "A Lesson in Grace", "A Time to Kill", "Close Enough to Touch",
						"Finish the Fight" },{ "Finish the Fight" }, }, },
	[45001410] = { object=463540, name="Scarlet Toolbox", class={ "ROGUE" }, spell={ "Crimson Tempest" },
					guide={ ns.rogue.crimson } },
	[45105190] = { name="Novice Frost Mage", class={ "MAGE" }, spell={ "Overheat" }, guide={ ns.mage.overheat } },
	[45801260] = { npc=1883, name="Scarlet Worker", class={ "ROGUE" }, spell={ "Crimson Tempest" }, guide={ ns.rogue.crimson } },
	[45801830] = { object=461632, name="Marked Crate", class={ "ROGUE" }, spell={ "Crimson Tempest" }, guide={ ns.rogue.crimson,
					tip="This is the middle tower of Hearthglen, top floor. Safe Box Key is inside the crate" } },
	[45705390] = { object=455812, name="Squire Cuthbert's Sword", class={ "PALADIN", "PALADIN", "PALADIN" },
					spell={ "Righteous Vengeance", "Shock and Awe", "Avenging Wrath" }, tip="(3) of the chain",
					guide={ ns.paladin.vengeance, ns.paladin.shockAwe, ns.paladin.avengingWrath },
					quest={ { 83808, 83935, 83822, }, { 83936, 83823, 84008, 84017, 84125, 84126 }, { 84126 } },
					questName={ { "In a Bind", "Clearing the Path", "The Fallen Knight", }, { "Dalton's Quest", 
						"A Lesson in Violence", "A Lesson in Grace", "A Time to Kill", "Close Enough to Touch",
						"Finish the Fight" },{ "Finish the Fight" }, }, },
	[46301460] = { object=461633, name="Belavus' Safe Box", class={ "ROGUE" }, spell={ "Crimson Tempest" },
					guide={ ns.rogue.crimson,
					tip="This is the middle tower of Hearthglen, top floor. Safe Box Key is inside the crate" } },
	[47301370] = { object=457102, name="Elements for Dummies Volume III: Arcane", class={ "DRUID", "HUNTER", "MAGE" },
					spell={ "Arcane Specialization" }, ring=true, guide="Locate a tower in Hearthglen, north-western "
					.."Western Plaguelands. Top floor of the tower. The book is leaning against a bookshelf. Loot!", },
	[47805060] = { npc=227672, name="Squire Cuthbert", class={ "PALADIN", "PALADIN", "PALADIN" },
					spell={ "Righteous Vengeance", "Shock and Awe", "Avenging Wrath" }, tip="(2) His location for this step",
					guide={ ns.paladin.vengeance, ns.paladin.shockAwe, ns.paladin.avengingWrath },
					quest={ { 83808, 83935, 83822, }, { 83936, 83823, 84008, 84017, 84125, 84126 }, { 84126 } },
					questName={ { "In a Bind", "Clearing the Path", "The Fallen Knight", }, { "Dalton's Quest", 
						"A Lesson in Violence", "A Lesson in Grace", "A Time to Kill", "Close Enough to Touch",
						"Finish the Fight" },{ "Finish the Fight" }, }, },
	[49807860] = { npc=1783, name="Skeletal Flayer", class={ "WARLOCK" }, spell={ "Mark of Chaos" },
					guide={ ns.warlock.markChaos } },
	[53306450] = { name="Novice Frost Mage", class={ "MAGE" }, spell={ "Overheat" }, guide={ ns.mage.overheat } },
	[54808120] = { object=457389, name="Family Records", class={ "PRIEST" }, spell={ "Binding Heal" },
					quest={ ( ( ns.faction == "Alliance" ) and { 84320, 84321, 84322, 84323 } or
					{ 84405, 84406, 84322, 84407 } ) }, guide={ ns.priest.bindingHeal },
					questName={ { "Lost Heirloom", "Relic of Light", "Scarlet Research", "The Prize Within", } }, },
	[54108070] = { object=457390, name="Survivor Journal", class={ "PRIEST" }, spell={ "Binding Heal" },
					quest={ ( ( ns.faction == "Alliance" ) and { 84320, 84321, 84322, 84323 } or
					{ 84405, 84406, 84322, 84407 } ) }, guide={ ns.priest.bindingHeal },
					questName={ { "Lost Heirloom", "Relic of Light", "Scarlet Research", "The Prize Within", } }, },
	[54808120] = { object=457387, name="Heirloom Coffer", class={ "PRIEST" }, spell={ "Binding Heal" },
					quest={ ( ( ns.faction == "Alliance" ) and { 84320, 84321, 84322, 84323 } or 
					{ 84405, 84406, 84322, 84407 } ) }, guide={ ns.priest.bindingHeal },
					questName={ { "Lost Heirloom", "Relic of Light", "Scarlet Research", "The Prize Within", } }, },
	[59408460] = { object=410847, name="Rusty Safe", class={ "ROGUE" }, tip={ "In the water. Jump down" },
					spell={ "Envenom" }, guide={ ns.rogue.envenom } },
	[64205770] = { name="Novice Frost Mage", class={ "MAGE" }, tip={ "In the house" }, spell={ "Overheat" },
					guide={ ns.mage.overheat } },
	[69417284] = { name="Scrolls", class={ "MAGE" },
					tip="On a table in a nook. Near Blood of Heroes, Scholomance Castle. Right, up ladders",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,				
					quest={ 84402, }, questName={ "Necromancy 101" }, },
}
points[ 1436 ] = { -- Westfall
	[26006950] = { object=408799, name="Idol of the Deep", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					spell={ "Shadow Bolt Volley", "Quick Strike" },
					guide={ ns.warlock.shadowbolts, ns.warrior.quickStrike },
					tip={ "Must use Soul of the Sea", "You must have killed a nearby murloc with your Gillsbane" } },				
	[26206320] = { npc=391, name="Old Murk-Eye", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					spell={ "Shadow Bolt Volley", "Endless Rage" },
					guide={ ns.warlock.shadowbolts, ns.starterZoneClass },
					tip={ "Must use Drain Soul", nil } },
	[27806200] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[27807470] = { npc=391, name="Old Murk-Eye", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					spell={ "Shadow Bolt Volley", "Endless Rage" },
					guide={ ns.warlock.shadowbolts, ns.starterZoneClass },
					tip={ "Must use Drain Soul", nil } },
	[28206820] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[29204520] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[29405500] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[29505150] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[29807920] = { npc=391, name="Old Murk-Eye", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					spell={ "Shadow Bolt Volley", "Endless Rage" },
					guide={ ns.warlock.shadowbolts, ns.starterZoneClass },
					tip={ "Must use Drain Soul", nil } },
	[31404400] = { object=210537, name="Undying Laborer", class={ "PALADIN", "PRIEST" }, faction="Alliance",
					spell={ "Hallowed Ground", "Twisted Faith" },
					guide={ ns.paladin.blessings, ns.priest.twisted ..ns.priest.twistedWest } },
	[31604460] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[31604680] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[31607260] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[32003160] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[32408740] = { npc=391, name="Old Murk-Eye", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					spell={ "Shadow Bolt Volley", "Endless Rage" },
					guide={ ns.warlock.shadowbolts, ns.starterZoneClass },
					tip={ "Must use Drain Soul", nil } },
	[32803420] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[33207000] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[33805320] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[34008220] = { npc=391, name="Old Murk-Eye", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					spell={ "Shadow Bolt Volley", "Endless Rage" },
					guide={ ns.warlock.shadowbolts, ns.starterZoneClass },
					tip={ "Must use Drain Soul", nil } },
	[34804840] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[35003240] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[35003940] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[35003960] = { npc=210533, name="Silverspur", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery},
					tip= "You must farm Young Goretusk (to the north and east of here) or Goretusk (to the south and east "
						.."of here). They are far too numerous to mark with pins. You are wanting to loot Goretusk Haunch. "
						.."Bring it to here to spawn Silverspur.\n\n" },
	[35405100] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[35505690] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[35605220] = { npc=210501, name="Harvest Reaper Prototype", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[35802700] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[36005370] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[36008600] = { npc=391, name="Old Murk-Eye", class={ "WARLOCK", "WARRIOR" }, faction="Alliance",
					spell={ "Shadow Bolt Volley", "Endless Rage" },
					guide={ ns.warlock.shadowbolts, ns.starterZoneClass },
					tip={ "Must use Drain Soul", nil } },
	[36206440] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[36603760] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[36606660] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[37008260] = { npc=450, name="Defias Renegade Mage", class={ "DRUID", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.warrior.quickStrike },
					spell={ "Lacerate", "Quick Strike" }, tip={ "Magic Pumpkin Seed", "Gillsbane" } },
	[37205460] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[37404740] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[37602140] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[37602580] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[39605680] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[40605420] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[40808020] = { objext=408718, name="Equipment Stash", class={ "ROGUE" }, faction="Alliance",
					guide={ ns.rogue.bladeDance }, spell={ "Blade Dance" },
					tip={ "Location of the Equipment Stash. Must have Pp the key" } },
	[41004060] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[41004980] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[41202780] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[41603760] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[41604400] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[41606160] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[42002360] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[42206940] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[42403660] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[43001500] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[43203160] = { npc=572, name="Leprithus", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
	[43805620] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[44403920] = { npc=210501, name="Harvest Reaper Prototype", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[44404660] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[44601940] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[44602480] = { object=210537, name="Undying Laborer", class={ "PALADIN", "PRIEST" }, faction="Alliance",
					spell={ "Hallowed Ground", "Twisted Faith" },
					guide={ ns.paladin.blessings, ns.priest.twisted ..ns.priest.twistedWest } },
	[44802780] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[45003980] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[45004080] = { npc=210501, name="Harvest Reaper Prototype", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[45203240] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[45407050] = { object=409562, name="Spellbook", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 78142, }, questName={ "Bewitchments and Glamours", },
					tip="In the first hut on the left as you enter Moonbrook. Red book on the bottom of a bookshelf" },
	[45603900] = { npc=210501, name="Harvest Reaper Prototype", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[45806680] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[46603760] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[46805220] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[47005160] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[47603560] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[47802360] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[49401920] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[50001840] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[50201500] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[50201740] = { npc=210501, name="Harvest Reaper Prototype", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[50402560] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[50404740] = { npc=210501, name="Defias Scout", class={ "HUNTER", "ROGUE" }, faction="Alliance",
					tip={ "Pick Pocket, don't kill her. Use stealth to approach", nil },
					spell={ "Sniper Training", "Saber Slash" }, guide={ ns.hunter.sniper, ns.rogue.saberSlash } },
	[50601880] = { npc=210501, name="Harvest Reaper Prototype", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[50904720] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[51204080] = { name="Defias Mobs (Various)", class={ "DRUID", "ROGUE", "WARRIOR" }, faction="Alliance",
					guide={ ns.druid.lacerate, ns.rogue.bladeDance, ns.warrior.quickStrike },
					spell={ "Lacerate", "Blade Dance", "Quick Strike" },
					tip={ "Magic Pumpkin Seed", "Pp for Discrete Envelope and Equipment Stash Key", "Gillsbane" } },
	[51205500] = { npc=210501, name="Defias Scout", class={ "HUNTER", "ROGUE" },
					tip={ "Pick Pocket, don't kill her. Use stealth to approach", nil }, faction="Alliance",
					spell={ "Sniper Training", "Saber Slash" }, guide={ ns.hunter.sniper, ns.rogue.saberSlash } },
	[51803400] = { npc=210501, name="Harvest Reaper Prototype", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[52403020] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[52803300] = { npc=210501, name="Harvest Reaper Prototype", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[53602360] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[53604000] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[53007880] = { npc=450, name="Defias Renegade Mage", class={ "MAGE" },
					spell={ "Regeneration" }, guide={ ns.mage.regeneration } },
	[54603660] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[54604360] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[55004220] = { npc=212252, name="Harvest Golem V000-A", class={ "WARRIOR" }, spell={ "Shockwave" }, faction="Alliance",
					tip="Does NOT reset, so keep running back!",
					quest={ { 84135, 84137, 84138, 84146, 84211, 84212, 84213,  } }, guide={ ns.warrior.shockwave },
					questName={ { "Beach Bot", "Mechanical Romance", "Frosty Favors", "Red Bag Blues", "Poacher's Den", 
						"Nookin' it Back", "Rift Away", } }, },
	[55401280] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[56003120] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[56802260] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[58201000] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[58601540] = { name="Riverpaw Mobs (Various Gnolls)", class={ "DRUID" },
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[58601740] = { name="Watchers & Golems", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[60403560] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[61305810] = { npc=210501, name="Harvest Reaper Prototype", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[61607540] = { npc=572, name="Leprithus", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
	[62405200] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[65206320] = { npc=572, name="Leprithus", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
	[65206700] = { npc=7050, name="Defias Drone", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
	[66607040] = { npc=7050, name="Defias Drone", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
	[68407360] = { npc=832, name="Dust Devil", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[68607060] = { npc=7050, name="Defias Drone", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
	[69407310] = { npc=7050, name="Defias Drone", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
	[69407560] = { npc=7050, name="Defias Drone", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
	[71607220] = { npc=7050, name="Defias Drone", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
	[73607360] = { npc=7050, name="Defias Drone", class={ "PALADIN" }, faction="Alliance",
					spell={ "Hand of Reckoning" }, guide={ ns.paladin.justice } },
}
points[ 1437 ] = { -- Wetlands
	[08205860] = { npc=3179, name="Harold Riggs", class={ "PALADIN" },
					spell={ "Sheath of Light" }, guide={ ns.paladin.sheathLight },
					quest={ { 79939, 79940, 79945, 79970 } },
					tip="After Harold you'll need to swim south to Dun Morogh to an area otherwise (almost) inaccessible",
					questName={ { "The Broken Hammer", "A Lost Brother", "Orders from the Grand Crusader",
						"Aeonas the Vindicated" } } },
	[31271830] = { name="Vodyanoi / Stump", class={ "DRUID" },
					spell={ "Starsurge" }, tip="Stay a while and listen", guide={ ns.druid.runeOfStars } },
	[33634786] = { object=409717, name="Scrolls", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 78146, }, questName={ "Goaz Scrolls", }, tip="Lowest level in a big urn" },
	[36891521] = { npc=212186, name="Grugimdern", class={ "DRUID" },
					spell={ "Starsurge" }, tip="He's under a bridge", guide={ ns.druid.runeOfStars } },
	[46601820] = { npc=3180, name="Dark Iron Entrepreneur", class={ "WARRIOR" },
					spell={ "Raging Blow" }, guide={ ns.warrior.ragingBlow }, quest={ 78132, 78134, 78133, 78144 },
					questName={ "Dragonslayer's Helm", "Dragonslayer's Lance", "Dragonslayer's Shield",
						"Alonso the Dragonslayer" } },
	[47606480] = { npc=211965, name="Carrodin", class={ "HUNTER", "WARRIOR" }, tip="Back of the cave. Level 25",
					spell={ "Cobra Slayer", "Consumed by Rage" }, guide={ ns.hunter.heartLion, ns.warrior.consumedRage } },
	[48001540] = { name="Dark Iron Demolitionist/Dwarf/Saboteur/Tunneler", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78266 }, questName={ "Dark Iron Ordinance" } },
	[48001860] = { name="Dark Iron Demolitionist/Dwarf/Saboteur/Tunneler", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78266 }, questName={ "Dark Iron Ordinance" } },
	[58310694] = { object=420055, name="Rowboat", class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "Eclipse", "Trap Launcher", "Brain Freeze", "The Art of War",
					"Mind Spike", "Poisoned Knife", "Ancestral Awakening", "Shadow and Flame", "Enraged Regeneration" },
					guide={ ns.pillaged }, quest={ { 79229, 79235, 79236, 79242 } }, 
					questName={ { "Highway Robbery", "On the Lam", "Cherry for Your Thoughts", "No Honor Among Thieves" } } },
	[60002480] = { name="Dark Iron Demolitionist/Dwarf/Saboteur/Tunneler", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78266 }, questName={ "Dark Iron Ordinance" } },
	[62202980] = { name="Dark Iron Demolitionist/Dwarf/Saboteur/Tunneler", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78266 }, questName={ "Dark Iron Ordinance" } },
	[62602600] = { name="Dark Iron Demolitionist/Dwarf/Saboteur/Tunneler", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78266 }, questName={ "Dark Iron Ordinance" } },
	[74106910] = { object=457093, name="Blunt Justice: A Dwarf's Tale", spell={ "Mace Specialization" }, ring=true,
					class={ "DRUID", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARRIOR", },
					guide="Huge walk/run from Menethil. If your map is fogged then look for a path east in the "
					.."central Wetlands and follow it is at curves down south. Ascend Grim Batol\n\n"
					.."Lots of normal mobs along the way. After the third gate there are no more mobs.\n\n"
					.."At the final Grim Batol door, the book is on a barrel in the right corner",
					tip="If you have Aragriar's Whimsical World Warper then you are a winner! Four hour cooldown so "
					.."with planning you'll eventually be transported right to the Grim Batol door!!! Nevermind the "
					.."inconvenience of the other dud locations..." },
}

--=======================================================================================================
--
-- KALIMDOR
--
--=======================================================================================================

points[ 1440 ] = { -- Ashenvale
	[07201320] = { name="Wrathtail Naga (Various)", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[09602760] = { name="Wrathtail Naga (Various)", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[11201380] = { name="Wrathtail Naga (Various)", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[11603420] = { npc=12736, name="Je'neu Sancrea", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield } },
	[11803200] = { name="Wrathtail Naga (Various)", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[13003000] = { name="Wrathtail Naga (Various)", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[13072486] = { name="Arcane Shard", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[13501577] = { name="Arcane Shard", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[14061982] = { name="Arcane Shard", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[14201520] = { name="Wrathtail Naga (Various)", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[14202580] = { name="Wrathtail Naga (Various)", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[14802080] = { name="Wrathtail Naga (Various)", class={ "MAGE" },
					spell={ "Living Bomb" }, guide={ ns.mage.arcaneBlast } },
	[26203860] = { npc=3663, name="Delgren the Purifier", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[32004300] = { npc=3924, name="Thistlefur Shaman", class={ "HUNTER", "PRIEST" },
					spell={ "Kill Shot", "Strength of Soul" },
					guide={ ns.hunter.killCommand, ns.priest.strength }, tip={ "Drops Wild Magic Essence", nil },
					quest={ { 78114, 78121 }, {} }, questName={ { "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" }, {} } },
	[38002600] = { name="This way to the Dream Catcher", class={ "PRIEST" },
					tip= "Go north through a large Wooden Gate, veering a little east as you go north. "
						.."straight through a stone gate. Up the tree and go right at the first fork. "
						.."Now take the left branch. Obscured by leaves, you'll eventually find some "
						.."dreamcatchers. Use your Primal Insight",
					spell={ "Strength of Soul" }, guide={ ns.priest.strength } },
	[40003280] = { name="Thistlefur Shaman/Totemic", class={ "HUNTER", "PRIEST" },
					spell={ "Kill Shot", "Strength of Soul" },
					guide={ ns.hunter.killCommand, ns.priest.strength }, tip={ "Drops Wild Magic Essence", nil },
					quest={ { 78114, 78121 }, {} }, questName={ { "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" }, {} } },
	[42407000] = { npc=210995, name="Alonso", class={ "WARRIOR" },
					spell={ "Raging Blow" }, guide={ ns.warrior.ragingBlow }, quest={ 78132, 78134, 78133, 78144 },
					questName={ "Dragonslayer's Helm", "Dragonslayer's Lance", "Dragonslayer's Shield",
						"Alonso the Dragonslayer" } },
	[45006960] = { npc=3917, name="Befouled water Elemental", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Torential Rage" },
	[47206720] = { npc=3917, name="Befouled water Elemental", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Torential Rage" },
	[47607060] = { npc=3917, name="Befouled water Elemental", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Torential Rage" },
	[49606920] = { npc=3917, name="Befouled water Elemental", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Torential Rage" },
	[50807120] = { npc=3917, name="Befouled water Elemental", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Torential Rage" },
	[51205900] = { name="Thistlefur Totemic / Foulweald Shaman", class={ "HUNTER" }, spell={ "Kill Shot" },
					guide={ ns.hunter.killCommand }, tip="Drops Wild Magic Essence",
					quest={ 78114, 78121 }, questName={ "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" } },
	[51606840] = { npc=3917, name="Befouled water Elemental", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Torential Rage" },
	[52607220] = { npc=3917, name="Befouled water Elemental", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Torential Rage" },
	[54606300] = { npc=3750, name="Foulweald STotemic", class={ "PRIEST" },
					spell={ "Strength of Soul" }, guide={ ns.priest.strength } },
	[56206400] = { name="Thistlefur Totemic / Foulweald Shaman", class={ "HUNTER" }, spell={ "Kill Shot" },
					guide={ ns.hunter.killCommand }, tip="Drops Wild Magic Essence",
					quest={ 78114, 78121 }, questName={ "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" } },
	[69608380] = { npc=11684, name="Warsong Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[71208140] = { npc=11684, name="Warsong Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[73207940] = { npc=11684, name="Warsong Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[78008360] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[79008020] = { npc=213444, name="The Mysterious Traveler", class={ "WARLOCK" },			
					spell={ "Metamorphosis" }, quest={ { 78684 } }, questName={ { "Mysterious Traveler" } },
					guide={ ns.warlock.metamorphosis } },
	[79808060] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[80206480] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[81006860] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[82406480] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[82407160] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[83007840] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[83606760] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[84507500] = { name="Demon Fall Canyon", class={ "PRIEST" }, spell={ "Vampiric Touch" },
					guide={ "Drops off Hellscream's Phantom, the final boss. Drop rate?" }, },
	[84607060] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[84607500] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[85106070] = { npc=11684, name="Warsong Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[86007860] = { name="Mannoroc Lasher + (Infernals, Felguards, Hounds)", class={ "PALADIN", "WARLOCK" },
					faction="Alliance",
					spell={ "Divine Storm", "Metamorphosis" }, guide={ ns.paladin.divineStorm, ns.warlock.metamorphosis },
					quest={ { 78088, 78089, 78090, 78091, 78092, 78093 }, { 1740, 78680, 78681, 78684, 78702 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" }, { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[86205440] = { npc=11684, name="Warsong Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[86954316] = { item=210044, name="Symbol of the First Owl", class={ "DRUID" },
					spell={ "Wild Growth" }, guide={ ns.druid.wildGrowth },
					tip="You need to \"channel\" the statue. Then three waves appear. Enough delay between each wave to "
						.."eat, whatever. You'll have a wisp which tries to help you. It basically tanks. You can't heal it "
						.."so you may need to go bear and taunt" },
	[88405680] = { npc=11684, name="Warsong Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[89205420] = { npc=11684, name="Warsong Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[89604040] = { name="Quartermaster Kyleen / Field Captain Hannalah", class=ns.allClass, spell=ns.emeraldSpell,
					tip="Pin also used by the CGM AddOn so one may be mostly overlapping the other",
					guide={ ns.nightmareIncursions } },
	[89507700] = { object=409315, name="Shattered Orb", class={ "PALADIN" },
					faction="Alliance", tip="Click below the weapons",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[92504040] = { object=414197, name="Bough of Shadows", class={ "WARLOCK" },
					tip="Three possible locations. it's a purple tree with sparkles. Use your Invisibility Potion. "
						.."You will receive a nasty debuff. Using Shadow Ward will help",
					spell={ "Grimoire of Synergy" }, guide={ ns.warlock.synergy },
					quest={ { 78994, 78914, 79298 } }, questName={ { "A Solid Foundation", "Soul Vessel", "Tempting Fate" } } },
	[94003840] = { name="Dreampyre Imp, Emberspark Dreamsworn, Dreamhunter Hound", class={ "WARLOCK" },
					spell={ "Immolation Aura" }, guide={ "Farm Dreampyre Imps for a Dreampyre Fire, "
						.."Emberspark Dreamsworn for a Dreamsworn Horn, Dreamhunter Hound for a Dreamhunter Fang.\n\n"
						.."Combine and Voilà!" } },
}
points[ 1447 ] = { -- Azshara
	[14804990] = { npc=222004, name="Corrupt Moderate Manifestation of Water", class={ "SHAMAN" }, spell={ "Overcharged" },
					guide={ ns.shaman.overcharged },
					quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[18205450] = { npc=222698, name="Fel Scar", class={ "WARLOCK" },
					spell={ "Decimation" }, guide={ ns.warlock.decimation }, tip=ns.warlock.felRift, },
	[20206200] = { name="Haldarr mobs (Various)", class={ "SHAMAN" }, spell={ "Overcharged" }, guide={ ns.shaman.overcharged },
					quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[20606197] = { object=441865, name="Traveller's Knapsack", class={ "DRUID" }, spell={ "Elune's Fires" },
					guide={ ns.druid.elunesFires }, tip="Don't forget to loot two items: Keldara's Log and the Mortar & Pestle" },
	[20806200] = { object=441250, name="Book", class={ "MAGE" }, tip="On a crate in the Haldarr Encampment",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 81952, }, questName={ "Everyday Etiquette" }, },
	[22007900] = { item=221318, name="Azshara Leycryst", class={ "MAGE", "PALADIN", "PRIEST", "WARLOCK" },
					spell={ "Displacement", "Purifying Power", "Despair", "Backdraft" }, guide={ ns.leylineGuide },
					tip="Near to The Forlorn Ridge" },
	[25456612] = { npc=221400, name="Kajind", class={ "WARRIOR" }, tip="Up in a mountain, path is from the east",
					spell={ "Gladiator Stance" }, guide={ ns.warrior.gladiator }, preRune={ { "Blood Frenzy", "Rallying Cry" } },
					quest={ { 81682, 81697, 81801, 81877 } }, 
					questName={ { "The Old Champ", "Defanged", "Return to the Arena", "Fight Night" } } },
	[29008200] = { npc=222698, name="Fel Scar", class={ "WARLOCK" },
					spell={ "Decimation" }, guide={ ns.warlock.decimation }, tip=ns.warlock.felRift, },
	[34004900] = { name="Shrine of the Beast", class={ "DRUID" }, spell={ "Efflorescence" },
					guide={ ns.druid.efflorescence }, quest={ 81924 }, questName={ "Wisdom of the Guardians" } },
	[36207000] = { npc=221651, name="Ceruleos", class={ "WARRIOR" }, spell={ "Gladiator Stance" },
					guide={ ns.warrior.gladiator }, preRune={ { "Blood Frenzy", "Rallying Cry" } },
					quest={ { 81682, 81697, 81801, 81877 } }, 
					questName={ { "The Old Champ", "Defanged", "Return to the Arena", "Fight Night" } } },
	[42607160] = { npc=221651, name="Ceruleos", class={ "WARRIOR" }, spell={ "Gladiator Stance" },
					guide={ ns.warrior.gladiator }, preRune={ { "Blood Frenzy", "Rallying Cry" } },
					quest={ { 81682, 81697, 81801, 81877 } }, 
					questName={ { "The Old Champ", "Defanged", "Return to the Arena", "Fight Night" } } },
	[43003000] = { npc=222580, name="Child of Apa'ro", class={ "DRUID" }, spell={ "Efflorescence" },
					guide={ ns.druid.efflorescence }, quest={ 81924 }, questName={ "Wisdom of the Guardians" } },
	[76834429] = { object=457091, name="Chen's Training Manual", spell={ "Nature Specialization" }, ring=true, 
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "SHAMAN", "WARLOCK", "WARRIOR", },
					tip="The first mention of Pandaren and/or Chen in Classic?",
					guide="It's on the ground floor of the Temple of Arkkoran, next to a small pool", },
	[89003300] = { npc=223590, name="Shrine of the Watcher", class={ "PRIEST" }, spell={ "Eye of the Void" },
					quest={ { 82316 } }, questName={ { "Seven Eyes I Seek..." } }, guide={ ns.priest.eyeOfVoid } },
}
points[ 1439 ] = { -- Darkshore
	[30404800] = { npc=414646, name="Remnant", class={ "PRIEST" }, faction="Alliance", 
					spell={ "Shadow Word: Death" }, guide={ "Just click the glowing orb already!" } },
	[32803710] = { object=414624, name="Lighthouse Stash", class={ "ROGUE" }, faction="Alliance",
					tip="Between the roots of a large tree on a small island with a lighthouse",
					spell={ "Saber Slash" }, guide={ ns.rogue.saberSlash } },
	[37005360] = { npc=2234, name="Young Reef Crawler", class={ "DRUID", "HUNTER" },
					spell={ "Lacerate", "Beast Mastery" }, guide={ ns.druid.lacerate, ns.hunter.beastMastery } },
	[38603160] = { npc=2234, name="Young Reef Crawler", class={ "DRUID", "HUNTER" },
					spell={ "Lacerate", "Beast Mastery" }, guide={ ns.druid.lacerate, ns.hunter.beastMastery } },
	[38665689] = { name="Furbolg mobs (Various)", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery} },
	[39805280] = { name="Blackwood Mobs (Various Furlbog)", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[40605620] = { name="Blackwood Mobs (Various Furlbog)", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[40608860] = { name="Blackwood Mobs (Various Furlbog)", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[42608280] = { name="Blackwood Mobs (Various Furlbog)", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[45008900] = { name="Blackwood Mobs (Various Furlbog)", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[48001650] = { object=408802, name="Gnarled Harpoon", class={ "HUNTER", "WARRIOR" }, faction="Alliance",
					tip="Inside the head of a dead seas turtle",
					spell={ "Sniper Training", "Quick Strike" },
					guide={ ns.hunter.sniper, ns.warrior.quickStrike }, tip="Use it on Paxnozz" },
	[50001360] = { npc=210482, name="Paxnozz", class={ "HUNTER", "WARRIOR" }, faction="Alliance",
					spell={ "Sniper Training", "Quick Strike" },
					guide={ ns.hunter.sniper, ns.warrior.quickStrike },
					tip="Obtain a Gnarled Harpoon from nearby, then use it" },
	[50603560] = { name="Blackwood Mobs (Various Furlbog)", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[51603760] = { npc=6788, name="Den Mother", class={ "DRUID" }, faction="Alliance",
					spell={ "Savage Roar" }, guide={ ns.druid.ferocious } },
	[52803460] = { name="Blackwood Mobs (Various Furlbog)", class={ "DRUID" },
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[55002760] = { npc=2336, name="Dark Strand Fiend", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[55003260] = { npc=219451, name="Lady Sedorax", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[55803420] = { npc=219451, name="Lady Sedorax", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[56202640] = { name="Tower of Athalaxx", class={ "PALADIN" }, faction="Alliance",
					spell={ "Divine Storm" }, quest={ { 78088, 78089, 78090, 78091, 78092, 78093 } },
					questName={ { "A Strange Artifact", "Advice from Stormwind", "A Second Opinion", "Earning Your Salt", 
						"It Must Be Destroyed", "Return to Delgren" } }, guide={ ns.paladin.divineStorm } },
	[56302640] = { item=210763, name="Bough of Altek", class={ "WARLOCK" },
					spell={ "Metamorphosis" }, guide={ ns.warlock.metamorphosis }, tip="Top of the Tower of Athalaxx",
					quest={ { 1740, 78680, 78681, 78684, 78702 } }, questName={ { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[56303890] = { object=414532, name="Cliffspring Chest", class={ "ROGUE" }, faction="Alliance",
					tip= "On a ledge with a few mobs and the chest at the back of the cave. The Cliffspring mobs "
						.."will drop the necessary Cliffspring Key",
					spell={ "Blade Dance" }, guide={ ns.rogue.bladeDance } },
	[57202600] = { npc=3662, name="Delmanis the Hated", class={ "WARLOCK" },
					spell={ "Shadow Bolt Volley" }, guide={ ns.warlock.shadowbolts }, quest={ { 4763 } },
					questName={ { "The Blackwood Corrupted" } }, faction="Alliance" },
	[57602600] = { npc=2336, name="Dark Strand Fiend", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[57001920] = { name="Stormscale mobs (Various)", class={ "PRIEST" },
					spell={ "Twisted Faith" }, guide={ ns.priest.twisted ..ns.priest.twistedDark } },
	[59202260] = { object=414663, name="Shatterspear Idol", class={ "PRIEST" },
					spell={ "Twisted Faith" }, guide={ ns.priest.twisted ..ns.priest.twistedDark } },
	[59612213] = { object=409496, name="Scrolls", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 78124, }, questName={ "Nar'thalas Almanac", }, tip="Go down the stairs at the Ruins of Mathystra" },
}
points[ 1457 ] = { -- Darnassus
	[28523942] = { npc=233335, name="Rune Broker", skillBook=true, guide=ns.runeBroker, faction="Alliance", },
	[39800940] = { npc=209948, name="Relaeron", class={ "HUNTER" }, spell={ "Carve" },
					guide={ ns.hunter.carve } },
	[60005640] = { npc=214101, name="Marcy Baker", faction="Alliance",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[64002200] = { npc=209608, name="Delwynna", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateJunni }, }
}

points[ 1443 ] = { -- Desolace
	[29006300] = { name="Maraudon", class={ "SHAMAN" }, spell={ "Fire Nova" }, guide={ ns.shaman.fireNova } },
	[32802140] = { name="Slitherblade Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[37602420] = { name="Slitherblade Mobs (Various)", class={ "PRIEST" }, spell={ "Renewed Hope" },
					guide={ ns.priest.renewedHope } },
	[45804860] = { name="Wind Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[46602760] = { name="Wind Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[47505760] = { name="Extinguished Campfire", class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "Eclipse", "Trap Launcher", "Brain Freeze", "The Art of War",
					"Mind Spike", "Poisoned Knife", "Ancestral Awakening", "Shadow and Flame", "Enraged Regeneration" },
					guide={ ns.pillaged }, quest={ { 79229, 79235, 79236, 79242 } }, 
					questName={ { "Highway Robbery", "On the Lam", "Cherry for Your Thoughts", "No Honor Among Thieves" } } },
	[51005900] = { npc=217590, name="Flesh Picker", class={ "DRUID", "HUNTER" },
					spell={ "Survival Instincts", "Wyvern Strike" }, guide={ ns.amaryllis } },
	[51208260] = { npc=215974, name="Des'Altek", class={ "WARLOCK" },
					tip="Walk through the story. Kill. Loot",
					spell={ "Grimoire of Synergy" }, guide={ ns.warlock.synergy },
					quest={ { 78994, 78914, 79298 } }, questName={ { "A Solid Foundation", "Soul Vessel", "Tempting Fate" } } },
	[52608480] = { item=215441, name="Broken Hammer", class={ "PALADIN" },
					spell={ "Sheath of Light" }, guide={ ns.paladin.sheathLight },
					quest={ { 79939, 79940, 79945, 79970 } },
					questName={ { "The Broken Hammer", "A Lost Brother", "Orders from the Grand Crusader", "Aeonas the Vindicated" } } },
	[55102620] = { object=423898, name="Mysterious Book", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="On a bench alongside a cauldron inside the building",
					quest={ 79950, }, questName={ "Demons and You" }, },
	[58202140] = { npc=217392, name="Flameseer Dubelen", class={ "SHAMAN" }, spell={ "Fire Nova" }, guide={ ns.shaman.fireNova } },
	[59736704] = { npc=4632, name="Pond for rehydration", class={ "DRUID" }, spell={ "Dreamstate" }, guide={ ns.druid.dreamstate } },
	[6200510] = { name="Wind Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[62203880] = { npc=11438, name="Bibbly F'utzbuckle", class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "Eclipse", "Trap Launcher", "Brain Freeze", "The Art of War",
					"Mind Spike", "Poisoned Knife", "Ancestral Awakening", "Shadow and Flame", "Enraged Regeneration" },
					guide={ ns.pillaged }, quest={ { 79229, 79235, 79236, 79242 } }, 
					questName={ { "Highway Robbery", "On the Lam", "Cherry for Your Thoughts", "No Honor Among Thieves" } } },
	[65802440] = { npc=218931, name="Dark Rider", name="Dark Rider", tip="Search this area",
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "King of the Jungle", "Melee Specialist", "Missile Barrage",
					"Infusion of Light", "Spirit of the Redeemer", "Waylay", "Two-Handed Mastery", "Demonic Knowledge",
					"Precise Timing" }, guide={ ns.dalaranAgent }, quest={ ns.dalaranQuest }, questName={ ns.dalaranQuestName } },
	[66002900] = { npc=4632, name="Pond for rehydration", class={ "DRUID" }, spell={ "Dreamstate" }, guide={ ns.druid.dreamstate } },
	[66500750] = { object=423695, name="Libram of Deliverance", class={ "PALADIN" }, spell={ "Sacred Shield" },
					guide={ ns.paladin.sacredShield } },
	[69007300] = { name="Wind Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[69604860] = { npc=4632, name="Kolkar Centaur", class={ "DRUID" }, spell={ "Dreamstate" }, guide={ ns.druid.dreamstate } },
	[70004120] = { npc=4632, name="Kolkar Centaur", class={ "DRUID" }, spell={ "Dreamstate" }, guide={ ns.druid.dreamstate } },
	[70007000] = { npc=4632, name="Pond for rehydration", class={ "DRUID" }, spell={ "Dreamstate" }, guide={ ns.druid.dreamstate } },
	[74471897] = { object=404401, name="Sandy Loam", class={ "DRUID" }, spell={ "Dreamstate" }, tip={ "There are several mounds" },
					guide={ ns.druid.dreamstate } },
	[74801330] = { npc=217620, name="Reckless Warlock", class={ "WARLOCK" }, spell={ "Dance of the Wicked" }, guide={ ns.warlock.dance }, },
	[81007900] = { object=419741, name="Sacrifical Altar", class={ "WARLOCK" }, spell={ "Shadowflame" }, guide={ ns.warlock.shadowflame }, },
}
points[ 1411 ] = { -- Durotar
	[35205240] = { npc=5823, name="Death Flayer", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[36004740] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[36605560] = { npc=5823, name="Death Flayer", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[38804620] = { npc=5823, name="Death Flayer", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[39002660] = { npc=3131, name="Lightning Hide", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[39005360] = { npc=3113, name="Razormane Dustrunner", class={ "PRIEST" }, faction="Horde",
					spell={ "Homunculi" }, guide={ ns.priest.citadel } },
	[39435007] = { name="Lightning Infused Totem", class={ "SHAMAN" }, faction="Horde",
					spell={ "Shield Mastery" }, guide={ ns.shaman.galvanicIcon } },
	[39605260] = { npc=3114, name="Razormane Battleguard", class={ "HUNTER", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Carve", "Quick Draw", "Devastate" },
					guide={ ns.hunter.carve, ns.rogue.quickDraw ..ns.rogue.quickDrawDur, 
						ns.warrior.devastate ..ns.warrior.devastateVah },
					tip={ "Adder Pheromone", "Bottom-Right Map Piece (Drop or Pickpocketing)", "Severed Quillboar Head" } },
	[40605200] = { npc=208179, name="Rustling Bush", class={ "HUNTER" }, faction="Horde",
					spell={ "Master Marksman" }, guide={ ns.hunter.masterMark } },
	[40606760] = { npc=3281, name="Sarkoth", class={ "HUNTER", "WARRIOR" }, faction="Horde",
					spell={ "Explosive Shot", "Furious Thunder" },
					tip="Sarkoth is strongly suggested for your rune. No travelling - in the Valley of Trials!",
					guide={ ns.hunter.explosiveShot, ns.warrior.furiousThunder } },
	[40656851] = { npc=3156, name="Nartok", class={ "WARLOCK" }, faction="Horde",
					spell={ "Haunt" }, guide={ ns.starterZoneClass }, quest={ 77586 },
					questName={ "Stolen Power" } },
	[40716506] = { object=404911, name="Hidden Cache", class={ "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Shadowstrike", "Victory Rush" }, guide={ ns.starterZoneClass },
					quest={ 77583, ( ( ns.class == "TROLL" ) and 77588 or 77582 ) }, questName={ "Atop the Cliffs", "A Trial of Fitness" },
					tip= "Cut through this pass but beware of Sarkoth.\n\nLook at your Minimap. Run towards the pin for Rwag, below.\n\n"
							.."Then run towards the pin for the Cache! You'll figure out how to jump down!" },
	[40806400] = { npc=3124, name="Scorpid Worker", class={ "HUNTER", "SHAMAN" }, faction="Horde",
					spell={ "Chimera Shot", "Overload" }, 
					guide={ ns.starterZoneClass, ns.shaman.dyadicIcon },
					quest={ ( ( ns.class == "TROLL" ) and 77590 or 77584 ), ( ( ns.class == "ORC" ) and 77585 or 77587 ) },
					questName={ ( ( ns.class == "TROLL" ) and "Rugged Terrain" or "Hunt for the Rune" ), "Icons of Power" } },
	[41204960] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },

	[41276800] = { npc=3155, name="Rwag", class={ "ROGUE" }, faction="Horde",
					quest={ 77583 }, questName={ "Atop the Cliffs" },
					spell={ "Shadowstrike" }, guide={ ns.starterZoneClass } },
	[42002660] = { name="Burning Blade mobs (Various)", class={ "MAGE", "ROGUE" }, faction="Horde",
					spell={ "Living Flame", "Mutilate" },
					tip="Ignore the map. To get to here, exit from Razor Hill and take the eastern path that goes up and north"
						..( ( ns.class == "ROGUE" ) and "\n\nPick Pocket. Don't need to kill" or "" ),					
					guide={ ns.mage.livingFlame, ns.rogue.mutilate } },
	[42366882] = { npc=3707, name="Ken'jai", class={ "PRIEST" }, faction="Horde",
					spell={ "Penance" }, guide={ ns.starterZoneClass ..ns.priest.penanceDur },
					quest={ 77642 }, questName={ "Wisdom of the Loa" } },
	[42396900] = { npc=3157, name="Shikrik", class={ "SHAMAN" }, faction="Horde",
					spell={ "Overload" }, quest={ ( ( ns.class == "ORC" ) and 77585 or 77587 ) }, guide={ ns.shaman.dyadicIcon },
					questName={ "Icons of Power" } },
	[42516904] = { npc=5884, name="Mai'ah", class={ "MAGE" }, faction="Horde",
					spell={ "Ice Lance" }, questName={ "Spell Research" }, quest={ 77643 }, guide={ ns.starterZoneClass } },
	[42802380] = { npc=3131, name="Lightning Hide", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[42846933] = { npc=3154, name="Jen'shan", class={ "HUNTER" }, faction="Horde",
					quest={ ( ( ns.class == "TROLL" ) and 77590 or 77584 ) },
					questName={ ( ( ns.class == "TROLL" ) and "Rugged Terrain" or "Hunt for the Rune" ) },
					spell={ "Chimera Shot" }, guide={ ns.starterZoneClass } },					
	[42896944] = { npc=3153, name="Frang", class={ "WARRIOR" }, faction="Horde",
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass },
					quest={ ( ( ns.class == "TROLL" ) and 77588 or 77582 ) }, questName={ "A Trial of Fitness" } },					
	[43015446] = { object=404695, name="Waterlogged Stashbox", class={ "MAGE", "WARLOCK" }, faction="Horde",
					spell={ "Ice Lance", "Haunt" },
					guide={ ns.starterZoneClass }, quest={ { 77643 }, { 77586 } },
					questName={ { "Spell Research" }, { "Stolen Power" } },
					tip="Deep in the pond at the foot of the waterfall. There are several ponds/waterfalls. Trust in "
						.."the accuracy of this pin" },
	[43206960] = { object=404911, name="Hidden Cache", class={ "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Shadowstrike", "Victory Rush" },
					quest={ 77583, ( ( ns.class == "TROLL" ) and 77588 or 77582 ) }, questName={ "Atop the Cliffs", "A Trial of Fitness" },
					guide={ ns.starterZoneClass  },
					tip= "High up on a ledge. To appreciate the location, run north from here back to about where Kaltunk "
						.."is standing. Now, you'll noticed a ledge that's slightly higher and to the right of the Cache. "
						.."You'll jump down onto that ledge.\n\nFrom Kaltunk, look north north-east. Run in "
						.."that direction and then turn left and keep bearing left. Effectively a U-turn." },
	[43616620] = { object=404911, name="Hidden Cache", class={ "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Shadowstrike", "Victory Rush" },
					quest={ 77583, ( ( ns.class == "TROLL" ) and 77588 or 77582 ) }, questName={ "Atop the Cliffs", "A Trial of Fitness" },
					guide={ ns.starterZoneClass  }, tip= "As stated previously, keep bearing left" },
	[43805960] = { npc=3124, name="Scorpid Worker", class={ "HUNTER", "SHAMAN" }, faction="Horde",
					spell={ "Chimera Shot", "Overload" }, 
					guide={ ns.starterZoneClass, ns.shaman.dyadicIcon },
					quest={ ( ( ns.class == "TROLL" ) and 77590 or 77584 ), ( ( ns.class == "ORC" ) and 77585 or 77587 ) },
					questName={ ( ( ns.class == "TROLL" ) and "Rugged Terrain" or "Hunt for the Rune" ), "Icons of Power" } },
	[44003740] = { npc=3114, name="Razormane Battleguard", class={ "HUNTER", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Carve", "Quick Draw", "Devastate" },
					guide={ ns.hunter.carve, ns.rogue.quickDraw ..ns.rogue.quickDrawDur, 
						ns.warrior.devastate ..ns.warrior.devastateVah }, 
					tip={ "Adder Pheromone", "Bottom-Right Map Piece (Drop or Pickpocketing)", "Severed Quillboar Head" } },
	[44203920] = { npc=3113, name="Razormane Dustrunner", class={ "PRIEST" }, faction="Horde",
					spell={ "Homunculi" }, guide={ ns.priest.citadel } },
	[45603000] = { name="Dustwind harpies (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah },
					tip="Severed Harpy Head" },
	[46190370] = { npc=214070, name="Jornah", faction="Horde",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[47006280] = { npc=3124, name="Scorpid Worker", class={ "HUNTER", "SHAMAN" }, faction="Horde",
					spell={ "Chimera Shot", "Overload" }, 
					guide={ ns.starterZoneClass, ns.shaman.dyadicIcon },
					quest={ ( ( ns.class == "TROLL" ) and 77590 or 77584 ), ( ( ns.class == "ORC" ) and 77585 or 77587 ) },
					questName={ ( ( ns.class == "TROLL" ) and "Rugged Terrain" or "Hunt for the Rune" ), "Icons of Power" } },
	[47404960] = { name="Razormane mobs (Various)", class={ "HUNTER" }, spell={ "Carve" },
					guide={ ns.hunter.carve } },
	[47608060] = { name="Kolkar centaurs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah },
					tip="Severed Centaur Head" },
	[47804740] = { name="Razormane Quillboar/Scout", class={ "HUNTER", "ROGUE", "WARRIOR" }, faction="Horde",
					spell={ "Carve", "Quick Draw", "Devastate" },
					guide={ ns.hunter.carve, ns.rogue.quickDraw ..ns.rogue.quickDrawDur, 
						ns.warrior.devastate ..ns.warrior.devastateVah }, 
					tip={ "Adder Pheromone", "Bottom-Right Map Piece (Drop or Pickpocketing)", "Severed Quillboar Head" } },
	[48007960] = { npc=204827, name="Adventurer's Remains", class={ "DRUID", "PALADIN", "PRIEST", "SHAMAN" }, faction="Horde",
					spell={ "Lifebloom", "Inspiration Exemplar", "Prayer of Mending", "Ancestral Guidance" }, guide={ ns.woundedAdventurer } },
	[48603300] = { name="Dustwind harpies (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah },
					tip="Severed Harpy Head" },
	[49407980] = { npc=5808, name="Warlord Kolkanis", class={ "MAGE", "PRIEST" }, faction="Horde",
					spell={ "Fingers of Frost", "Shared Pain" }, guide={ ns.mage.fingers, ns.priest.sharedPain } },
	[49602120] = { name="Dustwind harpies (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah },
					tip="Severed Harpy Head" },
	[50002740] = { name="Dustwind harpies (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah },
					tip="Severed Harpy Head" },
	[50005160] = { name="Lightning Infused Totem", class={ "SHAMAN" }, faction="Horde",
					spell={ "Shield Mastery" }, guide={ ns.shaman.galvanicIcon } },
	[51408460] = { name="Makrura (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Makrura Leg" },
	[51601900] = { npc=3118, name="Dustwind Storm Witch", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Ominous Tome" },
	[51806580] = { name="Burning Blade (Various)", class={ "MAGE", "ROGUE" }, faction="Horde",
					spell={ "Living Flame", "Quick Draw" }, tip={ nil, "Pick Pocket or Kill. Top-Left Map Piece" },
					guide={ ns.mage.livingFlame, ns.rogue.quickDraw ..ns.rogue.quickDrawDur } },
	[51910959] = { npc=3204, name="Gazz'uz", class={ "MAGE", "PRIEST", "WARLOCK", "WARRIOR" }, faction="Horde",
					spell={ "Fingers of Frost", "Shared Pain", "Soul Siphon", "Furious Thunder" },
					guide={ ns.mage.fingers, ns.priest.sharedPain, ns.warlock.soulSiphon, ns.warrior.furiousThunder },
					tip="He's level 14 and has a Voidwalker. Several classes need him!" },
	[52005840] = { npc=208036, name="Ba'so", class={ "ROGUE" }, faction="Horde", spell={ "Mutilate" },
					tip="West of Tiragarde Keep, at the hills", guide={ ns.rogue.mutilate } },
	[52164401] = { npc=208184, name="Razzil", class={ "HUNTER" }, spell={ "Carve" },
					guide={ ns.hunter.carve } },					
	[52202680] = { name="Burning Blade mobs (Various)", class={ "MAGE", "ROGUE", "ROGUE" }, faction="Horde",
					spell={ "Living Flame", "Mutilate", "Quick Draw" },
					tip={ "Ignore the map. To get to here, exit from Razor Hill and take the eastern path that goes up and north",
						"Pick Pocket. Don't need to kill", nil },					
					guide={ ns.mage.livingFlame, ns.rogue.mutilate, ns.rogue.quickDraw ..ns.rogue.quickDrawDur } },
	[52408260] = { name="Kolkar centaurs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah },
					tip="Severed Centaur Head" },
	[52600880] = { npc=5822, name="Felweaver Scornn", class={ "PRIEST", "WARRIOR" }, faction="Horde",
					tip="Rare spawn. Huge clear needed to get to the location and then... likely not there. Whatever, "
						.."your call. Take the right side path and always go upwards",
					spell={ "Shared Pain", "Furious Thunder" }, guide={ ns.priest.sharedPain, ns.warrior.furiousThunder } },
	[52607640] = { name="Kolkar centaurs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah },
					tip="Severed Centaur Head" },
	[52852903] = { name="Dustwind Cave mobs (various)", class={ "ROGUE" }, faction="Horde",
					spell={ "Mutilate" }, guide={ ns.rogue.mutilate } },
	[52880756] = { npc=3198, name="Burning Blade Apprentice", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, tip="Ominous Tome", guide={ ns.warlock.grace ..ns.warlock.graceDur } },
	[52900750] = { name="Burning Blade (Various)", class={ "MAGE", "ROGUE", "ROGUE" }, faction="Horde",
					spell={ "Living Flame", "Mutilate", "Quick Draw" },
					tip={ nil, "Must Pick Pocket the \"Note from Ba'so\"", "Pick Pocket or Kill. Top-Left Map Piece" },
					guide={ ns.mage.livingFlame, ns.rogue.mutilate, ns.rogue.quickDraw ..ns.rogue.quickDrawDur } },
	[53144352] = { npc=207957, name="Vahi Bonesplitter", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah } },
	[53202460] = { npc=3118, name="Dustwind Storm Witch", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Ominous Tome" },
	[54002700] = { name="Dustwind harpies (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah },
					tip="Severed Harpy Head" },
	[53742714] = { object=387466, name="Rusty Lockbox", class={ "ROGUE" }, faction="Horde",
					spell={ "Slaughter from the Shadows" }, guide={ ns.rogue.slaughter },
					tip= "Approach from Razor Hill: Go north but veer right and up. "
							.."When you get to a clearing/plateau you'll see a cave in "
							.."the distance. Veer to the right of the cave. You'll come "
							.."to smoother textured rocks. Jump across for your lewt! "
							.."Trust the pin location - it's very precise!\n\n"
							.."Directly below is a passage back to the central road "
							.."between Razor Hill and Orgrimmar. But when you do jump "
							.."down off the Lockbox ledge, you'll need to run away "
							.."from level 10 harpies" },
	[54002360] = { name="Dustwind harpies (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVah },
					tip="Severed Harpy Head" },					
	[55040968] = { name="Skull Rock Cave Entrance", class={ "MAGE", "PRIEST", "ROGUE", "ROGUE", "WARLOCK", "WARRIOR" },
					faction="Horde",
					spell={ "Living Flame", "Shared Pain", "Mutilate", "Quick Draw", "Demonic Grace", "Furious Thunder" },
					tip={ nil, "Must Pick Pocket the Note from Ba'so", "Pick Pocket or Kill. Top-Left Map Piece",
						"Ominous Tome" },
					guide={ ns.mage.livingFlame, ns.priest.sharedPain, ns.rogue.mutilate,
					ns.rogue.quickDraw ..ns.rogue.quickDrawDur, ns.warlock.grace ..ns.warlock.graceDur, 
					ns.warrior.furiousThunder } },						
	[55407277] = { object=208309, name="Loa Altar", class={ "PRIEST" }, faction="Horde",
					tip="/kneel and wait a bit", guide={ ns.starterZoneClass ..ns.priest.penanceDur}, 
					spell={ "Penance" }, quest={ 77642 }, questName={ "Wisdom of the Loa" } },
	[54674170] = { npc=208226, name="Darmak Bloodhowl", class={ "WARLOCK" }, faction="Horde",
					spell={ "Soul Siphon" }, guide={ ns.warlock.soulSiphon }, tip="Behind the Barracks" },
	[55803840] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[56602660] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[56802160] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[57004668] = { name="Lightning Infused Totem", class={ "SHAMAN" }, faction="Horde",
					spell={ "Shield Mastery" }, guide={ ns.shaman.galvanicIcon } },
	[57405660] = { name="Kul Tiras Mobs (Various)", class={ "PRIEST", "ROGUE", "WARLOCK" }, faction="Horde",
					spell={ "Void Plague", "Quick Draw", "Demonic Grace" },
					guide={ ns.priest.voidPlague, ns.rogue.quickDraw ..ns.rogue.quickDrawDur, 
						ns.warlock.grace ..ns.warlock.graceDur },
					tip={ nil, "Pick Pocket or kill. Top-Right Map Piece", "Kul Tiran Skull" } },
	[58704553] = { npc=208275, name="Frozen Makrura", class={ "MAGE", "SHAMAN", "WARLOCK" }, faction="Horde",
					tip="Needs about five separate Fire debuffs to defrost",
					spell={ "Burnout", "Molten Blast", "Chaos Bolt" }, guide={ ns.frozen, ns.shaman.sulfurousIcon, ns.frozen } },
	[58808460] = { name="Makrura (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Makrura Leg" },
	[59005800] = { name="Lightning Infused Totem", class={ "SHAMAN" }, faction="Horde",
					spell={ "Shield Mastery" }, guide={ ns.shaman.galvanicIcon } },
	[61006940] = { npc=13157, name="Makasgar", class={ "PRIEST" }, faction="Horde",
					spell={ "Shared Pain" }, guide={ ns.priest.sharedPain } },
	[61604500] = { name="Makrura (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Makrura Leg" },
	[61607060] = { name="Makrura (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Makrura Leg" },
	[61609580] = { name="Makrura (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Makrura Leg" },
	[62109480] = { name="Rune of Quick Draw", faction="Horde", class={ "ROGUE" }, tip="Final location",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDur } },
	[62206520] = { npc=13157, name="Makasgar", class={ "PRIEST" }, faction="Horde",
					spell={ "Shared Pain" }, guide={ ns.priest.sharedPain } },
	[62606260] = { name="Makrura (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Makrura Leg" },
	[65605360] = { name="Makrura (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Makrura Leg" },
	[64808050] = { name="Hexed/Voodoo Trolls", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Ominous Tome" },
	[65308600] = { name="Hexed/Voodoo Trolls", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Ominous Tome" },
	[67007380] = { name="Makrura (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Makrura Leg" },
	[67608360] = { name="Trolls (Various)", faction="Horde", class={ "ROGUE" }, tip="Pick Pocket or kill. Bottom-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawDur } },
	[67608780] = { npc=3205, name="Zalazane", class={ "MAGE", "PRIEST" }, faction="Horde",
					spell={ "Fingers of Frost", "Shared Pain" }, guide={ ns.mage.fingers, ns.priest.sharedPain } },
	[67458782] = { npc=204070, name="Soboz", class={ "WARLOCK" }, faction="Horde",
					tip="The circle is on a rise that's to the south side of Zalazane's camp",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur } },
	[68608280] = { name="Hexed/Voodoo Trolls", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Ominous Tome" },
	[68009080] = { name="Makrura (Various)", class={ "WARLOCK" }, faction="Horde",
					spell={ "Demonic Grace" }, guide={ ns.warlock.grace ..ns.warlock.graceDur }, tip="Makrura Leg" },
	[68707140] = { npc=208124, name="Raluk", class={ "HUNTER" }, spell={ "Flanking Strike" },
					guide={ ns.hunter.flankingStrike }, tip="Farm Durotar Pig Meat from nearby Dire Mottled Boars" },
}
points[ 1445 ] = { -- Dustwallow Marsh
	[39403780] = { name="Withervine Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[39802180] = { name="Withervine Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[42804320] = { npc=216310, name="Rotting Ancient", class={ "DRUID" }, spell={ "Nourish" }, guide={ ns.druid.nourish },
					quest={ { 79348, 79377 } }, questName={ { "The Lost Ancient", "The Lost Saplings" } } },
	[44605640] = { name="Withervine Elementals (Various)", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[57202080] = { object=423900, name="Waterlogged Book", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="Discarded on the ground on the eastern side of the murloc camp",
					quest={ 79952, }, questName={ "RwlRwlRwlRwl!" }, },
	[63704250] = { object=424264, name="Grave", class={ "PRIEST" }, tip="Theramore Echo",
					spell={ "Pain Suppression" }, guide={ ns.priest.painSuppression } },
	[66604520] = { npc=221575, name="Elrick", class={ "PALADIN" }, faction="Alliance", preRune={ { "Sheath of Light" } },
					quest={ { 81764, 81766 } }, questName={ { "The Mysterious Merchant", "The Bloody Missive" } }, 
					spell={ "Fanaticism" }, guide={ ns.paladin.fanaticism }, },
}
points[ 1448 ] = { -- Felwood
	[35305870] = { item=223336, name="Piercing Eye", class={ "PRIEST" }, spell={ "Eye of the Void" },
					quest={ { 82316 } }, questName={ { "Seven Eyes I Seek..." } }, guide={ ns.priest.eyeOfVoid } },
	[42604140] = { name="Infernal / Entropic Beast", class={ "PALADIN" }, preRune={ { "Fanaticism" } },
					quest={ { 81790 } }, questName={ { "Materials of Significance" } }, spell={ "Hammer of the Righteous" },
					guide={ ns.paladin.hammerRighteous } },
	[42601780] = { npc=228596, name="Jadefire mobs (various)", class={ "DRUID" }, spell={ "Tree of Life" },
					guide={ ns.druid.treeOfLife }, tip="L49-53" },
	[43005700] = { name="Rope / Aeonus", class={ "PALADIN" }, preRune={ { "Fanaticism" } },
					tip="Reports indicate that Aeonus' horse is interactive and located at the Emerald Santuary to the south",
					quest={ { 81790 } }, questName={ { "Materials of Significance" } }, spell={ "Hammer of the Righteous" },
					guide={ ns.paladin.hammerRighteous } },
	[44605200] = { npc=221636, name="Gregory", class={ "PALADIN" }, preRune={ { "Fanaticism" } },
					quest={ { 81790 } }, questName={ { "Materials of Significance" } }, spell={ "Hammer of the Righteous" },
					guide={ ns.paladin.hammerRighteous } },
	[45601860] = { npc=228596, name="Vengeful Wisp", class={ "DRUID" }, spell={ "Tree of Life" },
					guide={ ns.druid.treeOfLife }, tip="Between the two small lakes" },
	[50802420] = { npc=7139, name="Irontree Stomper", class={ "MAGE" }, spell={ "Frozen Orb" },
					quest={ { 84369 } }, questName={ { "Healing the Healer" } }, guide={ ns.mage.frozenOrb }, },
	[51508200] = { npc=222408, name="Shadowtooth Emissary", class=ns.allClass, spell=ns.wildGodsSpells,
					guide=ns.wildGods, quest={ { 82043, 82044 } },
					questName={ { "The Wild Gods (Part 1)", "The Wild Gods (Part 2)" } }, },
	[61501300] = { npc=228822, name="Calyx Greenglow", class={ "MAGE" }, spell={ "Frozen Orb" },
					quest={ { 84369 } }, questName={ { "Healing the Healer" } }, guide={ ns.mage.frozenOrb }, },
	[62400920] = { npc=7158, name="Deadwood Shaman", class={ "SHAMAN" }, spell={ "Storm, Earth and Fire" },
					tip=ns.timbermawRep, guide={ "Kill the Deadwood Shaman until a Voltaic Icon drops.\n\n"
						.."Next step, and ideally in your favourite low level zone, is to round up three mobs. Get them to low "
						.."health (not dead). Cast Chain Lightning. Voilà!" }, },
	[62800750] = { object=457092, name="The Fury of Stormrage", spell={ "Nature Specialization" }, ring=true, 
					class={ "DRUID", "HUNTER", "ROGUE", "SHAMAN", }, tip=ns.timbermawRep,
					guide="Far north-east of Felwood in Felpaw Village. At the foot of a large totem, on a basket", },
	[63000900] = { name="Deadwood mobs (various)", class={ "MAGE" }, spell={ "Frozen Orb" },
					quest={ { 84369 } }, questName={ { "Healing the Healer" } }, guide={ ns.mage.frozenOrb }, },
}
points[ 1444 ] = { -- Feralas
	[22207050] = { name="Treant Avatar / Blightbark", class={ "DRUID" }, spell={ "Efflorescence" },
					guide={ ns.druid.efflorescence }, quest={ 81924 }, questName={ "Wisdom of the Guardians" } },
	[23406420] = { name="Hatecrest Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[25404940] = { name="Hatecrest Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[25605580] = { name="Hatecrest Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[27006420] = { name="Hatecrest Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[28607060] = { name="Hatecrest Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[29605260] = { name="Hatecrest Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[32605600] = { name="Hatecrest Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[34004960] = { name="Hatecrest Mobs (Various)", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78265 }, questName={ "Fish Oil" } },
	[35603350] = { name="Four Pillars", class={ "SHAMAN" }, spell={ "Overcharged" }, guide={ ns.shaman.overcharged },
					quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[41603840] = { name="Sea Spray / Elemental", class={ "SHAMAN" }, spell={ "Overcharged" },
					guide={ ns.shaman.overcharged },
					quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[48601250] = { name="Quartermaster Valdane / Field Captain Arunnel", class=ns.allClass, spell=ns.emeraldSpell,
					guide={ ns.nightmareIncursions } },
	[50631568] = { object=441249, name="Book", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="You MUST be in the Nightmare / Emerald Dream version of Feralas",
					quest={ 81951, }, questName={ "The Liminal and the Arcane" }, },
	[57006000] = { item=221317, name="Feralas Leycryst", class={ "MAGE", "PALADIN", "PRIEST", "WARLOCK" },
					spell={ "Displacement", "Purifying Power", "Despair", "Backdraft" }, guide={ ns.leylineGuide },
					tip="At The High Wilderness" },
	[57206900] = { npc=221985, name="Tyrisius", class={ "DRUID" }, spell={ "Efflorescence" },
					guide={ ns.druid.efflorescence }, quest={ 81924 }, questName={ "Wisdom of the Guardians" } },
	[57206870] = { item=223337, name="Burning Eye", class={ "PRIEST" }, spell={ "Eye of the Void" },
					quest={ { 82316 } }, questName={ { "Seven Eyes I Seek..." } }, guide={ ns.priest.eyeOfVoid },
					tip="In a tower in the Ruins of Isildien" },
	[58705240] = { name="Shrine of the Warden", class={ "DRUID" }, spell={ "Efflorescence" },
					guide={ ns.druid.efflorescence }, quest={ 81924 }, questName={ "Wisdom of the Guardians" } },
	[53006000] = { npc=222376, name="Groddoc Infant", class={ "HUNTER" }, spell={ "Catlike Reflexes" },
					guide={ ns.hunter.catlike } },
	[59135852] = { npc=222406, name="Groddoc Matriarch", class={ "HUNTER" }, spell={ "Catlike Reflexes" },
					guide={ ns.hunter.catlike } },
	[60006680] = { npc=223061, name="Charged Totem", class={ "SHAMAN" }, spell={ "Static Shock" },
					guide={ "Both of you must stand close to the Charged Totem so that it may \"arc\" to you. activate it. Kill "
						.."the nearby mobs with Nature damage so that you build up Static Buildup buffs. Stay close to the "
						.."Totem!\n\nEventually a Whirling Tempest (L44) will spawn. Kill. Loot. Profit" } },
	[66405090] = { object=443728, name="Woodpaw Bag", class={ "WARLOCK" }, spell={ "Pandemic" },
					guide={ ns.warlock.pandemic } },
	[66603840] = { npc=222286, name="Namida Grimtotem", class={ "DRUID" }, spell={ "Gale Winds" },
					guide={ "Kill and loot. L43e. At the top of a trail, in a large hut" } },
	[69604330] = { object=443727, name="Grimtotem Chest", class={ "WARLOCK" }, spell={ "Pandemic" },
					guide={ ns.warlock.pandemic } },
	[71905900] = { npc=222698, name="Fel Scar", class={ "WARLOCK" },
					spell={ "Decimation" }, guide={ ns.warlock.decimation }, tip=ns.warlock.felRift, },
	[72605080] = { npc=223123, name="Diseased Forest Walker", class={ "WARLOCK" }, spell={ "Pandemic" },
					guide={ ns.warlock.pandemic } },
	[74802490] = { npc=222233, name="Ohk'zi", class={ "WARRIOR" }, spell={ "Rampage" },
					guide={ "From Camp Majache go north and through the Gordunni Ogre mobs (L40-43) and enter a cave. "
						.."Kill Ohk'zi. Loot. Voilà!" } },
	[76604800] = { object=442688, name="Old Crate", class={ "SHAMAN" }, spell={ "Tidal Waves" },
					guide={ ns.shaman.tidalWaves } },
	[76606300] = { name="Zukk'ash Mobs (Various)", class={ "MAGE" }, spell={ "Temporal Anomaly" },
					guide={ ns.mage.temporal }, quest={ 82082 }, questName={ "A Lesson in Literacy" } },
	[77606200] = { npc=222726, name="Tyrant of the Hive", class={ "WARRIOR" }, spell={ "Vigilance" },
					guide={ "He'll be inside the round chamber. Hits very hard" } },
	[79204950] = { object=442685, name="Old Chest", class={ "SHAMAN" }, spell={ "Tidal Waves" },
					guide={ ns.shaman.tidalWaves } },
	[81604240] = { npc=220930, name="Frix Xizzix", class={ "PALADIN" }, spell={ "Light's Grace" },
					guide={ ns.paladin.lightsGrace }, quest={ 79984 }, questName={ "Quadrangulation" } },
	[83004360] = { name="Teleporter", class={ "PALADIN" }, spell={ "Light's Grace" },
					tip="This teleporter is always available for this "
						.."rune. There's another portal in Booty Bay "
						.."but it requires the quest above to have been completed",
					guide={ ns.paladin.lightsGrace }, quest={ 79984 }, questName={ "Quadrangulation" } },
	[84204380] = { npc=218237, name="Wirdal Wondergear", class={ "PALADIN" }, spell={ "Light's Grace" },
					guide={ ns.paladin.lightsGrace }, quest={ 79984 }, questName={ "Quadrangulation" } },
}
points[ 1450 ] = { -- Moonglade
	[41304360] = { npc=216289, name="Orokai", class={ "DRUID" }, spell={ "Nourish" }, guide={ ns.druid.nourish },
					quest={ { 79348, 79377 } }, questName={ { "The Lost Ancient", "The Lost Saplings" } } },
	[52404060] = { npc=12042, name="Loganaar", class={ "DRUID" }, spell={ "Wild Growth" }, guide={ ns.druid.wildGrowth },
					quest={ 78229 }, questName={ "Trial of the Owls" } },
}
points[ 1412 ] = { -- Mulgore					
	[29472353] = { name="Windfury Cones", class={ "SHAMAN" }, faction="Horde",
					spell={ "Lava Lash" }, guide={ ns.shaman.lavaLash }, quest={ { 76156, 76160, 76240 } },
					questName={ { "Stalk With The Earthmother", "Stalk With The Earthmother", "Stalk With The Earthmother" } },
					tip="Use Taraezor's \"Ground Clutter\" AddOn to smoothly toggle GC on/off FTW!" },
	[29802080] = { npc=2965, name="Windfury Matriarch", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, tip="Severed Harpy Head" },
	[30402360] = { npc=5785, name="Sister Hatelash", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[30806160] = { npc=207515, name="Lurkmane", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[31001980] = { npc=5785, name="Sister Hatelash", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[31002280] = { name="Windfury Matriarch/Sorceress", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[31602400] = { npc=3056, name="Ghost Howl", class={ "HUNTER" },
					spell={ "Explosive Shot" }, guide={ ns.hunter.explosiveShot } },
	[31604950] = { object=404352, name="Artifact Storage", class={ "SHAMAN" }, faction="Horde",
					spell={ "Molten Blast" }, guide={ ns.shaman.sulfurousIcon } },
	[31802660] = { npc=2965, name="Windfury Matriarch", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, tip="Severed Harpy Head" },
	[32601980] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[32602760] = { name="Windfury Matriarch/Sorceress", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[33002800] = { npc=3056, name="Ghost Howl", class={ "HUNTER" },
					spell={ "Explosive Shot" }, guide={ ns.hunter.explosiveShot } },
	[33406180] = { name="Palemane mobs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, 
					tip="Severed Gnoll Head" },
	[33606180] = { name="Palemane mobs (Various)", class={ "HUNTER" }, spell={ "Carve" },
					guide={ ns.hunter.carve } },
	[33803980] = { name="Bael'dun Digger/Appraiser", class={ "SHAMAN" }, faction="Horde",
					spell={ "Molten Blast" }, guide={ ns.shaman.sulfurousIcon }, tip="Drops the storage key" },
	[34204300] = { name="Windfury mobs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, tip="Severed Harpy Head" },
	[34411941] = { npc=233428, name="Rune Broker", skillBook=true, guide=ns.runeBroker, faction="Horde",
					tip="At the very back of The Pools of Vision on The Spirit Rise mesa", },
	[34804640] = { name="Bael'dun Digger/Appraiser", class={ "SHAMAN" }, faction="Horde",
					spell={ "Molten Blast" }, guide={ ns.shaman.sulfurousIcon }, tip="Drops the storage key" },
	[35126955] = { npc=207577, name="Lunar Stone", class={ "DRUID" }, faction="Horde",
					spell={ "Sunfire" }, guide={ ns.druid.runeOfTheSun } },
	[35517057] = { npc=207577, name="Lunar Stone", class={ "DRUID" }, faction="Horde",
					spell={ "Sunfire" }, guide={ ns.druid.runeOfTheSun } },
	[35606360] = { name="Palemane mobs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, 
					tip="Severed Gnoll Head" },
	[35606808] = { npc=207577, name="Lunar Stone", class={ "DRUID" }, faction="Horde",
					spell={ "Sunfire" }, guide={ ns.druid.runeOfTheSun } },
	[35652049] = { npc=207743, name="Netali Proudwind", class={ "WARRIOR" }, faction="Horde",
					spell={ "Frenzied Assault" }, guide={ ns.warrior.frenziedAssault },
					tip="Speak to Netali first, and then speak to Mooart, nearby" },
	[35704160] = { name="Mazzranache / Ghost Howl", class={ "HUNTER" },
					spell={ "Explosive Shot" }, guide={ ns.hunter.explosiveShot } },
	[36005700] = { npc=205382, name="Mokwa", class={ "HUNTER" }, spell={ "Flanking Strike" },
					guide={ ns.hunter.flankingStrike }, tip="Farm Mulgore Bird Meat from nearby Swoops" },
	[36600960] = { npc=2965, name="Windfury Matriarch", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, tip="Severed Harpy Head" },
	[36800940] = { name="Windfury Matriarch/Sorceress", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[37201260] = { npc=5785, name="Sister Hatelash", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[37401860] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[37505250] = { name="Lightning Infused Totem", class={ "SHAMAN" }, faction="Horde",
					spell={ "Shield Mastery" }, guide={ ns.shaman.galvanicIcon } },
	[37604950] = { npc=206248, name="Wooden Effigy", class={ "DRUID" }, faction="Horde",
					spell={ "Living Seed" }, tip="Approximately a 5 min timer", guide={ ns.druid.naturalPotential } },
	[37812768] = { npc=214096, name="Dokimi", faction="Horde",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[37823022] = { npc=205729, name="Boarton Shadetotem", class={ "SHAMAN" }, faction="Horde",
					spell={ "Lava Lash" }, guide={ ns.shaman.lavaLash }, quest={ { 76156, 76160, 76240 } },
					questName={ { "Stalk With The Earthmother", "Stalk With The Earthmother", "Stalk With The Earthmother" } },
					tip="\"Hmm... perhaps disguises are not your strength\"" }, -- Location based upon online screencap
	[38001440] = { npc=3056, name="Ghost Howl", class={ "HUNTER" },
					spell={ "Explosive Shot" }, guide={ ns.hunter.explosiveShot } },
	[39401260] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[39600520] = { npc=2965, name="Windfury Matriarch", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, tip="Severed Harpy Head" },
	[39885161] = { item=206469, name="Prairie Flower", class={ "DRUID" }, faction="Horde",
					spell={ "Living Seed" }, tip="Various locations", guide={ ns.druid.naturalPotential } },
	[40004400] = { name="Mazzranache / Ghost Howl", class={ "HUNTER" },
					spell={ "Explosive Shot" }, guide={ ns.hunter.explosiveShot } },
	[40405380] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[41212627] = { npc=3028, name="Kah Mistrunner", class={ "SHAMAN" }, faction="Horde",
					spell={ "Lava Lash" }, guide={ ns.shaman.lavaLash }, quest={ { 76156, 76160, 76240 } },
					questName={ { "Stalk With The Earthmother", "Stalk With The Earthmother", "Stalk With The Earthmother" } },
					tip="If you need to learn fishing. You do of course use my Cod Do Batter fishing AddOn?" },
	[41366326] = { item=206469, name="Prairie Flower", class={ "DRUID" }, faction="Horde",
					spell={ "Living Seed" }, tip="Various locations", guide={ ns.druid.naturalPotential } },
	[42201480] = { npc=2979, name="Venture Co Supervisor", class={ "DRUID" }, faction="Horde",
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[42802000] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[44267569] = { npc=3061, name="Lanka Farshot", class={ "HUNTER" }, faction="Horde",
					spell={ "Chimera Shot" }, guide={ ns.starterZoneClass },
					quest={ 77949 }, questName={ "A Hunter's Strength" } },
	[44964688] = { item=206469, name="Prairie Flower", class={ "DRUID" }, faction="Horde",
					spell={ "Living Seed" }, tip="Various locations", guide={ ns.druid.naturalPotential } },
	[45027594] = { npc=3062, name="Meela Dawnstrider", class={ "SHAMAN" }, faction="Horde",
					faction="Horde",
					spell={ "Overload" }, quest={ 77652 }, questName={ "Icons of Power" }, guide={ ns.shaman.dyadicIcon } },
	[45103210] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[45403700] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[45604190] = { name="Mazzranache / Ghost Howl", class={ "HUNTER" },
					spell={ "Explosive Shot" }, guide={ ns.hunter.explosiveShot } },
	[45806820] = { npc=5786, name="Snagglespear", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[46196044] = { npc=205635, name="Takoda Sunmane", class={ "HUNTER" }, spell={ "Carve" },
					guide={ ns.hunter.carve } },
	[46406180] = { npc=207637, name="Vateya Timberhoof", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, },
	[47501780] = { name="Flatland Prowler / Taloned Swoop / Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[48100900] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[48207240] = { name="Palemane mobs (Various)", class={ "HUNTER" }, spell={ "Carve" },
					guide={ ns.hunter.carve } },
	[48607360] = { name="Palemane mobs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, 
					tip="Severed Gnoll Head" },
	[49601920] = { name="Arra'chea / The Rake", class={ "HUNTER", "WARRIOR" },
					spell={ "Explosive Shot", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.warrior.furiousThunder } },
	[50006880] = { npc=5786, name="Snagglespear", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[50944598] = { item=206469, name="Prairie Flower", class={ "DRUID" }, faction="Horde",
					spell={ "Living Seed" }, tip="Various locations", guide={ ns.druid.naturalPotential } },
	[51001620] = { npc=3056, name="Ghost Howl", class={ "HUNTER" },
					spell={ "Explosive Shot" }, guide={ ns.hunter.explosiveShot } },
	[51206000] = { npc=2965, name="Windfury Matriarch", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, tip="Severed Harpy Head" },
	[51603290] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[51603300] = { npc=3058, name="Arra'chea", class={ "HUNTER", "WARRIOR" },
					spell={ "Explosive Shot", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.warrior.furiousThunder } },
	[51746717] = { item=206469, name="Prairie Flower", class={ "DRUID" }, faction="Horde",
					spell={ "Living Seed" }, tip="Various locations", guide={ ns.druid.naturalPotential } },
	[51803920] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[52600540] = { name="Windfury Matriarch/Sorceress", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[53007400] = { npc=5786, name="Snagglespear", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[53004460] = { npc=3068, name="Mazzranache", class={ "HUNTER" },
					spell={ "Explosive Shot" }, guide={ ns.hunter.explosiveShot } },
	[53402160] = { name="Flatland Prowler / Taloned Swoop / Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[53480937] = { name="Windfury Cones", class={ "SHAMAN" }, faction="Horde",
					spell={ "Lava Lash" }, guide={ ns.shaman.lavaLash }, quest={ { 76156, 76160, 76240 } },
					questName={ { "Stalk With The Earthmother", "Stalk With The Earthmother", "Stalk With The Earthmother" } },
					tip="Use Taraezor's \"Ground Clutter\" AddOn to smoothly toggle GC on/off FTW!" },
	[54601540] = { npc=3058, name="Arra'chea / Sister Hatelash", class={ "HUNTER", "WARRIOR" },
					spell={ "Explosive Shot", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.warrior.furiousThunder } },
	[55001100] = { npc=2965, name="Windfury Matriarch", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, tip="Severed Harpy Head" },
	[55002200] = { npc=3058, name="Arra'chea / The Rake", class={ "HUNTER", "WARRIOR" },
					spell={ "Explosive Shot", "Furious Thunder" },
					guide={ ns.hunter.explosiveShot, ns.warrior.furiousThunder } },
	[55407100] = { name="Palemane mobs (Various)", class={ "HUNTER" }, spell={ "Carve" },
					guide={ ns.hunter.carve } },
	[55606980] = { npc=5786, name="Snagglespear", class={ "WARRIOR" }, faction="Horde",
					spell={ "Furious Thunder" }, guide={ ns.warrior.furiousThunder } },
	[55807300] = { name="Palemane mobs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, 
					tip="Severed Gnoll Head" },
	[56003300] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[56001550] = { name="Windfury Matriarch / Sorceress / Flatland Prowler / Taloned Swoop / Prairie Wolf Alpha",
					class={ "DRUID" }, spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[58885118] = { item=206469, name="Prairie Flower", class={ "DRUID" }, faction="Horde",
					spell={ "Living Seed" }, tip="Various locations", guide={ ns.druid.naturalPotential } },
	[59005460] = { npc=205692, name="Rustling Bush", class={ "HUNTER" }, faction="Horde",
					spell={ "Master Marksman" }, guide={ ns.hunter.masterMark } },
	[60087535] = { object=403102, name="Bristleback Loot Cache", class={ "DRUID", "WARRIOR" }, faction="Horde",
					spell={ "Fury of Stormrage", "Victory Rush" },
					guide={ ns.druid.lunarIdolH, ns.starterZoneClass }, tip="The path begins here" },
	[60206760] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy } },
	[60403360] = { npc=204827, name="Adventurer's Remains", class={ "DRUID", "PALADIN", "PRIEST", "SHAMAN" }, faction="Horde",
					spell={ "Lifebloom", "Inspiration Exemplar", "Prayer of Mending", "Ancestral Guidance" }, guide={ ns.woundedAdventurer } },
	[60608020] = { npc=2954, name="Bristleback Battleboar", class={ "HUNTER" }, faction="Horde",
					spell={ "Chimera Shot" }, guide={ ns.starterZoneClass },
					quest={ 77949 }, questName={ "A Hunter's Strength" } },
	[60802040] = { name="Bristleback Interloper / Windfury Matriarch", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat },
					tip="Severed Quillboar Head" },
	[60902500] = { npc=3232, name="Bristleback Interloper / Flatland Prowler/ Taloned Swoop / Prairie Wolf Alpha",
					class={ "DRUID" }, faction="Horde", spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[61004700] = { item=206157, name="Seaforium Mining Charges", class={ "SHAMAN" }, faction="Horde",
					spell={ "Lava Lash" }, guide={ ns.shaman.lavaLash }, quest={ { 76156, 76160, 76240 } },
					questName={ { "Stalk With The Earthmother", "Stalk With The Earthmother", "Stalk With The Earthmother" } },
					tip="\"It doesn't seem like much of a disguise...\"" },
	[61407060] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[61604780] = { npc=2979, name="Venture Co Supervisor", class={ "DRUID" }, faction="Horde",
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[61607200] = { name="Windfury mobs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, tip="Severed Harpy Head" },
	[61617603] = { object=403102, name="Bristleback Loot Cache", class={ "DRUID", "WARRIOR" }, faction="Horde",
					spell={ "Fury of Stormrage", "Victory Rush" },
					guide={ ns.druid.lunarIdolH, ns.starterZoneClass }, tip="High up, no need for parkour!" },
	[61706540] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[62004220] = { npc=2979, name="Venture Co Supervisor", class={ "DRUID" }, faction="Horde",
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[63405960] = { name="Flatland Prowler/Taloned Swoop/Prairie Wolf Alpha", class={ "DRUID" },
					spell={ "Mangle" }, guide={ ns.druid.ursineRage } },
	[63607640] = { npc=2953, name="Bristleback Shaman", class={ "SHAMAN" }, faction="Horde",
					faction="Horde",
					spell={ "Overload" }, quest={ 77652 }, questName={ "Icons of Power" }, guide={ ns.shaman.dyadicIcon } },
	[67006600] = { name="Lightning Infused Totem", class={ "SHAMAN" }, faction="Horde",
					spell={ "Shield Mastery" }, guide={ ns.shaman.galvanicIcon } },
	[67806920] = { name="Windfury mobs (Various)", class={ "WARRIOR" }, faction="Horde",
					spell={ "Devastate" }, guide={ ns.warrior.devastate ..ns.warrior.devastateVat }, tip="Severed Harpy Head" },
}
points[ 1454 ] = { -- Orgrimmar
	[35808720] = { npc=211229, name="Dietrich Praice", class={ "PRIEST" }, faction="Horde", spell={ "Binding Heal" },
					quest={ { 84405, 84406, 84322, 84407 } }, guide={ ns.priest.bindingHeal },
					questName={ { "Lost Heirloom", "Relic of Light", "Scarlet Research", "The Prize Within", } }, },
	[38707840] = { object=405149, name="Mural of Ta'zo", class={ "MAGE" }, faction="Horde", mageBook=true,
					spell=ns.mage.bookRunes, guide=ns.mage.books, quest={ 79094, }, questName={ "The Lessons of Ta'zo", },
					tip="It's a large rock tablet with red writing, leaning against the wall. "
						.."Valley of Spirits. On the left side as you approach the Mage trainers" },
	[38923840] = { npc=4047, name="Zor Lonetree", tip="Skill Books vendor", skillBook=true, guide={ ns.skillBookVendor }, 
					faction="Horde", },
	[38003800] = { npc=4047, name="Zor Lonetree", class={ "SHAMAN" }, spell={ "Fire Nova" }, guide={ ns.shaman.fireNova }, },
	[49474598] = { npc=233428, name="Rune Broker", skillBook=true, guide=ns.runeBroker, faction="Horde", },
	[51646370] = { npc=214070, name="Jornah", faction="Horde",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[55864491] = { object=404830, name="Dusty Chest", class={ "ROGUE" }, faction="Horde",
					spell={ "Between the Eyes" }, guide={ ns.rogue.precision },
					tip="The Drag, across from The Valley of Honor archway" },
	[57395395] = { npc=3399, name="Zamja", class={ "WARRIOR" }, faction="Horde",
					spell={ "Frenzied Assault" }, guide={ ns.warrior.frenziedAssault },
					tip="Speak to Zamja first, and then speak to Gru'ark who is just outside" },
	[58085119] = { npc=208023, name="Gru'ark", class={ "WARRIOR" }, faction="Horde", spell={ "Frenzied Assault" },
					guide={ ns.warrior.frenziedAssault }, tip= "Upper level - same level as Zamja" },
}
points[ 1451 ] = { -- Silithus
	[20108510] = { object=457100, name="Renzik's Thoughts on \"Fair\" Fighting", spell={ "Dagger Specialization" }, ring=true, 
					class={ "DRUID", "HUNTER", "MAGE", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR" },
					guide="Inside a tent in a Twilight Outpost, the last such outpost before the Gates, in "
					.."South-western Silithus. There's a camp fire and a wheelbarrow outside the tent. ", },
	[20602940] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[21601660] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[25801160] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[32401780] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[33106580] = { npc=227493, name="Sandworm", class={ "HUNTER" }, spell={ "Improved Volley" },
					guide={ ns.hunter.volley }, },
	[35003160] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[35406880] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[36607160] = { npc=227493, name="Sandworm", class={ "HUNTER" }, spell={ "Improved Volley" },
					guide={ ns.hunter.volley }, },
	[37206050] = { npc=227493, name="Sandworm", class={ "HUNTER" }, spell={ "Improved Volley" },
					guide={ ns.hunter.volley }, },
	[38204540] = { object=457096, name="Be First: A Brawler's Guide to Boxing", spell={ "Fist Weapon Specialization" }, 
					class={ "DRUID", "HUNTER", "ROGUE", "SHAMAN", "WARRIOR", }, ring=true,
					guide="The book is sitting on a crate in the Twilight Base Camp", },
	[39207740] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[41208880] = { npc=227951, name="Edwi Copperbolt", class={ "HUNTER" }, spell={ "Improved Volley" },
					guide={ ns.hunter.volley }, },
	[41306720] = { npc=227493, name="Sandworm", class={ "HUNTER" }, spell={ "Improved Volley" },
					guide={ ns.hunter.volley }, },
	[44006520] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[47807880] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[48605260] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[55405320] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
	[59204460] = { npc=228611, name="Wandering Swordsman", class={ "WARRIOR" }, spell={ "Sudden Death" },
					quest={ { 84317 } }, questName={ { "Infinite Midnight" } }, guide={ ns.warrior.suddenDeath }, },
}
points[ 1442 ] = { -- Stonetalon Mountains
	[27406520] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[28207120] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[28407240] = { npc=212837, name="Primordial Anomaly", class={ "SHAMAN" }, faction="Horde",
					spell={ "Greater Ghost Wolf" }, guide={ ns.shaman.runeFury } },
	[28606200] = { npc=212837, name="Primordial Anomaly", class={ "SHAMAN" }, faction="Horde",
					spell={ "Greater Ghost Wolf" }, guide={ ns.shaman.runeFury } },
	[30206820] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[30606540] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[31407360] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[32606660] = { npc=212837, name="Primordial Anomaly", class={ "SHAMAN" }, faction="Horde",
					spell={ "Greater Ghost Wolf" }, guide={ ns.shaman.runeFury } },
	[33206980] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[34006440] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[34207360] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[34606060] = { npc=4036, name="Rogue Flame Spirit", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal Rage" },
	[35605360] = { npc=4036, name="Rogue Flame Spirit", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal Rage" },
	[36006200] = { npc=212837, name="Primordial Anomaly", class={ "SHAMAN" }, faction="Horde",
					spell={ "Greater Ghost Wolf" }, guide={ ns.shaman.runeFury } },
	[36606340] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[36606820] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[36607240] = { npc=212837, name="Primordial Anomaly", class={ "SHAMAN" }, faction="Horde",
					spell={ "Greater Ghost Wolf" }, guide={ ns.shaman.runeFury } },
	[37204820] = { npc=4036, name="Rogue Flame Spirit", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal Rage" },
	[37205000] = { npc=4036, name="Rogue Flame Spirit", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal Rage" },
	[37607200] = { name="Earth/Fire Elementals (Various)", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal/Seismic Rage" },
	[44003980] = { npc=4036, name="Rogue Flame Spirit", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal Rage" },
	[45004360] = { npc=4036, name="Rogue Flame Spirit", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield }, tip="Mote of Infernal Rage" },
	[59206260] = { npc=210845, name="Jixo Madrocket", class={ "HUNTER" }, spell={ "Kill Shot" },
					guide={ ns.hunter.killCommand },
					quest={ 78114, 78121 }, questName={ "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" } },
	[59405100] = { npc=214129, name="Venture Co. Light Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[61006020] = { npc=4011, name="Young Pridewing", class={ "HUNTER" }, spell={ "Kill Shot" },
					guide={ ns.hunter.killCommand }, tip="After both quests are completed you may tame these. Not too shabby!",
					quest={ 78114, 78121 }, questName={ "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" } },
	[61206760] = { npc=4011, name="Young Pridewing", class={ "HUNTER" }, spell={ "Kill Shot" },
					guide={ ns.hunter.killCommand }, tip="After both quests are completed you may tame these. Not too shabby!",
					quest={ 78114, 78121 }, questName={ "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" } },
	[61605020] = { npc=4011, name="Young Pridewing", class={ "HUNTER" }, spell={ "Kill Shot" },
					guide={ ns.hunter.killCommand }, tip="After both quests are completed you may tame these. Not too shabby!",
					quest={ 78114, 78121 }, questName={ "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" } },
	[62605280] = { npc=214129, name="Venture Co. Light Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[65205760] = { npc=4011, name="Young Pridewing", class={ "HUNTER" }, spell={ "Kill Shot" },
					guide={ ns.hunter.killCommand }, tip="After both quests are completed you may tame these. Not too shabby!",
					quest={ 78114, 78121 }, questName={ "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" } },
	[66604760] = { npc=214129, name="Venture Co. Light Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[67405740] = { npc=214129, name="Venture Co. Light Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[70605580] = { npc=214129, name="Venture Co. Light Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[71004820] = { npc=214129, name="Venture Co. Light Shredder", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ 78267 }, questName={ "Shredder Turbochargers" } },
	[72008620] = { npc=11913, name="Grimtotem Sorcerer", class={ "DRUID" },
					spell={ "Wild Strikes" }, tip="Various locations", guide={ ns.druid.idolWild } },
	[74408570] = { object=409711, name="Scrolls", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 78149, }, questName={ "Fury of the Land", }, tip="On top of a small barrel in a tent" },
	[74808560] = { npc=11913, name="Grimtotem Sorcerer", class={ "DRUID" },
					spell={ "Wild Strikes" }, tip="Various locations", guide={ ns.druid.idolWild } },
	[76609080] = { npc=11913, name="Grimtotem Sorcerer", class={ "DRUID" },
					spell={ "Wild Strikes" }, tip="Various locations", guide={ ns.druid.idolWild } },
	[77004340] = { npc=4011, name="Young Pridewing", class={ "HUNTER" }, spell={ "Kill Shot" },
					guide={ ns.hunter.killCommand }, tip="After both quests are completed you may tame these. Not too shabby!",
					quest={ 78114, 78121 }, questName={ "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" } },
	[77805260] = { npc=4011, name="Young Pridewing", class={ "HUNTER" }, spell={ "Kill Shot" },
					guide={ ns.hunter.killCommand }, tip="After both quests are completed you may tame these. Not too shabby!",
					quest={ 78114, 78121 }, questName={ "Wild Wyvern Wrangling", "Wrangling a Wild Wyvern" } },
	[79608580] = { npc=11913, name="Grimtotem Sorcerer", class={ "DRUID" },
					spell={ "Wild Strikes" }, tip="Various locations", guide={ ns.druid.idolWild } },
	[80609520] = { npc=11910, name="Grimtotem Ruffian", class={ "DRUID" },
					spell={ "Wild Strikes" }, tip="Various locations", guide={ ns.druid.idolWild } },
	[82009040] = { npc=11910, name="Grimtotem Ruffian", class={ "DRUID" },
					spell={ "Wild Strikes" }, tip="Various locations", guide={ ns.druid.idolWild } },
	[83608640] = { npc=11910, name="Grimtotem Ruffian", class={ "DRUID" },
					spell={ "Wild Strikes" }, tip="Various locations", guide={ ns.druid.idolWild } },
}
points[ 1446 ] = { -- Tanaris
	[30006540] = { npc=5481, name="Thistleshrub Dew Collector", class={ "DRUID" }, spell={ "Improved Barkskin" },
					guide={ ns.druid.improvedBarkskin } },
	[43004120] = { npc=222856, name="Odd Totem (south-west)", class={ "SHAMAN" }, spell={ "Rolling Thunder" },
					guide={ "Click on the Odd Totem (southern) which is at one end of the huge skeleton. You'll receive a "
						.."Ghost Wolf 40% speed buff but also a +50% damage taken debuff.\n\n"
						.."You must run quickly to the other end of the skeleton and click the Odd Totem there. A chest "
						.."will spawn. Open it, loot, profit!\n\nBring friends to distract if you must. Otherwise "
						.."just preclear ftw!" } },
	[43803200] = { npc=222243, name="Zopilote", class={ "HUNTER" }, spell={ "Raptor Fury" }, guide={ "Kill Zopilote" } },
	[51602760] = { npc=220984, name="Fizbuz Mithril", class={ "WARRIOR" }, spell={ "Gladiator Stance" },
					guide={ ns.warrior.gladiator }, preRune={ { "Blood Frenzy", "Rallying Cry" } },
					quest={ { 81682, 81697, 81801, 81877 } }, 
					questName={ { "The Old Champ", "Defanged", "Return to the Arena", "Fight Night" } } },
	[52803640] = { npc=222243, name="Zopilote", class={ "HUNTER" }, spell={ "Raptor Fury" }, guide={ "Kill Zopilote" } },
	[53802880] = { npc=223591, name="Echo of a Lost Soul", class={ "PRIEST" }, spell={ "Surge of Light" },
					guide={ ns.priest.surgeLight } },
	[56407370] = { item=223335, name="Oozing Eye", class={ "PRIEST" }, spell={ "Eye of the Void" },
					quest={ { 82316 } }, questName={ { "Seven Eyes I Seek..." } }, guide={ ns.priest.eyeOfVoid },
					tip="In the hive in The Gaping Chasm" },
	[59003650] = { name="Cryptic Scroll of Summoning", class={ "PRIEST", "SHAMAN" },
					spell={ "Pain and Suffering", "Mental Dexterity" }, guide={ ns.enragedVoidWalker } },
	[59209150] = { object=456682, name="Half-Buried Mech & Spike Lakeman", class={ "WARRIOR" }, spell={ "Shockwave" },
					tip="Spike Lakeman will directly swim south. Never mind if you can't see him, just head straight "
					.."to the Mad Doctor, Sebastian Jurgens. DUE SOUTH .Use the Guided Buoyancy Accelerant (4 charges)",
					quest={ { 84135, 84137, 84138, 84146, 84211, 84212, 84213,  } }, guide={ ns.warrior.shockwave },
					questName={ { "Beach Bot", "Mechanical Romance", "Frosty Favors", "Red Bag Blues", "Poacher's Den", 
						"Nookin' it Back", "Rift Away", } }, },
	[59209950] = { npc=228956, name="Sebastian Jurgens", class={ "WARRIOR" }, spell={ "Shockwave" },
					quest={ { 84135, 84137, 84138, 84146, 84211, 84212, 84213,  } }, guide={ ns.warrior.shockwave },
					questName={ { "Beach Bot", "Mechanical Romance", "Frosty Favors", "Red Bag Blues", "Poacher's Den", 
						"Nookin' it Back", "Rift Away", } }, },
	[61605420] = { name="Blisterpaw Hyena, Glashide Glazer, Land Rager", class={ "SHAMAN" }, spell={ "Overcharged" },
					guide={ ns.shaman.overcharged },
					quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[62006260] = { npc=222625, name="Corrupt Moderate Manifestation of Earth", class={ "SHAMAN" }, spell={ "Overcharged" },
					guide={ ns.shaman.overcharged },
					quest={ { 82073, 82076, 82071, 82074, 82072, 82075, 81960, 81968 } },
					questName={ { "Cleansing Water", "Answering Water's Call", "Purifying Fire", "Answering Fire's Call",
						"Purging Earth", "Answering Earth's Call", "Clarifying Air", "Answering Air's Call" } } },
	[63803100] = { name="Wastewander mobs (Various)", class={ "PRIEST", "SHAMAN" },
					spell={ "Pain and Suffering", "Mental Dexterity" }, guide={ ns.enragedVoidWalker } },
	[67002200] = { npc=8139, name="Jabbey", class={ "ROGUE" }, spell={ "Unfair Advantage" }, guide={ ns.rogue.unfair } },
	[72704780] = { object=441248, name="Book", class={ "MAGE" }, tip="In a bookshelf, middle pirate building",
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 81949, }, questName={ "Legends of the Tidesages" }, },
	[73404580] = { name="Southsea Pirates (Various)", class={ "ROGUE" }, spell={ "Unfair Advantage" }, guide={ ns.rogue.unfair } },
}
points[ 1438 ] = { -- Teldrassil
	[33603560] = { npc=204827, name="Adventurer's Remains", class={ "DRUID", "PALADIN", "PRIEST", "SHAMAN" }, faction="Alliance",
					spell={ "Lifebloom", "Inspiration Exemplar", "Prayer of Mending", "Ancestral Guidance" },
					guide={ ns.woundedAdventurer } },
	[34802820] = { name="Harpies (Various)", faction="Alliance", class={ "ROGUE" }, faction="Alliance", 
					tip="Pick Pocket or kill. Bottom-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[37908250] = { object=407352, name="Gnarlpine Cache", class={ "ROGUE" }, faction="Alliance",
					spell={ "Between the Eyes" }, guide={ ns.rogue.precision } },
	[38604100] = { name="Harpies (Various)", faction="Alliance", class={ "ROGUE" }, faction="Alliance",
					tip="Pick Pocket or kill. Bottom-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[39803740] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy }, faction="Alliance" },
	[39806960] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy }, faction="Alliance" },
	[41607760] = { name="Gnarlpine mobs (Various)", class={ "HUNTER" }, spell={ "Carve" }, faction="Alliance",
					guide={ ns.hunter.carve } },
	[42007980] = { name="Gnarlpine mobs (Various)", faction="Alliance", class={ "ROGUE" }, tip="Pick Pocket or kill. Top-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[43203920] = { name="Timberling mobs (Various)", faction="Alliance", class={ "ROGUE" }, tip="Pick Pocket or kill. Top-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[43807700] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy }, faction="Alliance" },
	[44705900] = { object=407734, name="Gnarlpine Cache", class={ "PRIEST", "ROGUE", "WARRIOR" }, faction="Alliance",
					spell={ "Void Plague", "Slaughter from the Shadows", "Furious Thunder" }, tip="Several locations in the Barrows",
					guide={ ns.priest.voidPlague, ns.rogue.slaughter, ns.warrior.furiousThunder } },
	[44805600] = { name="Gnarlpine mobs (Various)", class={ "HUNTER" }, spell={ "Carve" }, faction="Alliance",
					guide={ ns.hunter.carve } },
	[45605920] = { npc=7318, name="Rageclaw", class={ "DRUID", "HUNTER" }, faction="Alliance", tip="Bottom of Ban'ethil Barrow",
					spell={ "Mangle", "Explosive Shot" }, guide={ ns.druid.ursineRage } },
	[45805820] = { name="Gnarlpine mobs (Various)", faction="Alliance", class={ "ROGUE" }, tip="Pick Pocket or kill. Top-Left Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[46604620] = { npc=209811, name="Rustling Bush", class={ "HUNTER" }, faction="Alliance",
					spell={ "Master Marksman" }, guide={ ns.hunter.masterMark } },
	[48303140] = { npc=209928, name="Mowgh", class={ "HUNTER" }, spell={ "Flanking Strike" },
					guide={ ns.hunter.flankingStrike }, tip="Farm Teldrassil Bird Meat from nearby Strigid Owls" },
	[52604960] = { npc=2038, name="Lord Melenas", class={ "PRIEST", "ROGUE" }, faction="Alliance",
					spell={ "Shared Pain", "Mutilate" }, guide={ ns.priest.sharedPain, ns.rogue.mutilate } },
	[52807200] = { name="Timberling mobs (Various)", faction="Alliance", class={ "ROGUE" }, tip="Pick Pocket or kill. Top-Right Map Piece",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[52807880] = { object=404433, name="Lunar Chest", class={ "DRUID" }, faction="Alliance",
					spell={ "Sunfire" }, guide={ ns.druid.runeOfTheSun } },
	[52807980] = { npc=207577, name="Lunar Stone", class={ "DRUID" }, faction="Alliance",
					spell={ "Sunfire" }, guide={ ns.druid.runeOfTheSun } },
	[53805040] = { name="Sprite (Various)", faction="Alliance", class={ "PRIEST", "ROGUE" },
					tip={ nil, "Pick Pocket or kill. Bottom-Left Map Piece" },
					spell={ "Homunculi", "Quick Draw" }, guide={ ns.priest.citadel, ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[55004220] = { npc=1989, name="Grellkin", class={ "DRUID" }, faction="Alliance",
					spell={ "Fury of Stormrage" }, guide={ ns.druid.lunarIdolA }, quest={ 77571 },
					questName={ "Relics of the Kaldorei" } },
	[55339084] = { name="Rune of Quick Draw", faction="Alliance", class={ "ROGUE" },
					tip="Final Rune location. Hollow stump, Rut'theran Village",
					spell={ "Quick Draw" }, guide={ ns.rogue.quickDraw ..ns.rogue.quickDrawTel } },
	[55403280] = { npc=1986, name="Webwood Spider", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass }, quest={ 77575 },
					questName={ "Amidst the Shadowed Webs" } },
	[55602800] = { npc=1986, name="Webwood Spider", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass }, quest={ 77575 },
					questName={ "Amidst the Shadowed Webs" } },
	[55605980] = { npc=6736, name="Innkeeper Keldamyr", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Frenzied Assault" }, guide={ ns.warrior.frenziedAssault },
					tip="Speak to Keldamyr first, and then speak to Syllart, who is upstairs" },
	[56202480] = { npc=1986, name="Webwood Spider", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass }, quest={ 77575 },
					questName={ "Amidst the Shadowed Webs" } },
	[56662631] = { npc=1994, name="Githyiss the Vile", class={ "HUNTER" }, faction="Alliance", tip="Chance of a 6 slot bag!",
					quest={ 77568 }, questName={ "A Hunter's Strength" },
					spell={ "Chimera Shot" }, guide={ ns.starterZoneClass } },
	[56605780] = { npc=209872, name="Syllart", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Frenzied Assault" }, guide={ ns.warrior.frenziedAssault },
					tip= "He'll be wandering around upstairs. Speak to Inkeeper Keldamyr first if you haven't already done so" },
	[57006500] = { item=208609, name="Glade Flower", class={ "DRUID" }, faction="Alliance",
					spell={ "Living Seed" }, tip="Various locations", guide={ ns.druid.naturalPotential } },
	[57602900] = { npc=1986, name="Webwood Spider", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass }, quest={ 77575 },
					questName={ "Amidst the Shadowed Webs" } },
	[57802660] = { npc=1986, name="Webwood Spider", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass }, quest={ 77575 },
					questName={ "Amidst the Shadowed Webs" } },
	[58003460] = { npc=1986, name="Webwood Spider", class={ "WARRIOR" }, faction="Alliance",
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass }, quest={ 77575 },
					questName={ "Amidst the Shadowed Webs" } },
	[58604040] = { npc=3597, name="Mardant Strongoak", class={ "DRUID" }, faction="Alliance",
					spell={ "Fury of Stormrage" }, guide={ ns.druid.lunarIdolA }, quest={ 77571 },
					questName={ "Relics of the Kaldorei" } },
	[58664045] = { npc=3596, name="Ayanna Everstride", class={ "HUNTER" }, faction="Alliance",
					tip="Inside Aldrassil. Ascend to the first level",
					quest={ 77568 }, questName={ "A Hunter's Strength" },
					spell={ "Chimera Shot" }, guide={ ns.starterZoneClass } },
	[59943304] = { name="Moonwell", class={ "PRIEST" }, faction="Alliance",
					tip="/kneel and wait a bit", quest={ 77574 }, questName={ "Meditation on Elune" },
					spell={ "Penance" }, guide={ ns.starterZoneClass ..ns.priest.penanceTel } },
	[59174044] = { npc=3595, name="Shanda", class={ "PRIEST" }, faction="Alliance",
					tip="Inside Aldrassil Inn. Take the ramp at the entrance. She's at the back",
					quest={ 77574 }, questName={ "Meditation on Elune" },
					spell={ "Penance" }, guide={ ns.starterZoneClass ..ns.priest.penanceTel } },
	[59643844] = { npc=3593, name="Alyissia", class={ "WARRIOR" }, faction="Alliance", tip="Back room of the Aldrassil Inn, ground level", 
					spell={ "Victory Rush" }, guide={ ns.starterZoneClass }, quest={ 77575 },
					questName={ "Amidst the Shadowed Webs" } },
	[59643866] = { npc=3594, name="Frahun Shadewhisper", class={ "ROGUE" }, faction="Alliance",
					tip="Back room of the Aldrassil Inn, ground level",
					quest={ 77573 }, questName={ "Second-Story Work" },
					spell={ "Shadowstrike" }, guide={ ns.starterZoneClass } },
	[59684262] = { object=406006, name="Idol", class={ "ROGUE" }, faction="Alliance", tip="First roof, main building. An owl",
					quest={ 77573 }, questName={ "Second-Story Work" },
					spell={ "Shadowstrike" }, guide={ ns.starterZoneClass } },
	[61005400] = { item=208609, name="Glade Flower", class={ "DRUID" }, faction="Alliance",
					spell={ "Living Seed" }, tip="Various locations", guide={ ns.druid.naturalPotential } },
	[62603680] = { npc=1989, name="Grellkin", class={ "DRUID" }, faction="Alliance",
					spell={ "Fury of Stormrage" }, guide={ ns.druid.lunarIdolA }, quest={ 77571 },
					questName={ "Relics of the Kaldorei" } },
	[62607180] = { npc=203079, name="Wandering Swordsman", class={ "WARRIOR" },
					spell={ "Blood Frenzy" }, guide={ ns.warrior.bloodFrenzy }, faction="Alliance" }, 
	[66555152] = { item=208609, name="Glade Flower", class={ "DRUID" }, faction="Alliance",
					spell={ "Living Seed" }, tip="Various locations", guide={ ns.druid.naturalPotential } },
	[66905770] = { npc=206248, name="Wooden Effigy", class={ "DRUID" }, faction="Alliance",
					spell={ "Living Seed" }, tip="Approximately a 5 min timer", guide={ ns.druid.naturalPotential } },
}
points[ 1413 ] = { -- The Barrens
	[43002350] = { object=152608, name="Kolkar's Booty", class={ "DRUID", "MAGE", "SHAMAN" },
					spell={ "Savage Roar", "Regeneration", "Water Shield" }, tip="The nearby centaurs drop a key",
					guide={ ns.druid.ferocious, ns.shaman.tempestIcon, ns.mage.regeneration } },
	[43207860] = { npc=212694, name="Hirzek", class={ "SHAMAN" }, faction="Horde",
					spell={ "Earth Shield" }, quest={ { 78506, 78537, 78561, 78575 } },
					questName={ { "Elemental Distress", "Elixir of Insight", "Elixir of Insight", "Hirzek" } },
					guide={ ns.shaman.earthShield } },
	[44303770] = { object=152608, name="Kolkar's Booty", class={ "DRUID", "MAGE", "SHAMAN" },
					spell={ "Savage Roar", "Regeneration", "Water Shield" }, tip="The nearby centaurs drop a key",
					guide={ ns.druid.ferocious, ns.shaman.tempestIcon, ns.mage.regeneration } },
	[44605560] = { npc=209524, name="Patrolling Cheetah", class={ "HUNTER" },
					spell={ "Beast Mastery" }, guide={ ns.hunter.beastMastery } },
	[44732217] = { object=407117, name="Abandoned Snapjaw Nest", class={ "DRUID" }, faction="Horde",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[46203440] = { item=209846, name="Secrets of the Dreamers", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 78143, }, questName={ "Secrets of the Dreamers", },
					tip="Go to the same cavern with the Wailing Caverns entrance portal. The scroll is on the opposite side" },
	[48204020] = { name="Oasis Snapjaw Nest/Hatchling", class={ "DRUID" }, faction="Horde",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
--	[49009600] = { name="Skillbooks", tip="Razorfen Downs", skillBook=true, guide={ ns.dungeonDrops }, 
--					class={ "DRUID", "DRUID", "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "PRIEST", "ROGUE", "SHAMAN",
--						"WARLOCK", "WARLOCK", "WARRIOR" },	
--					spell={ "Deeper Wilds", "Enhanced Restoration", "Revive", "Aspect of the Viper", "Expanded Intellect",
--							"Enhanced Blessings", "Increased Fortitude", "Shadowfiend", "Redirect", "Totemic Projection",
--							"Portal Summoning", "Soul Harvesting", "Commanding Shout" }, },
	[49205720] = { npc=6247, name="Doan Karhan", class={ "WARLOCK" },
					spell={ "Metamorphosis" }, guide={ ns.warlock.metamorphosis },
					quest={ { 1740, 78680, 78681, 78684, 78702 } }, questName={ { "The Orb of Soran'ruk", "Rumors Abound",
						"The Conjuring", "The Mysterious Traveler", "Raszel Ander" } } },
	[49255725] = { npc=213445, name="Raszel Ander", class={ "WARLOCK" },
					tip="Can't see Raszel? Use Metamorphosis",
					spell={ "Grimoire of Synergy" }, guide={ ns.warlock.synergy },
					quest={ { 78994, 78914, 79298 } }, questName={ { "A Solid Foundation", "Soul Vessel", "Tempting Fate" } } },
	[52203640] = { npc=218931, name="Dark Rider", name="Dark Rider", tip="Search this area",
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE",
					"SHAMAN", "WARLOCK", "WARRIOR" }, spell={ "King of the Jungle", "Melee Specialist", "Missile Barrage",
					"Infusion of Light", "Spirit of the Redeemer", "Waylay", "Two-Handed Mastery", "Demonic Knowledge",
					"Precise Timing" }, guide={ ns.dalaranAgent }, quest={ ns.dalaranQuest }, questName={ ns.dalaranQuestName } },
	[52283108] = { object=208739, name="Horde Warbanner", class={ "WARRIOR" }, faction="Horde",
					tip="To the back of Sergra Darkthorn",
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage } },
	[54202560] = { name="Razormane Quillboar mobs (Various)", class={ "PRIEST" }, faction="Horde",
					spell={ "Twisted Faith" }, guide={ ns.priest.twisted ..ns.priest.twistedBarr } },
	[54803580] = { npc=209742, name="Desert Mirage", class={ "PRIEST", "SHAMAN" }, faction="Horde",
					spell={ "Shadow Word: Death", "Way of Earth" }, guide={ "Cast Dispel on it", ns.shaman.earthenRune } },
	[55804220] = { name="Oasis Snapjaw Nest/Hatchling", class={ "DRUID" }, faction="Horde",
					spell={ "Lacerate" }, guide={ ns.druid.lacerate } },
	[56200860] = { npc=3445, name="Supervisor Lugwizzle", class={ "WARLOCK" },
					spell={ "Shadow Bolt Volley" }, guide={ ns.warlock.shadowbolts }, tip="Must use Drain Soul" },
	[56300880] = { object=409700, name="Manual", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 78145, }, questName={ "Arcanic Systems Manual", },
					tip="Control room at the top of the oil rig in The Sludge Fen" },
	[57080973] = { object=407312, name="Hungry Idol", class={ "WARLOCK" },
					spell={ "Shadow Bolt Volley" }, guide={ ns.warlock.shadowbolts }, tip="Must use the Soul of Greed" },
	[57603560] = { npc=209742, name="Desert Mirage", class={ "SHAMAN" }, faction="Horde",
					spell={ "Way of Earth" }, guide={ ns.shaman.earthenRune } },
	[57803880] = { npc=209742, name="Desert Mirage", class={ "SHAMAN" }, faction="Horde",
					spell={ "Way of Earth" }, guide={ ns.shaman.earthenRune } },
	[58202670] = { name="Altar of Thorns", class={ "WARLOCK" },
					spell={ "Master Channeler" }, guide={ ns.warlock.channeling } },
	[61405480] = { npc=209607, name="Lieutenant Stonebrew", class={ "WARRIOR" }, faction="Horde",
					spell={ "Endless Rage" }, guide={ ns.warrior.endlessRage },
					tip="Only come here if you obtained the Horde Warbanner "
						.."from The Crossroads. Then at Northwatch Hold, replace "
						.."the Alliance banner with yours. When Lieutenant "
						.."Stonebrew arrives... do what you will FTW!" },
	[61005480] = { name="Crate", class={ "ROGUE" }, faction="Horde",
					tip="In a chest on the Northwatch Hold's stable's roof",
					spell={ "Saber Slash" }, guide={ ns.rogue.saberSlash } },
	[61923933] = { npc=211653, name="Grizzby", class=ns.allClass, spell=ns.allSpellG,
					guide={ ns.grizzby }, quest={ { 78267, 78266, 78265 } },
					questName={ { "Shredder Turbochargers", "Dark Iron Ordinance", "Fish Oil" } } },
	[62604620] = { name="Southsea Mobs (Various)", class={ "ROGUE" },
					guide={ ns.rogue.bladeDance }, spell={ "Blade Dance" },
					tip={ "Pp for Buccaneer's Matchbox. Now climb the hill nearby. Explode the gunpowder!" } },
	[62703630] = { object=211033, name="Goblin Tome", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					quest={ 79097, }, questName={ "Baxtan: On Destructive Magics", },
					tip="Right next to Gazlove" },
	[62773824] = { npc=3497, name="Kilxx", class={ "HUNTER", "WARRIOR" }, faction="Horde",
					spell={ "Sniper Training", "Quick Strike" },
					guide={ ns.hunter.sniper, ns.warrior.quickStrike },
					tip="Buy a Fishing Harpoon then swim out to the sunken boat" },
	[63603840] = { npc=209797, name="Bruuz", class={ "HUNTER", "WARRIOR" }, faction="Horde",
					spell={ "Sniper Training", "Quick Strike" },
					guide={ ns.hunter.sniper, ns.warrior.quickStrike },
					tip="Swimming near the boat. Throw the harpoon you bought from Kilxx" },
	[65203960] = { npc=209797, name="Bruuz", class={ "HUNTER", "WARRIOR" }, faction="Horde",
					spell={ "Sniper Training", "Quick Strike" },
					guide={ ns.hunter.sniper, ns.warrior.quickStrike },
					tip="Swimming near the boat. Throw the harpoon you bought from Kilxx" },
}
points[ 1441 ] = { -- Thousand Needles
	[10803990] = { npc=217703, name="Singed Highperch Consort", class={ "MAGE" },
					spell={ "Chronostatic Preservation" }, guide={ ns.mage.chronostatic }, },
	[10804080] = { npc=217620, name="Reckless Warlock", class={ "WARLOCK" }, spell={ "Dance of the Wicked" },
					guide={ ns.warlock.dance }, },
	[18602090] = { name="Strongboxes", class={ "ROGUE" }, spell={ "Rolling with the Punches" }, guide={ ns.rogue.punches } },
	[23504000] = { npc=4118, name="Venomous Cloud Serpent", class={ "SHAMAN" }, tip="3 x Cloud Serpent Fangs",
					spell={ "Decoy Totem" }, guide={ ns.shaman.decoyTotem }, },
	[23802340] = { npc=217711, name="Seared Needles Cougar", class={ "MAGE" },
					spell={ "Chronostatic Preservation" }, guide={ ns.mage.chronostatic },
					tip="The cougar is caged. You must first obtain a key from a Galak Mauler", },
	[24602720] = { npc=4118, name="Venomous Cloud Serpent", class={ "SHAMAN" }, tip="3 x Cloud Serpent Fangs",
					spell={ "Decoy Totem" }, guide={ ns.shaman.decoyTotem }, },
	[26704700] = { npc=217669, name="Scorched Screeching Roguefeather", class={ "MAGE" },
					spell={ "Chronostatic Preservation" }, guide={ ns.mage.chronostatic }, },
	[28005120] = { name="Screeching harpies (various)", class={ "MAGE" }, tip="10 x Strong Harpy Feathers",
					spell={ "Chronostatic Preservation" }, guide={ ns.mage.chronostatic }, },
	[34504000] = { object=423895, name="Scrolls", class={ "MAGE" },
					spell=ns.mage.bookRunes, guide=ns.mage.books, mageBook=true,
					tip="Inside a hut on Darkcloud Pinnacle mesa",
					quest={ 79947, }, questName={ "Geomancy: The Stone-Cold Truth" }, },
	[35003160] = { name="Grimtotem (various)", class={ "PRIEST" }, spell={ "Empowered Renew" }, guide={ ns.priest.empowered }, },
	[38405660] = { name="Venomous Cloud Serpent / Cloud Serpent", class={ "SHAMAN" }, tip="3 x Cloud Serpent Fangs",
					spell={ "Decoy Totem" }, guide={ ns.shaman.decoyTotem }, },
	[39404200] = { name="Altar of the Wind Spirit", class={ "SHAMAN" },
					spell={ "Decoy Totem" }, guide={ ns.shaman.decoyTotem }, },
	[40003480] = { npc=4117, name="Cloud Serpent", class={ "SHAMAN" }, tip="3 x Cloud Serpent Fangs",
					spell={ "Decoy Totem" }, guide={ ns.shaman.decoyTotem }, },
--	[43403080] = { name="Skillbooks", tip="Razorfen Downs", skillBook=true, guide={ ns.dungeonDrops }, 
--					class={ "DRUID", "DRUID", "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "PRIEST", "ROGUE", "SHAMAN",
--						"WARLOCK", "WARLOCK", "WARRIOR" },	
--					spell={ "Deeper Wilds", "Enhanced Restoration", "Revive", "Aspect of the Viper", "Expanded Intellect",
--							"Enhanced Blessings", "Increased Fortitude", "Shadowfiend", "Redirect", "Totemic Projection",
--							"Portal Summoning", "Soul Harvesting", "Commanding Shout" }, },
	[46005160] = { npc=4722, name="Rau Cliffrunner", class={ "SHAMAN" },
					spell={ "Maelstrom Weapon" }, guide={ ns.shaman.maelstrom },
					quest={ { 79358, 79360, 79362, 79363, 79361, 79364, 79365, 79366, 79442 } },
					questName={ { "Tattered Note", "Elemental Aid", "Power of da Earth", "Power of da Water",
						"Power of da Wind", "A Simple Container", "With Wind Beneath Your Wings", "Calm Before the Storm",
						"Catching Up" } } },
	[46805350] = { object=421568, name="Weathered Cache", class={ "SHAMAN" },
					spell={ "Spirit of the Alpha" }, guide={ ns.shaman.spiritAlpha }, },
	[55004200] = { npc=216474, name="Ravaging Tempest", class={ "SHAMAN" }, spell={ "Maelstrom Weapon" },
					tip="Hits hard, has knockback and helpers. If you die, you MUST ask to be sent back. "
						.."Loot his rare gem and then go to Rau, not Bath'rah",
					guide={ ns.shaman.maelstrom }, quest={ ns.shaman.maelstromQ }, questName={ ns.shaman.maelstromQN } },
	[56605020] = { npc=4119, name="Elder Cloud Serpent", class={ "SHAMAN" }, tip="3 x Cloud Serpent Fangs",
					spell={ "Decoy Totem" }, guide={ ns.shaman.decoyTotem }, },
	[66008800] = { name="Combat Dummy x 3", class={ "WARRIOR" }, spell={ "Intervene" }, guide={ ns.warrior.intervene }, },
	[68605550] = { npc=217418, name="Zai'enki", class={ "DRUID" },
					spell={ "Berserk" }, guide={ ns.druid.berserk }, },
	[80107710] = { object=499988, name="Spellbook", spell={ "Meditation Specialization" }, ring=true, 
					class={ "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "SHAMAN", "WARLOCK", },
					guide="In the hut, by the right side of the door on a side-bench", },
}
points[ 1456 ] = { -- Thunder Bluff
	[22671260] = { npc=233428, name="Rune Broker", skillBook=true, guide=ns.runeBroker, faction="Horde",
					tip="At the very back of The Pools of Vision on The Spirit Rise mesa", },
	[26191866] = { npc=207754, name="Mooart", class={ "WARRIOR" }, faction="Horde",
					spell={ "Frenzied Assault" },
					guide={ ns.warrior.frenziedAssault },
					tip= "Speak to Netali first if you haven't already done so" },
	[28761792] = { npc=207743, name="Netali Proudwind", class={ "WARRIOR" }, faction="Horde",
					spell={ "Frenzied Assault" }, guide={ ns.warrior.frenziedAssault },
					tip="Speak to Netali first, and then speak to Mooart, nearby" },
	[39446584] = { npc=205729, name="Boarton Shadetotem", class={ "SHAMAN" }, faction="Horde",
					spell={ "Lava Lash" }, guide={ ns.shaman.lavaLash }, quest={ { 76156, 76160, 76240 } },
					questName={ { "Stalk With The Earthmother", "Stalk With The Earthmother", "Stalk With The Earthmother" } },
					tip="\"Hmm... perhaps disguises are not your strength\"" }, -- Location based upon online screencap
	[39405333] = { npc=214096, name="Dokimi", faction="Horde",
					class=ns.allClass, spell=ns.allSpellACA, guide={ ns.supplyFaction } },
	[56144638] = { npc=3028, name="Kah Mistrunner", class={ "SHAMAN" }, faction="Horde",
					spell={ "Lava Lash" }, guide={ ns.shaman.lavaLash }, quest={ { 76156, 76160, 76240 } },
					questName={ { "Stalk With The Earthmother", "Stalk With The Earthmother", "Stalk With The Earthmother" } },
					tip="If you need to learn fishing. You do of course use my Cod Do Batter fishing AddOn?" },
}
points[ 1449 ] = { -- Un'Goro Crater
	[60007000] = { name="Ravasaur mobs (various)", class={ "DRUID" }, spell={ "Improved Swipe" },
					guide={ ns.druid.impSwipe }, },
	[67005100] = { name="Ravasaur mobs (various)", class={ "DRUID" }, spell={ "Improved Swipe" },
					guide={ ns.druid.impSwipe }, },
}
points[ 1452 ] = { -- Winterspring
	[29803560] = { npc=228822, name="Calyx Greenglow", class={ "MAGE" }, spell={ "Frozen Orb" },
					quest={ { 84369 } }, questName={ { "Healing the Healer" } }, guide={ ns.mage.frozenOrb }, },
	[49000800] = { object=457098, name="Finding Your Inner Feline: A Guide to Modern Druidism", 
					spell={ "Feral Combat Specialization" }, ring=true, 
					class={ "DRUID", }, guide="The book is sitting in a stone hearth, to the right of the Frostsaber Rock structure", },
	[59005900] = { object=457095, name="Elements for Dummies Volume I: Frost", spell={ "Frost Specialization" }, ring=true, 
					class={ "HUNTER", "MAGE", "SHAMAN", },
					guide="Under a table in a ransacked camp site as per the pin. Easy as, except for mobs", },
	[61203700] = { npc=228216, name="Numi", class={ "WARRIOR" }, spell={ "Shockwave" },
					quest={ { 84135, 84137, 84138, 84146, 84211, 84212, 84213,  } }, guide={ ns.warrior.shockwave },
					questName={ { "Beach Bot", "Mechanical Romance", "Frosty Favors", "Red Bag Blues", "Poacher's Den", 
						"Nookin' it Back", "Rift Away", } }, },
	[63001800] = { name="Ravasaur mobs (various)", class={ "DRUID" }, spell={ "Starfall" }, tip="Kill and loot. Nuf said! L59e.",
					guide={ "If you go around and climb the mountain you can drop down, avoiding the mobs.\n\n" ..ns.timbermaw }, },
	[67703540] = { object=462432, name="Wooden Chest", class={ "ROGUE" }, spell={ "Fan of Knives" },
					guide={ "Locate the chest in Winterfall Village. You must enter this code: Frostsaber, Owl, Bear, Owl"}, },
	[70203880] = { npc=226982, name="Frijidar", class={ "SHAMAN" }, spell={ "Feral Spirit" },
					guide={ "Speak to Frijidar... be ready to fight!" }, },
}

--=======================================================================================================
--
-- MISCELLANY
--
--=======================================================================================================

ns.pointsBase[ 1414 ] = { -- Kalimdor
	[69005000] = { summary=true, phase=1 },
	[72005000] = { summary=true, phase=2 },
	[75005000] = { summary=true, phase=3 },
	[78005000] = { summary=true, phase=4 },
	[70505440] = { summary=true, ring=true },
}
ns.pointsBase[ 1415 ] = { -- Eastern Kingdoms
	[69005000] = { summary=true, phase=1 },
	[72005000] = { summary=true, phase=2 },
	[75005000] = { summary=true, phase=3 },
	[78005000] = { summary=true, phase=4 },
	[70505440] = { summary=true, ring=true },
}
ns.pointsBase[ 947 ] = { -- Azeroth
	[45002600] = { summary=true, phase=1 },
	[48002600] = { summary=true, phase=2 },
	[51002600] = { summary=true, phase=3 },
	[54002600] = { summary=true, phase=4 },
	[46503040] = { summary=true, ring=true },
}
	
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
ns.textures[15] = "Interface\\AddOns\\HandyNotes_Runes\\Textures\\Adrenaline"
ns.textures[16] = "Interface\\AddOns\\HandyNotes_Runes\\Textures\\Arcane"
ns.textures[17] = "Interface\\AddOns\\HandyNotes_Runes\\Textures\\Demonic"
ns.textures[18] = "Interface\\AddOns\\HandyNotes_Runes\\Textures\\Duty"
ns.textures[19] = "Interface\\AddOns\\HandyNotes_Runes\\Textures\\Frozen"
ns.textures[20] = "Interface\\AddOns\\HandyNotes_Runes\\Textures\\Metamorphosis"
ns.textures[21] = "Interface\\AddOns\\HandyNotes_Runes\\Textures\\" ..( string.lower( ns.class ):gsub( "^%l", string.upper ) )

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
ns.scaling[21] = 0.33
