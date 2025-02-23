--[[
                                ----o----(||)----oo----(||)----o----

                                                Runes

                                     v3.09 - 23rd February 2025
                                Copyright (C) Taraezor / Chris Birch
                                         All Rights Reserved

                                ----o----(||)----oo----(||)----o----
]]

local myName, ns = ...
ns.db = {}

-- For Data.lua
ns.points = {}
ns.pointsBase = {}
ns.textures = {}
ns.scaling = {}
ns.texturesNum = ""
ns.texturesNumCode = {}
ns.scalingNum = 0

-- Pink theme
ns.colour = {}
ns.colour.prefix	= "\124cFFFF007F" -- Bright Pink
ns.colour.highlight = "\124cFFFF69B4" -- Hot Pink
ns.colour.plaintext = "\124cFFFFB2D0" -- Powder Pink
ns.colour.daily		= "\124cFF1E90FF" -- Dodger Blue

ns.defaults = { profile = { iconScale = 2.5, iconAlpha = 1, showCoords = false,
							hideIfRuneLearnt = true, hideRuneName = false, selfShow = true,
							skillBook = 20, ring=19, mageBook=21,
							phase1 = 15, phase2 = 16, phase3 = 17, phase4 = 18, 
							rune101 = 6, rune102 = 6, rune103 = 6, rune104 = 6, rune105 = 6,
							rune106 = 6, rune107 = 6, rune108 = 6, rune109 = 6, rune110 = 6, 
							rune111 = 6, rune112 = 6, rune113 = 6, rune114 = 6, rune115 = 6, 
							rune116 = 6, rune117 = 6, rune118 = 6, rune119 = 6, rune120 = 6, 
							rune121 = 6, rune122 = 6, rune123 = 6, rune124 = 6, rune125 = 6, 
							rune126 = 6, rune127 = 6, rune128 = 6, rune129 = 6, rune130 = 6, 
							rune131 = 6, rune132 = 6, } }
local pluginHandler = {}

-- Upvalues
local GameTooltip = _G.GameTooltip
local GetMapChildrenInfo = C_Map.GetMapChildrenInfo
local GetRunesForCategory = C_Engraving.GetRunesForCategory
local IsKnownRuneSpell = C_Engraving.IsKnownRuneSpell
local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted
local IsSpellKnown = IsSpellKnown
local LibStub = _G.LibStub
local UIParent = _G.UIParent
local UnitLevel = UnitLevel
local format, ipairs, next, type = format, ipairs, next, type
local HandyNotes = _G.HandyNotes

-- Data Setup
ns.name = UnitName( "player" ) or "Character"
ns.faction = UnitFactionGroup( "player" )
ns.classLocal, ns.class = UnitClass( "player" )

ns.raceList = { "Human", "Orc", "Dwarf", "Night Elf", "Undead", "Tauren", "Gnome", "Troll" }
ns.slotList = { "Head", "Neck", "Shoulders", "Shirt", "Chest", "Waist", "Legs", "Feet",
				"Wrist", "Hands", "Ring 1", "Ring 2", "Trinket 1", "Trinket 2", "Back",
				"Main Hand", "Off Hand", "Ranged", "Tabard" }
ns.slotColour = { "\124cFFFFFF00", "124cFFFFFFFF", "\124cFFFFFFFF", "\124cFFFFFFFF", "\124cFF0000FF",
					"\124cFF3CB371", "\124cFF4169E1", "\124cFF008000", "\124cFF00FF00", "\124cFF87CEFA",
					"\124cFFFFD700", "\124cFF00FFFF", "\124cFF7FFFD4", "\124cFFFFFFFF", "\124cFFFFA500",
					"\124cFF008B8B", "\124cFFFFFFFF", "\124cFFFFFFFF", "\124cFFFFFFFF" }			

ns.race = ns.raceList[ select( 3, UnitRace( "player" ) ) ]
ns.colour.class = "\124c" ..select( 4, GetClassColor( ns.class ) )

ns.continents = {}
ns.continents[ 947 ] = true -- Azeroth
ns.continents[ 1414 ] = true -- Kalimdor
ns.continents[ 1415 ] = true -- Eastern Kingdoms

ns.texturesNum = "Interface\\AddOns\\HandyNotes_Runes\\Textures\\"
ns.texturesNumCode = { "", "Cy", "Gr", "Ma", "R", "Y", "W" }
ns.scalingNum = 0.4

-- ---------------------------------------------------------------------------------------------------------------------------------

local function ShowPinForThisClassQuest( quests, forceCheck )

	if forceCheck == false and ns.db.hideIfRuneLearnt == false then return true end

	if not HandyNotes_RunesDB then return true end -- too soon for the server
	if HandyNotes_RunesDB.questsDone == nil then HandyNotes_RunesDB.questsDone = {} end
	if HandyNotes_RunesDB.questsDone[ ns.class ] == nil then HandyNotes_RunesDB.questsDone[ ns.class ] = {} end
	if HandyNotes_RunesDB.questsDone[ ns.class ].quests == nil then HandyNotes_RunesDB.questsDone[ ns.class ].quests = {} end

	local completed = false
	
	if type( quests ) == "table" then
		for j,w in ipairs( quests ) do
			if w > 0 then
				if HandyNotes_RunesDB.questsDone[ ns.class ].quests[ w ] then
					completed = true
				else
					completed = IsQuestFlaggedCompleted( w )
					if completed == true then
						HandyNotes_RunesDB.questsDone[ ns.class ].quests[ w ] = true
					else
						return true
					end
				end
			end
		end
		return false
	elseif ( type( quests ) == "number" ) and ( quests > 0 ) then
		if HandyNotes_RunesDB.questsDone[ ns.class ].quests[ quests ] then
			return false
		end
		completed = IsQuestFlaggedCompleted( quests )
		if completed == true then
			HandyNotes_RunesDB.questsDone[ ns.class ].quests[ quests ] = true
			return false
		end
		return true
	else
		return false
	end
