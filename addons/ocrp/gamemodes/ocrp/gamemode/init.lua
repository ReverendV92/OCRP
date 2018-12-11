
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
-- ORANGE COSMOS ROLEPLAY
-- 
-- SERVER-SIDE INIT LUA FILE
--
-- HERE BE MONSTERS
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

RunConsoleCommand( "net_maxfilesize" , 64 )

RunConsoleCommand( "ai_ignoreplayers" , 1 )
RunConsoleCommand( "ai_disabled" , 1 )

RunConsoleCommand( "ms motd "http://steamcommunity.com/groups/CultOfV92/discussions/4/1489992080501255242/"" )

--RunConsoleCommand( "ulx_logecho" , "0" )
--RunConsoleCommand( "sv_tod" , "1" )

-- Include mysql first
include( "server/mysql_handle.lua" )

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( "shared.lua" )

-- Download File
AddCSLuaFile( "shared/sh_cfg_downloads.lua" )
include( "shared/sh_cfg_downloads.lua" )

-- Class Config File
AddCSLuaFile( "shared/sh_cfg_class.lua" )
include( "shared/sh_cfg_class.lua" )

-- NPC Dialogue Config File
AddCSLuaFile( "shared/sh_cfg_dialogue.lua" )
include( "shared/sh_cfg_dialogue.lua" )

-- RP_Rockford_v2b Config File
AddCSLuaFile( "shared/sh_cfg_map_rockford_v2b.lua" )
include( "shared/sh_cfg_map_rockford_v2b.lua" )

-- RP_EvoCity_v4b1 Config File
AddCSLuaFile( "shared/sh_cfg_map_evocity_v4b1.lua" )
include( "shared/sh_cfg_map_evocity_v4b1.lua" )

--Include shared lua files
--include( "gatekeeper.lua" )

-- [[
for _, file in pairs( file.Find( "../gamemodes/" .. GM.Path .. "/gamemode/client/*" ) or {} ) do
	if string.find( file , ".lua" ) then
		AddCSLuaFile( "client/"..file)
	end
end

for _, file in pairs( file.Find( "../gamemodes/" .. GM.Path .. "/gamemode/shared/*" ) or {} ) do
	if string.find( file , ".lua" ) then
		AddCSLuaFile( "shared/" .. file )
		print( include( "shared/" .. file ) )
	end
end

for _, file in pairs( file.Find( "../gamemodes/" .. GM.Path .. "/gamemode/server/*" ) or {} ) do
	if string.find( file , ".lua" ) then
		include( "server/" .. file )
	end
end
--]]

--AutoAdd_LuaFiles()
AddCSLuaFile( "client/voice.lua" )
--AddCSLuaFile( "client/hints.lua" )
AddCSLuaFile( "client/buddies.lua" )
AddCSLuaFile( "client/cars.lua" )
--AddCSLuaFile( "client/challenges.lua" )
AddCSLuaFile( "client/panels.lua" )
AddCSLuaFile( "client/chatbox.lua" )
AddCSLuaFile( "client/crafting.lua" )
AddCSLuaFile( "client/hud.lua" )
AddCSLuaFile( "client/identification.lua" )
AddCSLuaFile( "client/intro.lua" )
AddCSLuaFile( "client/inventory.lua" )
AddCSLuaFile( "client/mainmenu.lua" )
AddCSLuaFile( "client/mayor.lua" )
AddCSLuaFile( "client/npc_talk.lua" )
AddCSLuaFile( "client/orgs.lua" )
AddCSLuaFile( "client/professions.lua" )
AddCSLuaFile( "client/property.lua" )
AddCSLuaFile( "client/rp_main.lua" )
AddCSLuaFile( "client/rp_start.lua" )
--AddCSLuaFile( "client/scoreboard.lua" )
AddCSLuaFile( "client/shops.lua" )
AddCSLuaFile( "client/skills.lua" )
AddCSLuaFile( "client/searching.lua" )
AddCSLuaFile( "client/trading.lua" )
AddCSLuaFile( "client/looting.lua" )
AddCSLuaFile( "client/chief.lua" )
AddCSLuaFile( "client/disguise.lua" )
AddCSLuaFile( "client/fines.lua" )
AddCSLuaFile( "client/derma_base.lua" )
AddCSLuaFile( "shared/sh_cars.lua" )
include( "shared/sh_cars.lua" )
--AddCSLuaFile( "shared/sh_challenges.lua" )
--include( "shared/sh_challenges.lua" )
AddCSLuaFile( "shared/sh_config.lua" )
include( "shared/sh_config.lua" )
AddCSLuaFile( "shared/sh_crafting.lua" )
include( "shared/sh_crafting.lua" )
AddCSLuaFile( "shared/sh_items.lua" )
include( "shared/sh_items.lua" )
AddCSLuaFile( "shared/sh_mayor_events.lua" )
include( "shared/sh_mayor_events.lua" )
AddCSLuaFile( "shared/sh_chief_items.lua" )
include( "shared/sh_chief_items.lua" )
AddCSLuaFile( "shared/sh_mayor_items.lua" )
include( "shared/sh_mayor_items.lua" )
AddCSLuaFile( "shared/sh_models.lua" )
include( "shared/sh_models.lua" )
AddCSLuaFile( "shared/sh_shops.lua" )
include( "shared/sh_shops.lua" )
AddCSLuaFile( "shared/sh_skills.lua" )
AddCSLuaFile( "client/minimap.lua" )
include( "shared/sh_skills.lua" )
AddCSLuaFile( "shared/sh_orgperks.lua" )
include( "shared/sh_orgperks.lua" )

--include( "server/Storage.lua" )
include( "server/buddies.lua" )
include( "server/cars.lua" )
include( "server/challenges.lua" )
include( "server/chat.lua" )
--include( "server/blacklist.lua" )
include( "server/crafting.lua" )
--include( "server/weather.lua" )
--include( "server/time.lua" )
--include( "server/database.lua" )
include( "server/death.lua" )
include( "server/inventory.lua" )
include( "server/jobs.lua" )
include( "server/searching.lua" )
include( "server/loading.lua" )
include( "server/map.lua" )
include( "server/mayor_events.lua" )
include( "server/chief.lua" )
include( "server/messages.lua" )
include( "server/money.lua" )
include( "server/newuser.lua" )
include( "server/npcs.lua" )
include( "server/orgs.lua" )
include( "server/player.lua" )
include( "server/player_models.lua" )
include( "server/professions.lua" )
include( "server/property.lua" )
include( "server/saving.lua" )
include( "server/shops.lua" )
include( "server/skills.lua" )
include( "server/trading.lua" )
include( "server/afkmanagement.lua" )
include( "server/looting.lua" )
include( "server/disguise.lua" )
--include( "server/day_night.lua" )
include( "server/netmessages.lua" )
include( "server/fines.lua" )

util.AddNetworkString("OCRP_Add_Gas")

function VNTJoinCommand( pl, text, teamonly )
	if (text == "!steam") then 
		pl:SendLua([[gui.OpenURL("http://steamcommunity.com/groups/CultOfV92/discussions/4/1489992080501255242/")]]) -- Change ADDRESS to your chosen page.
		for k, v in pairs(player.GetAll()) do 
			v:ChatPrint( "" .. pl:Nick() .. " has joined our Steam group via !steam." )
		end
	end
	if (text == "!discord") then 
		pl:SendLua([[gui.OpenURL("https://discord.gg/QQmCerH")]]) -- Change ADDRESS to your chosen page.
		for k, v in pairs(player.GetAll()) do 
			v:ChatPrint( "" .. pl:Nick() .. " has joined our Discord via !discord." )
		end
	end
end
hook.Add( "PlayerSay" , "Chat" , VNTJoinCommand )

function Map_Initialize()

    local map = GAMEMODE.Maps[string.lower(game.GetMap())]
    local properties = GAMEMODE.Properties[string.lower(game.GetMap())]
    
    if map then
        
        for _,data in pairs(map.AddObjs) do
            local obj = ents.Create(data.Class)
            if not obj then continue end
            
            if data.Model then
                obj:SetModel(data.Model)
            end
            if data.Skin then
                obj:SetSkin(data.Skin)
            end
            if data.Hide then
                obj:SetRenderMode(RENDERGROUP_TRANSLUCENT)
                obj:SetColor(Color(0 ,0 ,0 ,0))
            end
            obj:SetPos(data.Pos)
            obj:SetAngles(data.Angles)
            obj:Spawn()
            if data.Activate then
                obj:Activate() -- enables physics
            end
        end
        
        if map.Function != nil then
            map.Function()
        end	
        
    end

    for k,v in pairs(ents.GetAll()) do
        if not v or not v:IsValid() then continue end
        if v:GetClass() == "item_healthcharger" or v:GetClass() == "prop_physics" or v:GetClass() == "func_brush" then
            if v:GetModel() != "models/extras/info_speech.mdl" then
                v:Remove()
            end
        end
        if v:GetClass() == "prop_physics_multiplayer" then
            v:SetMoveType(MOVETYPE_NONE)
        end
        if v:GetClass() == "prop_door_rotating" or v:GetClass() == "func_door" or v:GetClass() == "func_door_rotating" then
            v:SetNWBool("UnLocked" , true)
            v.Permissions = {}
            v.Permissions["Buddies"] = false
            v.Permissions["Org"] = false
            v.Permissions["Government"] = false
            v.Permissions["Mayor"] = false
        end
        
        local id = v:MapCreationID()
        if map then
            
            if map.Remove[id] then v:Remove() continue end	
            
            if map.UnOwnable[id] then
                v.UnOwnable = -1
                v.Permissions = {}
                v.Permissions["Buddies"] = false
                v.Permissions["Org"] = false
                v.Permissions["Government"] = true
                v.Permissions["Mayor"] = true
            end
            
            if map.ActUnOwnable[id] then
                v.UnOwnable = -4
                v.Permissions = {}
                v.Permissions["Buddies"] = false
                v.Permissions["Org"] = false
                v.Permissions["Government"] = false
                v.Permissions["Mayor"] = false
            end
            
            if map.Police[id] then
                v.UnOwnable = -2
                v.Permissions = {}
                v.Permissions["Buddies"] = false
                v.Permissions["Org"] = false
                v.Permissions["Government"] = true
                v.Permissions["Mayor"] = true
            end
            
            if map.Public[id] then
                v.UnOwnable = -3
                v.Permissions = {}
                v.Permissions["Buddies"] = false
                v.Permissions["Org"] = false
                v.Permissions["Government"] = false
                v.Permissions["Mayor"] = false
            end
            
            if map.Locked[id] then
                v:SetNWBool("UnLocked" , false)
                v:Fire("Lock")
            end
            
            if map.Open[id] then
                v:Fire("Open")
            end
            
		end
        
        if properties then
            for key,data in pairs(properties) do
                for doorID,_ in pairs(data.Doors) do
                    if doorID == id then
                        v.PropertyKey = key
                    end
                end
            end
        end
        
    end

    RunConsoleCommand("ai_ignoreplayers" , 1)
    RunConsoleCommand("mp_falldamage" , 1)
end
hook.Add( "Initialize" , "Map_Initialize" , function() timer.Simple(1 , Map_Initialize) end);

GM.Jails = GM.Maps[string.lower(tostring(game.GetMap()))].Jails
GM.SpawnsCitizen = GM.Maps[string.lower(tostring(game.GetMap()))].SpawnsCitizen

local ClientResources = 0
--[[local function ProcessFolder ( Location )
    local files, dirs = file.Find(Location .. "*" , "GAME")
    for k,v in pairs(dirs) do
		if v == "snow" or v == "rain" then
			continue
		end
        ProcessFolder(Location .. v .. "/")
    end
    for k,v in pairs(files) do
		if !string.find(Location, ".db" ) then
            local fakeLocation = string.gsub(Location, "addons/ocrp%-content/" , "")
			ClientResources = ClientResources + 1;
			resource.AddSingleFile(fakeLocation .. v);
		end
	end
end]]

-- if !game.SinglePlayer() then
	-- ProcessFolder("gamemodes/" .. GM.Path .. "/content/materials/" );
	-- ProcessFolder("gamemodes/" .. GM.Path .. "/content/models/" );
	-- ProcessFolder("gamemodes/" .. GM.Path .. "/content/resource/" );
	-- ProcessFolder("gamemodes/" .. GM.Path .. "/content/sound/" );
	-- ProcessFolder("addons/ocrp_content/materials/" )
	-- ProcessFolder("addons/ocrp_content/models/" )
	-- ProcessFolder("addons/ocrp_content/resource/" )
	-- ProcessFolder("addons/ocrp_content/sound/" )
-- end

--[[timer.Simple(5 , function()
	if string.lower(game.GetMap()) == "rp_evocity2_v2p" then
		local newsent = ents.Create("news")
		newsent:SetPos( Vector(-567 ,-2448 ,182) )
		newsent:SetAngles( Angle( 0 , 90 , 0 ) )
		newsent:Spawn()
		
		local ocrplogoent = ents.Create("ocrp_logo")
		ocrplogoent:SetPos( Vector(-714 ,555 ,247) )
		ocrplogoent:SetAngles( Angle( 0 , 0 , 0 ) )
		ocrplogoent:Spawn()
	elseif string.lower(game.GetMap()) == "rp_cosmoscity_v1b" then
	--[[	local newsent = ents.Create("news")
		newsent:SetPos( Vector(-567 ,-2448 ,182) )
		newsent:SetAngles( Angle( 0 , 90 , 0 ) )
		newsent:Spawn()
		
		local ocrplogoent = ents.Create("ocrp_logo")
		ocrplogoent:SetPos( Vector(5 , -5 , 372) )
		ocrplogoent:SetAngles( Angle( 0 , 0 , 0 ) )
		ocrplogoent:Spawn()	
		
		local ocrplogoent1 = ents.Create("ocrp_logo")
		ocrplogoent1:SetPos( Vector(5 , -5 , 372) )
		ocrplogoent1:SetAngles( Angle( 0 , 180 , 0 ) )
		ocrplogoent1:Spawn()	
	else
		local newsent = ents.Create("news")
		newsent:SetPos( Vector(-7189, -9231 , 240) )
		newsent:SetAngles( Angle( 0 , 90 , 0 ) )
		newsent:Spawn()

		local ocrplogoent = ents.Create("ocrp_logo")
		ocrplogoent:SetPos( Vector(-3575 , -6487 , 362 ) )
		ocrplogoent:SetAngles( Angle( 0 , 0 , 0 ) )
		ocrplogoent:Spawn()
	end
end)]]
--include( "shared/sh_challenges.lua" )

local RadioStations = {};

function AddRadio( Name, URL )
	table.insert(RadioStations, {Name, URL})
end

function ChangeRadio( ply )
	local Radio
		
	if ply:InVehicle() then

		if ply:GetVehicle().NotDriver then
			return false
		end
	
		Radio = ply:GetVehicle()
	end
	
	if !Radio then
		local EyeTrace = ply:GetEyeTrace();
		
		if !IsValid(EyeTrace.Entity) then
			ply:Hint("Look at a radio to change the station.")
			return false;
		end
		
		if EyeTrace.Entity:GetModel() != "models/props/cs_office/radio.mdl" then
		-- if EyeTrace.Entity:GetModel() != Model( "models/valve/props_italian/gramophone.mdl" ) then

			ply:Hint( "This is not a radio." )
			return false;

		end
		
		if EyeTrace.HitPos:Distance(ply:GetShootPos()) >= 200 then
			ply:Hint("You need to be closer to change the station.")
			return false;
		end
		
		if ply != player.GetByID(EyeTrace.Entity:GetNWInt("Owner")) then
			ply:Hint("You need to be the owner of this radio to change station.")	
			return false
		end
		
		Radio = EyeTrace.Entity;
	end
	 
	local CurStation = Radio:GetNetworkedInt("ocrp_station" , 0);
	
	local NewStation = CurStation + 1;
	if NewStation > table.Count(RadioStations) then NewStation = 0; end
	
	if NewStation == 0 then
		umsg.Start("ocrp_radio" , ply);
			umsg.String("Off" );
		umsg.End();
	else
		umsg.Start("ocrp_radio" , ply);
			umsg.String(RadioStations[NewStation][1]);
		umsg.End();
	end
	
	Radio:SetNetworkedInt("ocrp_station" , NewStation)
end

AddRadio("Steampunk Radio" , "http://www.steampunkradio.com/steampunkradio.pls" );
-- AddRadio("92.1 Buzz" , "http://scfire-mtc-aa05.stream.aol.com:80/stream/1022" );
-- AddRadio("94.5 JazzNation" , "http://sj128.hnux.com");
-- AddRadio("97.7 Hitz" , "http://scfire-dtc-aa02.stream.aol.com:80/stream/1074" );
-- AddRadio("98.5 Dubstep FM" , "http://www.dubstep.fm/listen.pls" );
-- AddRadio("100.1 Top 100 Germany" , "http://188.72.209.72:80" ); 
-- AddRadio("102.6 GoldSkool 50-60" , "http://208.53.158.48:8362" );
-- AddRadio("103.4 Cosmos FM" , "http://208.115.201.98:9988" );
-- AddRadio("105.1 Super 90"s" , "http://uplink.duplexfx.com:8012/" );
-- AddRadio("106.4 BoomJah FM" , "http://174.37.61.231:8098");
-- AddRadio("107.2 Reggae Roots" , "http://91.121.150.156:7002/" );
-- AddRadio("108.1 Hot Jamz" , "http://scfire-mtc-aa02.stream.aol.com:80/stream/1071" );
GM.SnowOnGround = false