end

local function ShowPinForThisClassRune( spell, forceCheck ) -- English language spell from the Data file

	if forceCheck == false and ns.db.hideIfRuneLearnt == false then return true end

	if not HandyNotes_RunesDB then return true end -- too soon for the server
	if HandyNotes_RunesDB.runesKnown == nil then HandyNotes_RunesDB.runesKnown = {} end
	if HandyNotes_RunesDB.runesKnown[ ns.class ] == nil then HandyNotes_RunesDB.runesKnown[ ns.class ] = {} end
	if HandyNotes_RunesDB.runesKnown[ ns.class ].spells == nil then HandyNotes_RunesDB.runesKnown[ ns.class ].spells = {} end

	if HandyNotes_RunesDB.runesKnown[ ns.class ].spells[ ns.L[ spell ] ] then
		-- Testing against a localised spelling of the spell
		-- We keep a permanent copy of the spell in the DB - avoids repeated API calls -> lag/fps. Player can't unlearn a spell!
		return false
	end
	if not ns.runeCategories then -- Build once each login/reload
		C_Engraving.RefreshRunesList()
		ns.runeCategories = C_Engraving.GetRuneCategories( false, false )
			-- Phase 1: 5, 7, 10 (Chest/Legs/Hands)
			-- Phase 2: 6, 8 and even a 5 (Waist/Feet/Chest)
			-- Phase 3: 1 and 9 (Head/Bracers)
			-- Phase 4: 11 and 15 (Ring(1)/Back) Orange/Yellow
		if ns.runeCategories == nil then return true end -- too soon for the server
		if #ns.runeCategories == 0 then return true end -- too soon for the server
	end
	for _,cat in ipairs( ns.runeCategories ) do
		local engravingData = GetRunesForCategory( cat, true )
		for _,ed in ipairs( engravingData ) do
			if ed.name == ns.L[ spell ] then -- It appears that ed.name is localised
				-- To here if the returned list of known runes contains the passed rune
				HandyNotes_RunesDB.runesKnown[ ns.class ].spells[ ns.L[ spell ] ] = true
				-- Saving a localised spelling of the spell in our lookup table
				return false
			end
		end
	end
	-- Rune is not yet known. So "true" is "yes, we need to show the pin" BUT also "not yet known/completed"
	return true
end

-- ---------------------------------------------------------------------------------------------------------------------------------

local function CompletedText( completed )
	return ( completed == true ) and ( "\124cFF00FF00" ..ns.L[ "Completed" ] )
								or ( "\124cFFFF0000" ..ns.L[ "Not Completed" ] )
end

local function PinGuide( guide, index )
	-- Allow for string, table with one entry, table with many entries, with or without index
	if guide == nil then return "" end
	if type( guide ) == "table" then
		if index then
			if guide[ index ] ~= nil then
				GameTooltip:AddLine( "\n" ..ns.colour.highlight ..ns.L["Guide\n\n"] ..ns.colour.plaintext 
						..guide[ index ], nil, nil, nil, true )
				return
			end
		end
		if guide[ 1 ] ~= nil then
			GameTooltip:AddLine( "\n" ..ns.colour.highlight ..ns.L["Guide\n\n"] ..ns.colour.plaintext
					..guide[ 1 ], nil, nil, nil, true )
		end
	else
		GameTooltip:AddLine( "\n" ..ns.colour.highlight ..ns.L["Guide\n\n"] ..ns.colour.plaintext
				..guide, nil, nil, nil, true )
	end
end

local function PinTip( tip, index )
	-- Allow for string, table with one entry, table with many entries, with or without index
	if tip == nil then return "" end
	if type( tip ) == "table" then
		if index then
			if tip[ index ] ~= nil then
				GameTooltip:AddLine( "\n" ..ns.colour.plaintext ..tip[ index ], nil, nil, nil, true )
				return
			end
		end
		if tip[ 1 ] ~= nil then
			GameTooltip:AddLine( "\n" ..ns.colour.plaintext ..tip[ 1 ], nil, nil, nil, true )
		end
	else
		GameTooltip:AddLine( "\n" ..ns.colour.plaintext ..tip, nil, nil, nil, true )
	end
end

function pluginHandler:OnEnter(mapFile, coord)
	if self:GetCenter() > UIParent:GetCenter() then
		GameTooltip:SetOwner(self, "ANCHOR_LEFT")
	else
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	end

	local completed, quests, questsNames, justTheName, preRunes, runeName;
	local pin = ns.points[mapFile] and ns.points[mapFile][coord]
	local spaceBeforeQuests, spaceBeforePreRunes, spaceBeforeTitle = false, false, false
	
	if pin.summary then
		for k,v in pairs( ns.runes ) do
			if k == ns.class then
				local completed;
				if pin.phase then
					GameTooltip:SetText( ns.colour.class ..ns.classLocal .." : " ..ns.L["Phase"] .." "
							..pin.phase .." : " ..ns.name )
					for r,s in ipairs( v.spells ) do
						-- print( "r="..r.." s="..s.." v[s]?="..(v[s] and "true" or "false"))
						if ns.runes[ k ][ s ].phase == pin.phase then
							completed = not ShowPinForThisClassRune( s, true )
							GameTooltip:AddDoubleLine( ns.colour.prefix ..r .. ".  " ..ns.L[ s ] .."   (" ..v[s].level .."+)",
								 CompletedText( completed ) .."     " ..ns.slotColour[ v[s].slot ] ..ns.slotList[ v[s].slot ] )
							if ns.db.hideRuneName == false then
								GameTooltip:AddLine( ns.colour.highlight ..v[s].rune )
							end
							GameTooltip:AddLine( ns.colour.plaintext ..v[s].start, nil, nil, nil, true )
						end
					end
					if pin.phase == 4 then
						GameTooltip:AddLine( "\n" ..ns.colour.class ..ns.L["Skill Books"] ..":" )
						for _,s in ipairs( v.skillBooks ) do
							completed = not ShowPinForThisClassRune( s, true )
							GameTooltip:AddDoubleLine( ns.colour.prefix ..ns.L[ s ] .."   (" ..v[s].level .."+)",
								CompletedText( completed ) )
							if ns.db.hideRuneName == false then
								GameTooltip:AddLine( ns.colour.highlight ..v[s].skillBook )
							end
							GameTooltip:AddLine( ns.colour.plaintext ..v[s].start, nil, nil, nil, true )
						end
					end
				elseif pin.ring ~= nil then
					GameTooltip:SetText( ns.colour.class ..ns.classLocal .." : " ..ns.name )
					GameTooltip:AddLine( "\n" ..ns.colour.class ..ns.L["Rings"] ..":" )
					for _,s in ipairs( v.rings ) do
						completed = not ShowPinForThisClassRune( s, true )
						GameTooltip:AddDoubleLine( ns.colour.prefix ..ns.L[ s ], CompletedText( completed ) )
						if ns.db.hideRuneName == false then
							GameTooltip:AddLine( ns.colour.highlight ..ns.runes[ "RINGS" ][ s ].rune )
						end
						GameTooltip:AddLine( ns.colour.plaintext ..ns.runes[ "RINGS" ][ s ].start, nil, nil, nil, true )
					end
				end
			end
		end
	elseif pin.mageBook then
		-- v2.32 had a gutful of trying to shoehorn mage books into the overall spell structure - with less than good results
		if ns.class == "MAGE" then
			-- If to here then the player wants to see something. That much we already know from checking
			-- But we dump the lot nevertheless as we at least got past a "total non-display" situation to even get here
			-- Thus not checking player selected options here
			GameTooltip:SetText( ns.colour.class ..ns.L[ "Mage Books" ], nil, nil, nil, nil, true )
			for _,s in ipairs( pin.spell ) do
				completed = not ShowPinForThisClassRune( s, true )
				CompletedText( completed )
				GameTooltip:AddDoubleLine( ns.colour.prefix ..ns.L[ s ], CompletedText( completed ) )
			end
			GameTooltip:AddLine( "\n" )
			-- Pin might be displaying all quests, just a book quest or every book
			-- Ultimately, they are all quests! Design is that always a table
			local justTheName, other, progress = "", "", 0
			for i,q in ipairs( pin.quest ) do
				-- pin.quest is assumed to be a one level table with >= 1 members
				completed = IsQuestFlaggedCompleted( q )
				if pin.npc and ( ( pin.npc == 211033 ) or ( pin.npc == 211022 ) ) then -- Garion (A) or Owen (H)
					-- Testing for the Mage Book NPCs as I have translated the Mage Book quests
					-- Their quest names also include other stuff which needs to be ignored sometimes
					GameTooltip:AddDoubleLine( ns.colour.highlight ..ns.L[ pin.questName[ i ] ], CompletedText( completed ) )
				else	
				--	justTheName, other = pin.questName[ i ]:match( "(.+)(" ..ns.colour.plaintext ..".+)" )
					GameTooltip:AddDoubleLine( ns.colour.highlight ..ns.L[ pin.questName[ i ] ], CompletedText( completed ) )
				end
			end
			if pin.tip and pin.tip == "Progress" then -- of 40
				for _,b in ipairs( ( ns.faction == "Horde" ) and ns.mage.booksQuestIDsH or ns.mage.booksQuestIDsA ) do
					completed = IsQuestFlaggedCompleted( b )
					progress = progress + ( (completed == true) and 1 or 0 )
				end
				GameTooltip:AddLine( ns.colour.class ..ns.L[ "Progress" ] ..": " ..progress .."/40" )
			else	
				PinTip( pin.tip )
			end
			PinGuide( pin.guide )
		end	
	else
		if pin.class then
			for i,v in ipairs( pin.class ) do

				if ns.class == v then
				
					if spaceBeforeTitle == true then
						GameTooltip:AddLine( "\n" )
						spaceBeforeTitle = false
					end
					
					if pin.ring then
						runeName = ( ns.db.hideRuneName == true ) and ""
								or "\n(" ..ns.runes[ "RINGS" ][ pin.spell[ 1 ] ].rune ..")"
						GameTooltip:AddDoubleLine( ns.colour.prefix ..ns.L[ pin.spell[ 1 ] ] ..ns.colour.highlight ..runeName, ns.colour.class ..ns.classLocal )
					else
						runeName = ( ns.db.hideRuneName == true ) and ""
								or ( "\n(" ..(ns.runes[ v ][ pin.spell[ i ] ].rune or
									ns.runes[ v ][ pin.spell[ i ] ].skillBook ) ..")" )
						GameTooltip:AddDoubleLine( ns.colour.prefix ..ns.L[ pin.spell[ i ] ] ..ns.colour.highlight ..runeName,
									ns.colour.class ..ns.classLocal )
					end
					GameTooltip:AddLine( ns.colour.highlight ..pin.name .."\n" )

					if pin.preRune then
						-- Added originally for Warrior Gladiator Stance in Phase 3
						-- Expanded for Rogue Honor Among Thieves to allow for multiple class entries per coordinate
						-- Same rules as per quests
						preRunes = ( pin.preRune[ i ] ~= nil ) and pin.preRune[ i ] or pin.preRune[ 1 ]
						if type( preRunes ) == "table" then				
							for j,w in ipairs( preRunes ) do
								if spaceBeforePreRunes == false then GameTooltip:AddLine( "\n" ) end
								spaceBeforePreRunes = true
								completed = not ShowPinForThisClassRune( w, true )
								GameTooltip:AddDoubleLine( ns.colour.highlight ..preRunes[ j ], CompletedText( completed ) )
							end
							spaceBeforePreRunes = false
						else
							GameTooltip:AddLine( "\n" )
							completed = not ShowPinForThisClassRune( preRunes, true )
							GameTooltip:AddDoubleLine( ns.colour.highlight ..preRunes, CompletedText( completed ) )
						end
					end
					
					-- Quests are listed as: (a) part of collecting the rune or (b) as a non-rune levelling guide
					-- If (a) then there must be a 1:1 spell and quest (single or table) for each class v
					-- If (b) then there must be a 1:1 quest (single or table) for each class v

					if pin.quest then
						-- Single quest for all classes is permitted. Always a table. Table within a table or number
						-- To avoid a class with no quest being given pin.quest[ 1 ], use {} - can't use nil 
						quests = ( pin.quest[ i ] ~= nil ) and pin.quest[ i ] or pin.quest[ 1 ]
						questsNames = ( pin.questName[ i ] ~= nil ) and pin.questName[ i ] or pin.questName[ 1 ]

						if type( quests ) == "table" then				
							-- Note that a class with a {} for quests will safely drop through here, thus not pulling in any quests
							for j,w in ipairs( quests ) do
								if spaceBeforeQuests == false then GameTooltip:AddLine( "\n" ) end
								spaceBeforeQuests = true
								completed = IsQuestFlaggedCompleted( w )
								GameTooltip:AddDoubleLine( ns.colour.highlight ..ns.L[ questsNames[ j ] ], 
									CompletedText( completed ) )
							end
							spaceBeforeQuests = false
						else
							GameTooltip:AddLine( "\n" )
							completed = IsQuestFlaggedCompleted( quests )
							GameTooltip:AddDoubleLine( ns.colour.highlight ..ns.L[ questsNames ], CompletedText( completed ) )
						end
					end									
					PinTip( pin.tip, i )
					if pin.guide then
						PinGuide( pin.guide, i )
						spaceBeforeTitle = true
					end
				end
			end

		elseif ( pin.skillBook ~= nil ) then
			-- Added for Phase 4 - Skillbook vendors
			GameTooltip:SetText( ns.colour.prefix ..pin.name )
			PinTip( pin.tip )
			PinGuide( pin.guide )
		end
		
		if ( ns.db.showCoords == true ) then
			local mX, mY = HandyNotes:getXY(coord)
			mX, mY = mX*100, mY*100
			GameTooltip:AddLine( ns.colour.highlight .."(" ..format( "%.02f", mX ) .."," ..format( "%.02f", mY ) ..")" )
		end
	end
	
	GameTooltip:Show()
end

function pluginHandler:OnLeave()
	GameTooltip:Hide()
end

-- ---------------------------------------------------------------------------------------------------------------------------------

ns.passed = {}

local function CheckAndShow( coord, pin )

	ns.passed.texture = nil
	
	if pin.class == nil then
		if ( pin.faction == nil ) or ( pin.faction == ns.faction ) then
			if pin.skillBook ~= nil then
				if ns.db.skillBook > 0 then
					for _,s in ipairs( ns.runes[ ns.class ].skillBooks ) do
						if ShowPinForThisClassRune( ns.runes[ ns.class ][ s ].spellID, true ) == true then
							ns.passed.texture = ns.textures[ ns.db.skillBook ]
							ns.passed.scale = ns.db.iconScale * ns.scaling[ ns.db.skillBook ]
							return
						end
					end
				end
			elseif pin.ring ~= nil then
				if ns.db.ring > 0 then
					ns.passed.texture = ns.textures[ ns.db.ring ]
					ns.passed.scale = ns.db.iconScale * ns.scaling[ ns.db.ring ]
					return
				end
			else
		--		print( "c=" ..coord .." m=" ..ns.mapID)
		--		print("HN Runes. Please report error: Null class for n=" ..(pin.name or "nil") .." t=" ..(pin.tip or "nil")
		--				.." c="..coord.." m="..ns.mapID)
			end
		end
		return
	end

	for i,v in ipairs( pin.class ) do
		if ns.class == v then
			if ( pin.faction == nil ) or ( pin.faction == ns.faction ) then
				if pin.ring then
					if ns.db.ring > 0 then
						if ShowPinForThisClassRune( pin.spell[ 1 ], false ) then
							ns.passed.texture = ns.textures[ ns.db.ring ]
							ns.passed.scale = ns.db.iconScale * ns.scaling[ ns.db.ring ]
						end
					end
				elseif pin.mageBook then
					if ns.db.mageBook > 0 then
						for _,s in ipairs( pin.spell ) do
							if ShowPinForThisClassRune( s, false ) then
								if pin.quest then
									for k,q in ipairs( pin.quest ) do
										if ShowPinForThisClassQuest( q, false ) then
											ns.passed.texture = ns.textures[ ns.db.mageBook ]
											ns.passed.scale = ns.db.iconScale * ns.scaling[ ns.db.mageBook ]
											break
										end
									end
								else
									ns.passed.texture = ns.textures[ ns.db.mageBook ]
									ns.passed.scale = ns.db.iconScale * ns.scaling[ ns.db.mageBook ]
								end
							end
							if ns.passed.texture ~= nil then break end
						end
					end				
				elseif pin.spell and ns.runes[ v ][ pin.spell[ i ] ].phase then
					-- Phase will be null for the Paladin Avenging Wrath hybrid rune / skill book
					if ns.db[ "phase" ..ns.runes[ v ][ pin.spell[ i ] ].phase ] > 0 then
						ns.icon = ns.runes[ v ][ pin.spell[ i ] ].icon
						ns.runeDB = ns.db[ "rune1" ..format( "%02d", ns.icon ) ]
						if ( ns.runeDB ~= nil ) and ( ns.runeDB > 1 ) and ShowPinForThisClassRune( pin.spell[ i ], false ) then
							ns.passed.texture = ns.texturesNum ..tostring( ns.icon ) .."-"  ..ns.texturesNumCode[ ns.runeDB ]
							ns.passed.scale = ns.db.iconScale * ns.scalingNum
						end
					end
				end
			end
		end
	end
end

local function ShowDynamic( coord, pin )
	if not ns.db then return end
	if pin.summary then
		if pin.phase then
			local phase = ns.db[ "phase" ..tostring( pin.phase ) ]
			phase = ( phase == 0 ) and ns.defaults.profile[ "phase" ..pin.phase ] or phase
			ns.passed.texture = ns.textures[ phase ]
			ns.passed.scale = ns.db.iconScale * ns.scaling[ phase ] * 2
		else
			ns.passed.texture = ns.textures[ ( ns.db.ring > 0 ) and ns.db.ring or ns.defaults.profile.ring ]
			ns.passed.scale = ns.db.iconScale * ns.scaling[ ( ns.db.ring > 0 ) and ns.db.ring or ns.defaults.profile.ring  ] * 2
		end
	elseif pin.skillBook then
		ns.passed.texture = ns.textures[ ns.db.skillBook ]
		ns.passed.scale = ns.db.iconScale * ns.scaling[ ns.db.skillBook ]
	elseif pin.ring then
		ns.passed.texture = ns.textures[ ns.db.ring ]
		ns.passed.scale = ns.db.iconScale * ns.scaling[ ns.db.ring ]
	elseif pin.mageBook then
		ns.passed.texture = ns.textures[ ns.db.mageBook ]
		ns.passed.scale = ns.db.iconScale * ns.scaling[ ns.db.mageBook ]
	else
		ns.passed.texture = ns.texturesNum ..tostring( pin.iconNum ) .."-" 
			..ns.texturesNumCode[ ns.db[ "rune1" ..format( "%02d", pin.iconNum ) ] ]
		ns.passed.scale = ns.db.iconScale * ns.scalingNum
	end
end

local function AddToDynamicContinent( coord, pin, mapIDC, mapIDZ )
	local mx, my = HandyNotes:getXY( coord )
	local cx, cy = ns.HereBeDragons:TranslateZoneCoordinates( mx, my, mapIDZ, mapIDC )
	if cx and cy then
		pin.iconNum = ( ( pin.skillBook ~= nil ) or ( pin.ring ~= nil ) or ( pin.mageBook ~= nil ) ) and nil or ns.icon
		ns.points[ mapIDC ][ HandyNotes:getCoord( cx, cy ) ] = pin
	end
end

local function SetupDynamicContinent( mapID )
	-- A continent map will contain summary pins as they appear in the data file as well as dynamically
	-- generated pins which represent a culling of and summary of all the zone pins.
	-- The idea is to have no more than one pin per rune per zone for the player as well as the
	-- secondary/additional class which is selectable in the Options panel.
	-- Since I introduced this continent/world maps pin culling the previous massive lag/fps hit has disappeared
		
	ns.zonePins = {}

	-- First the summary pins. Coords will be native to the continent, thus needing no conversion
	ns.points[ mapID ] = {}
	
--	print("mapID="..mapID)
	
	for coord, pin in next, ns.pointsBase[ mapID ] do
		ns.points[ mapID ][ coord ] = pin
	end	

	local children = GetMapChildrenInfo( mapID, nil, true )
		-- Returns a table of map tables of zones belonging to the continent
		-- Interestingly, perhaps due to parameters, cave etc maps in the zone are not returned
		-- But child.mapType == Enum.UIMapType.Zone would fix that
	for _, map in next, children do
		if ns.points[ map.mapID ] then
			-- It's one of our maps
			ns.zonePins[ map.mapID ] = {}
			ns.zonePins[ map.mapID ][ "1" ] = {}
			-- Above and below: future expansion in mind, hence the "1" above and below - show multiple classes perhaps
			for coord, pin in next, ns.points[ map.mapID ] do
				if pin.skillBooks then
					if ( pin.faction == nil ) or ( pin.faction == ns.faction ) then
						for _,s in ipairs( ns.runes[ ns.class ].skillBooks ) do
							if ShowPinForThisClassRune( ns.runes[ ns.class ][ s ].spellID, true ) == true then
								ns.zonePins[ map.mapID ][ "1" ][ pin.name ] = true
								AddToDynamicContinent( coord, pin, mapID,  map.mapID )
							end
						end
					end
				
				elseif pin.class then
					for i,v in ipairs( pin.class ) do
						-- v is a capitalised class. We must compare with a numerical index for the player and a
						-- numerical radio button with offset 1 for extra classes (when and if I code multiple classes ;) )
						if v == ns.class then
							if ( pin.faction == nil ) or ( pin.faction == ns.faction ) then
								if ns.zonePins[ map.mapID ][ "1" ][ pin.spell[ i ] ] == nil then
									if pin.ring then
										if ns.db.ring > 0 then
											if ShowPinForThisClassRune( pin.spell[ 1 ], false ) then
												ns.zonePins[ map.mapID ][ "1" ][ pin.spell[ 1 ] ] = true
												AddToDynamicContinent( coord, pin, mapID,  map.mapID )
											end
										end
									elseif pin.mageBook then
										if ns.db.mageBook > 0 then
											for _,s in ipairs( pin.spell ) do
												if ShowPinForThisClassRune( s, false ) then
													if pin.quest then
														for k,q in ipairs( pin.quest ) do
															if ShowPinForThisClassQuest( q, false ) then
																ns.zonePins[ map.mapID ][ "1" ][ s ] = true
																AddToDynamicContinent( coord, pin, mapID,  map.mapID )
																break
															end
														end
													else
														ns.zonePins[ map.mapID ][ "1" ][ s ] = true
														AddToDynamicContinent( coord, pin, mapID,  map.mapID )
													end
												end
												if ns.zonePins[ map.mapID ][ "1" ][ s ] ~= nil then break end
											end				
										end				
									elseif ns.runes[ v ][ pin.spell[ i ] ].phase then
										-- Phase will be null for the Paladin Avenging Wrath hybrid rune / skill book
										--	print("i="..i.." s="..pin.spell[ i ].." m="..map.mapID.." c="..coord)
										if ns.db[ "phase" ..tostring( ns.runes[ v ][ pin.spell[ i ] ].phase ) ] > 0 then
											ns.icon = ns.runes[ v ][ pin.spell[ i ] ].icon
											ns.runeDB = ns.db[ "rune1" ..format( "%02d", ns.icon ) ]
											if ( ns.runeDB ~= nil ) and  ( ns.runeDB > 1 ) and
													ShowPinForThisClassRune( pin.spell[ i ], false ) then
												if pin.alsoTestQuest then
													if ShowPinForThisClassQuest( pin.quest[ i ], false ) then
														ns.zonePins[ map.mapID ][ "1" ][ pin.spell[ i ] ] = true
														AddToDynamicContinent( coord, pin, mapID,  map.mapID )
													end
												else
													ns.zonePins[ map.mapID ][ "1" ][ pin.spell[ i ] ] = true
													AddToDynamicContinent( coord, pin, mapID,  map.mapID )
												end
												-- Yes, possible for the pin at coord to have more than one rune for a class but it's
												-- impossible to show multiple runes on one pin. So we grab the first. Subsequent ones
												-- that were missed will usually/hopefully have other coords in the same zone
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

local function iterator(t, prev)
	if not t then return end
	local coord, pin = next(t, prev)
	
	if ns.db[ "selfShow" ] == false then return end

	while coord do
		if ( ns.continents[ ns.mapID ] == nil ) then
			CheckAndShow( coord, pin )
			if ns.passed.texture then
				return coord, nil, ns.passed.texture, ns.passed.scale, ns.db.iconAlpha
			end
		else
			ShowDynamic( coord, pin )
			return coord, nil, ns.passed.texture, ns.passed.scale, ns.db.iconAlpha
		end
		coord, pin = next(t, coord)
	end
end

function pluginHandler:GetNodes2( mapID, minimap )
	ns.mapID = mapID
	if ( ns.continents[ mapID ] ~= nil ) then SetupDynamicContinent( mapID ) end
	return iterator, ns.points[ mapID ], nil
end

-- ---------------------------------------------------------------------------------------------------------------------------------

ns.iconChoice = "1 = " ..ns.L["No Map Pin"] .."\n2 = " ..ns.L["Cyan"] .."\n3 = " ..ns.L["Green"] .."\n4 = " 
					..ns.L["Magenta"] .."\n5 = " ..ns.L["Red"] .."\n6 = " ..ns.L["Yellow"] .."\n7 = " ..ns.L["White"]
ns.iconStandard = "1 = " ..ns.L["White"] .."\n2 = " ..ns.L["Purple"] .."\n3 = " ..ns.L["Red"] .."\n4 = " 
					..ns.L["Yellow"] .."\n5 = " ..ns.L["Green"] .."\n6 = " ..ns.L["Grey"] .."\n7 = " ..ns.L["Mana Orb"]
					.."\n8 = " ..ns.L["Phasing"] .."\n9 = " ..ns.L["Raptor egg"] .."\n10 = " ..ns.L["Stars"]
					.."\n11 = " ..ns.L["Cogwheel"] .."\n12 = " ..ns.L["Frost"] .."\n13 = " ..ns.L["Diamond"]
					.."\n14 = " ..ns.L["Screw"]
					.."\n15 = " ..ns.L["Adrenaline"] .."\n16 = " ..ns.L["Arcane"] .."\n17 = " ..ns.L["Demonic"]
					.."\n18 = " ..ns.L["Duty"] .."\n19 = " ..ns.L["Frozen"] .."\n20 = " ..ns.L["Metamorphosis"]
					.."\n21 = " ..ns.L["Class"]
ns.iconStandardNoPin = "0 = " ..ns.L["No Map Pin"] .."\n" ..ns.iconStandard	
		
-- Interface -> Addons -> Handy Notes -> Plugins -> Runes options
ns.options = {
	type = "group",
	name = ns.L["Runes"],
	desc = ns.L["AddOn Description"],
	get = function(info) return ns.db[info[#info]] end,
	set = function(info, v)
		ns.db[info[#info]] = v
		pluginHandler:Refresh()
	end,
	args = {
		options = { type = "group", name = ns.L["Options"], inline = true, order = 1,
			args = { 
				iconScale = { type = "range", name = ns.L["Map Pin Size"], desc = ns.L["The Map Pin Size"],
					min = 1, max = 4, step = 0.1, arg = "iconScale", order = 2, },
				iconAlpha = { type = "range", name = ns.L["Map Pin Alpha"], desc = ns.L["The alpha transparency"],
					min = 0, max = 1, step = 0.01, arg = "iconAlpha", order = 3, },
				showCoords = { type = "toggle", name = ns.L["Show Coordinates"], desc = ns.L["Show Coordinates Description"] 
							..ns.colour.highlight .."(xx.xx,yy.yy)", arg = "showCoords", order = 4, },
			},
		},
		phases = { type = "group", name = ns.L["Season"].."/"..ns.L["Phase"], inline = true, order = 20,
			args = { 
				phase1 = { type = "range", name = ns.L["Phase"].." 1", desc = ns.iconStandardNoPin,
							width = 0.8, min = 0, max = 21, step = 1, arg = "phase1", order = 21, },
				phase2 = { type = "range", name = ns.L["Phase"].." 2", desc = ns.iconStandardNoPin,
							width = 0.8, min = 0, max = 21, step = 1, arg = "phase2", order = 22, },
				phase3 = { type = "range", name = ns.L["Phase"].." 3", desc = ns.iconStandardNoPin,
							width = 0.8, min = 0, max = 21, step = 1, arg = "phase3", order = 23, },
				phase4 = { type = "range", name = ns.L["Phase"].." 4/5", desc = ns.iconStandardNoPin,
							width = 0.8, min = 0, max = 21, step = 1, arg = "phase4", order = 24, },
				spacer = { type = "description", name = " ", desc = "", width = 0.28, order = 40, },
				classIcon = { type = "description", name = " ", desc = ns.class, image = ns.texturesNum ..ns.class,
								width = 0.25, order = 41, },
				selfShow = { type = "toggle", name = ns.name, desc = ns.L["Useful to quickly toggle on/off ALL pins"],
								arg = "selfShow", width = 1.0, order = 42, },
			},
		},
		player = { type = "group", name = ns.L[ "Runes" ], inline = true, order = 70,
			args = {
				hideIfRuneLearnt = { type = "toggle", name = ns.L["Hide if learnt"], width = 1.2, arg = "hideIfRuneLearnt",
								desc = L["Will also hide completed Mage Books, Rings, Skill Books.\n\n"
										.."Note that to hide Rune Brokers you must not show Skill Books"], order = 71, },
				hideRuneName = { type = "toggle", name = ns.L["Hide the rune name"], width = 1.2, arg = "hideRuneName",
								desc = ns.L["This is the object/book/reward item you must acquire. "
									.."It's not necessarily the same as the learnt spell name. "
									.."It is typically the second line of a Tooltip. Hide this "
									.."for less text clutter / better readability"], order = 72, },
				separator1 = { type = "header", name = "", order = 73, },
				skillBook = { type = "range", name = ns.L["Skill Book"], width = 0.8, min = 0, max = 21, step = 1, 
								arg = "skillBook", order = 74, desc = ns.iconStandardNoPin, },
				ring = { type = "range", name = ns.L["Ring"], width = 0.8, min = 0, max = 21, step = 1, 
								arg = "ring", order = 75, desc = ns.iconStandardNoPin, },
				mageBook = ( ns.class == "MAGE" ) and { type = "range", name = ns.L["Mage Book"], width = 0.8, min = 0,
								max = 21, step = 1, arg = "mageBook", order = 76, desc = ns.iconStandardNoPin, } or nil,
				separator2 = { type = "header", name = "", order = 80, },
				rune101 = { type = "range", name = ns.L[ "Rune" ] .." 1", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune101", order = 101, },
				rune102 = { type = "range", name = ns.L[ "Rune" ] .." 2", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune102", order = 102, },
				rune103 = { type = "range", name = ns.L[ "Rune" ] .." 3", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune103", order = 103, },
				rune104 = { type = "range", name = ns.L[ "Rune" ] .." 4", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune104", order = 104, },
				rune105 = { type = "range", name = ns.L[ "Rune" ] .." 5", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune105", order = 105, },
				rune106 = { type = "range", name = ns.L[ "Rune" ] .." 6", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune106", order = 106, },
				rune107 = { type = "range", name = ns.L[ "Rune" ] .." 7", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune107", order = 107, },
				rune108 = { type = "range", name = ns.L[ "Rune" ] .." 8", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune108", order = 108, },
				rune109 = { type = "range", name = ns.L[ "Rune" ] .." 9", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune109", order = 109, },
				rune110 = { type = "range", name = ns.L[ "Rune" ] .." 10", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune110", order = 110, },
				rune111 = { type = "range", name = ns.L[ "Rune" ] .." 11", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune111", order = 111, },
				rune112 = { type = "range", name = ns.L[ "Rune" ] .." 12", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune112", order = 112, },
				rune113 = { type = "range", name = ns.L[ "Rune" ] .." 13", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune113", order = 113, },
				rune114 = { type = "range", name = ns.L[ "Rune" ] .." 14", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune114", order = 114, },
				rune115 = { type = "range", name = ns.L[ "Rune" ] .." 15", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune115", order = 115, },
				rune116 = { type = "range", name = ns.L[ "Rune" ] .." 16", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune116", order = 116, },
				rune117 = { type = "range", name = ns.L[ "Rune" ] .." 17", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune117", order = 117, },
				rune118 = { type = "range", name = ns.L[ "Rune" ] .." 18", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune118", order = 118, },
				rune119 = { type = "range", name = ns.L[ "Rune" ] .." 19", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune119", order = 119, },
				rune120 = { type = "range", name = ns.L[ "Rune" ] .." 20", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune120", order = 120, },
				rune121 = { type = "range", name = ns.L[ "Rune" ] .." 21", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune121", order = 121, },
				rune122 = { type = "range", name = ns.L[ "Rune" ] .." 22", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune122", order = 122, },
				rune123 = { type = "range", name = ns.L[ "Rune" ] .." 23", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune123", order = 123, },
				rune124 = { type = "range", name = ns.L[ "Rune" ] .." 24", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune124", order = 124, },
				rune125 = { type = "range", name = ns.L[ "Rune" ] .." 25", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune125", order = 125, },
				rune126 = { type = "range", name = ns.L[ "Rune" ] .." 26", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune126", order = 126, },
				rune127 = { type = "range", name = ns.L[ "Rune" ] .." 27", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune127", order = 127, },
				rune128 = { type = "range", name = ns.L[ "Rune" ] .." 28", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune128", order = 128, },
				rune129 = { type = "range", name = ns.L[ "Rune" ] .." 29", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune129", order = 129, },
--[[			rune130 = { type = "range", name = ns.L[ "Rune" ] .." 30", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune130", order = 130, },
				rune131 = { type = "range", name = ns.L[ "Rune" ] .." 31", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune131", order = 131, },
				rune132 = { type = "range", name = ns.L[ "Rune" ] .." 32", desc = ns.iconChoice, width = 0.8,
								min = 1, max = 7, step = 1, arg = "rune132", order = 132, },]]
			},
		},
	},
}

-- ---------------------------------------------------------------------------------------------------------------------------------

function pluginHandler:OnEnable()
	ns.HereBeDragons = LibStub("HereBeDragons-2.0", true)
	if not ns.HereBeDragons then return end
	HandyNotes:RegisterPluginDB(ns.L["Runes"], pluginHandler, ns.options)
	ns.db = LibStub("AceDB-3.0"):New("HandyNotes_RunesDB", ns.defaults, "Default").profile
	pluginHandler:Refresh()
end

function pluginHandler:Refresh()
	self:SendMessage("HandyNotes_NotifyUpdate", "Runes")
end

LibStub("AceAddon-3.0"):NewAddon(pluginHandler, "HandyNotes_RunesDB", "AceEvent-3.0")

-- ---------------------------------------------------------------------------------------------------------------------------------

ns.eventFrame = CreateFrame( "Frame" )
ns.timeSinceLastUpdate, ns.curTime = 0, 0

local function OnUpdate()
	ns.curTime = GetTime()
	if ns.curTime - ns.timeSinceLastUpdate <= 3 then return end
	ns.timeSinceLastUpdate = ns.curTime
	pluginHandler:Refresh()
end

ns.eventFrame:SetScript( "OnUpdate", OnUpdate )

-- ---------------------------------------------------------------------------------------------------------------------------------

SLASH_Runes1, SLASH_Runes2 = "/runes", "/rune"

local function Slash( options )
	Settings.OpenToCategory( "HandyNotes" )
	LibStub( "AceConfigDialog-3.0" ):SelectGroup( "HandyNotes", "plugins", "Runes" )
end

SlashCmdList[ "Runes" ] = function( options ) Slash( options ) end