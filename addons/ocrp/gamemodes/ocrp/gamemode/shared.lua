
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
-- ORANGE COSMOS ROLEPLAY
-- 
-- SHARED LUA FILE
--
-- HERE BE MONSTERS
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.Name = "Orange Cosmos RP"
GM.Author = "V92 , Jake_1305 , Noobulator, RealDope"
GM.Email = "https://discord.gg/QQmCerH"
GM.Website = "http://steamcommunity.com/groups/CultOfV92"

GM.TeamBased = false

GM.Path = "OCRP"
GM.CurrentTime = 0

--Let's add the CLASSES
CLASS_CITIZEN = 1 -- Plebs
CLASS_MEDIC = 2 -- Paramedics / EMT
CLASS_POLICE = 3 -- Police Class
CLASS_SWAT = 4 -- SWAT
CLASS_CHIEF = 5 -- Police Chief
CLASS_MAYOR = 6 -- Mayor
CLASS_FIREMAN = 7 -- Fire Brigade
CLASS_ROADCREW = 8 -- Road Crew, AKA Department of Transportation
CLASS_TAXI = 9 -- Taxi Man
--End adding CLASSES

PMETA = FindMetaTable( "Player" )
function PMETA:GetLevel() -- Workaround for assmod level system, not sure how well will work..
    local group = self:GetUserGroup()
    if group == "owner" then
        return 0
    elseif group == "superadmin" then
        return 1
    elseif group == "admin" then
        return 2
    elseif group == "elite" then
        return 3
    elseif group == "vip" then
        return 4
    else
        return 5
    end
end

function PMETA:IsBetterOrSame( ply )

	if self:GetLevel( ) <= ply:GetLevel( ) then

		return true

	end

	return false

end

hook.Add("EntityTakeDamage" , "OCRPCarTakeDamage" , function(ent, info)
    if ent:IsPlayer() and ent:IsValid() then
        if info:GetDamageType() == 17 then
            local carDamage = info:GetDamage() * 1.65
            if ent:GetVehicle() and ent:GetVehicle():IsValid() then
                ent:GetVehicle():TakeCarDamage(carDamage)
            end
        end
    end
end)

NUMBER_FIREMEN = 0

--Lets set up the teams as the following:
team.SetUp (CLASS_CITIZEN, "Citizen" , Color (34 , 180 , 0 , 255))
team.SetUp (CLASS_MEDIC, "Medic" , Color (255 , 135 , 255 , 255))
team.SetUp (CLASS_FIREMAN, "Fireman" , Color (255 , 165 , 0 , 255))
team.SetUp (CLASS_POLICE, "Police" , Color (30 ,30 ,220 , 255))
team.SetUp (CLASS_SWAT, "SWAT" , Color (50 ,50 ,140 , 255))
team.SetUp (CLASS_CHIEF, "Police Chief" , Color (50 ,50 ,255 , 255))
team.SetUp (CLASS_MAYOR, "Mayor" , Color (240 , 0 , 0 , 255))
team.SetUp (CLASS_ROADCREW, "Tow Truck Driver" , Color(196 , 200 , 0 , 255))

GM.Maps = { }
GM.Properties = { }

META = FindMetaTable( "Entity" )

function META:IsDoor()

	local class = self:GetClass();
	
	if( class == "func_door" or
		class == "func_door_rotating" or
		class == "prop_door_rotating" or
		class == "prop_vehicle_jeep") then
		
		return true;
		
	end
	
	return false;

end
 
function GM.IsRaining ( )
	return GAMEMODE.IsStorming() or GetGlobalInt("ocrp_weather" , WEATHER_NORMAL) == WEATHER_RAINY;
end

function GM.IsStorming ( )
	return GetGlobalInt("ocrp_weather" , WEATHER_NORMAL) == WEATHER_STORMY or GetGlobalInt("ocrp_weather" , WEATHER_NORMAL) == WEATHER_STORMY_HEAVY;
end

function GM:ScaleNPCDamage(npc, htigroup, info)
	if npc:GetClass() == "npc_barnacle" then
		timer.Simple(2 , function()
			if npc:Health() <= 0 then
				timer.Simple(30 , function()
					if npc:IsValid() then
						npc:Remove()
					end
				end)
			end
		end)
		return
	end
    info:ScaleDamage(0)
end

function physgunPickup( ply, ent )
	if SERVER then
	if ent:IsPlayer() then
		if ply:GetLevel() <= 2 then
			if ent:IsBetterOrSame(ply) then
				return false
			end
			ent:SetMoveType(MOVETYPE_FLY)
			ent.Physgunned = true
            ent.StopFallDamage = true
            ply.PhysgunTarget = ent
            return true
		end
    elseif ent:GetClass() == "prop_vehicle_jeep" then --or (ent:GetClass() == "prop_dynamic" and GetGlobalBool("dev_testing")) then
        if ply:GetLevel() <= 2 then
			ent:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
			return true
        end
        return false
	elseif ent:IsDoor() then
		return false
    elseif ent:GetClass() == "prop_physics_multiplayer" then
        return false
    elseif ent:GetClass() == "gas_pump" then
        return false
	elseif ent:GetClass() == "prop_ocrp" then
		return false
	elseif ent:GetClass() == "func_rotating" then
		return false
	elseif ent:GetClass() == "func_brush" then
		return false
    elseif ent:GetClass() == "drug_shroom" then
        return false
    elseif ent:GetClass() == "item_bank" then
        return false
	elseif ent:GetClass() == "gov_resupply" then
		return false
	elseif ent:GetClass() == "vendingmachines" then
        if ply:GetLevel() <= 2 or ply:Team() == CLASS_MAYOR then
            return true
        end
		return false
	elseif ent:GetClass() == "item_base" or ent:GetClass() == "ocrp_radio" then	
		if ent:GetNWInt("Class") == "item_ladder" then
			return false
		elseif ent:GetNWInt("Class") == "item_pot" then
			return false
		end
		if ply:EntIndex() != ent:GetNWInt("Owner") then
            if ply:GetLevel() <= 2 then
                return true
            end
			return false
		end
	elseif ent:GetClass() == "prop_ragdoll" then 
        if ply:GetLevel() <= 2 then
            return true
        end
		return false
	elseif ent:GetClass() == "func_button" then
		return false
	elseif ent:GetClass() == "func_movelinear" then
		return false
	elseif ent:GetClass() == "gov_resupply" then
		return false
	elseif ent:GetClass() == "prop_dynamic" then
		return false
	elseif ent:GetClass() == "func_tracktrain" then 
		return false
	elseif ent:GetClass() == "func_breakable_surf" then
		return false
	elseif ent:GetClass() == "func_rotating" then
		return false
	elseif ent:GetClass() == "func_breakable" then
		return false
	elseif ent:GetClass() == "bank_atm"  then
		if ply:Team() == CLASS_MAYOR and ent.OwnerType == "Mayor" then
			return true
		else
			return false
		end
	elseif ent.OwnerType == "Mayor" then
		if ply:Team() == ( CLASS_MAYOR or CLASS_CHIEF ) then
			return true
		else
			return false
		end
	elseif ent.OwnerType == "Chief" then
		if ply:Team( ) == ( CLASS_MAYOR or CLASS_CHIEF or CLASS_POLICE or CLASS_SWAT ) then
			return true
		else
			return false
		end
	elseif ent:IsNPC() then
		return false 
	end
	end
end

function PhysgunDrop(ply, ent)
    if ent:IsValid() and ent:IsPlayer() then
        ent.StopFallDamage = true
		ent.Physgunned = false
		ent:SetMoveType(MOVETYPE_WALK)
        timer.Simple(1.5 , function()
            ent.StopFallDamage = false
        end)
        ply.PhysgunTarget = nil
    elseif ent:IsValid() and ent:GetClass() == "prop_vehicle_jeep" then
		ent:SetCollisionGroup(COLLISION_GROUP_VEHICLE)
	elseif ent:IsValid() and ent:GetClass() == "prop_dynamic" then
		ent:SetCollisionGroup(COLLISION_GROUP_NONE)
	end
end

function fallDamage(ply, speed)
    if ply:IsValid() and ply.StopFallDamage then
        return 0
    end
end

hook.Add("GetFallDamage" , "OCRPPhysgunDmgFix" , fallDamage)

hook.Add("PhysgunDrop" , "physgunDropOCRP" , PhysgunDrop)
 
hook.Add( "PhysgunPickup" , "physgunPickupOCRP" , physgunPickup );

function PMETA:GetOrg()
	if self.Org == nil then
		return 0
	else
		return self.Org
	end
end

function PMETA:OCRP_GetCar()
	for k, v in pairs(ents.FindByClass( "prop_vehicle_jeep" )) do
		if v:GetNWInt( "Owner" ) == self:EntIndex() then
			return v
		end
	end
end

function PMETA:GetUsableIcons()
	local icons = {}
	table.insert(icons, "exclamation-red") -- Police report
	table.insert(icons, "fire-big") -- Fire report
	table.insert(icons, "bandaid") -- Ambulance report
    table.insert(icons, "traffic-cone")
	if self:Team() == CLASS_MAYOR or self:Team() == CLASS_CHIEF then
		table.insert(icons, "exclamation-circle")
	end
	if self:GetVehicle() and self:GetVehicle():IsValid() and self:GetVehicle():GetParent() and self:GetVehicle():GetParent():IsValid()
	and self:GetVehicle():GetParent():GetModel() == "models/tdmcars/crownvic_taxi.mdl" and self:GetVehicle():GetParent():GetNWInt("Client") == self:EntIndex() then
		table.insert(icons, "flag-checker")
	end
	if self:GetLevel() <= 4 then
		table.insert(icons, "store")
	end
	if self:GetOrg() ~= 0 then
		table.insert(icons, "star")
		table.insert(icons, "target")
	end
	return icons
end

function META:GetCarType()
	for _, data in pairs(GAMEMODE.OCRP_Cars) do
		if type(data.Model) == "table" then
			for a, d in pairs(data.Model) do
				if self:GetModel() == d then
					return _
				end
			end
		else
			if self:GetModel() == data.Model then
				return _
			end
		end
	end
	return "NULL"
end

function PMETA:InOrg()
	if self:InOrg() then
		if GAMEMODE.Orgs[self:GetOrg()].Type == "Org" then
			return true
		else
			return false
		end
	end
	return false
end

function PMETA:InBusiness()
	if self:InOrg() then
		if GAMEMODE.Orgs[self:GetOrg()].Type == "Business" then
			return true
		else
			return false
		end
	end
	return false
end

function PMETA:GetSex()
	if string.find( string.lower( self:GetModel() ), "female" ) then
		return "Female"
	elseif string.find( string.lower( self:GetModel() ), "male" ) then
		return "Male"
	end
end

function ModelPrinter( ply, ent )
    if not ply:IsValid() then return end
	if SERVER then
		ply.CantUse = true
		timer.Simple(0.9,function() 
        if not ply:IsValid() then return end
        ply.CantUse = false end)
	end
end
hook.Add("PhysgunDrop" , "ModelPrinter" , ModelPrinter)

function gravgunPunt( userid, target )
	return false
end
 
hook.Add( "GravGunPunt" , "gravgunPunt" , gravgunPunt )


function GetVectorTraceUp ( vec )
	local trace = {};
	trace.start = vec;
	trace.endpos = vec + Vector(0 , 0 , 999999999);
	trace.mask = MASK_SOLID_BRUSHONLY;
	
	return util.TraceLine(trace);
end

function PMETA:GetUpTrace ( )
	local ourEnt = self;
	if (self:InVehicle()) then
		ourEnt = self:GetVehicle();
	end
	
	return GetVectorTraceUp(ourEnt:GetPos());
end

function PMETA:IsOutside ( ) return self:GetUpTrace().HitSky; end
function PMETA:IsInside ( ) return !self:IsOutside(); end

-- TIME_PER_DAY 	= 60 * 60 * 3.5; // 3.5 hours is one cycle.
-- DAY_LENGTH		= 1440;

-- DAY_START		= 5 * 60; // 5 am
-- DAY_END		= 18.5 * 60; // 6:30 pm
-- DAWN			= DAY_LENGTH / 4;
-- DAWN_START	= DAWN - 144;
-- DAWN_END		= DAWN + 144;
-- NOON			= DAY_LENGTH / 2;
-- DUSK			= DAY_LENGTH - DAWN;
-- DUSK_START	= DUSK - 144;
-- DUSK_END		= DUSK + 144;

-- local nextTick = CurTime();
-- local timePerMinute = TIME_PER_DAY / DAY_LENGTH * .5;
-- MONTH_DAYS = {31 , 28 , 30 , 31 , 30 , 31 , 30 , 31 , 30 , 31 , 30 , 31};
-- CLOUD_NAMES = {"Clear Skies" , "Partly Cloudy" , "Mostly Cloudy [ PRE ]" , "Mostly Clouy [ POST ]" , "Stormy" , "Stormy [ LIGHT ]" , "Stormy [ PRE ]" , "Stormy [ SEVERE ]" , "Heat Wave"};
							 

-- local function manageTime ( )
	-- if (!GAMEMODE.CurrentTime or (SERVER and !GAMEMODE.timeEntities.shadow_control) or nextTick > CurTime()) then return; end
	-- nextTick = nextTick + timePerMinute;
	
	-- GAMEMODE.CurrentTime = GAMEMODE.CurrentTime + .5;
	-- if (GAMEMODE.CurrentTime > DAY_LENGTH) then
		-- GAMEMODE.CurrentTime = .5;
		
		-- GAMEMODE.CurrentDay = GAMEMODE.CurrentDay + 1;
		
		-- if (GAMEMODE.CurrentDay > MONTH_DAYS[GAMEMODE.CurrentMonth]) then
			-- GAMEMODE.CurrentDay = 1;
			-- GAMEMODE.CurrentMonth = GAMEMODE.CurrentMonth + 1;
			
			-- if (GAMEMODE.CurrentMonth > 12) then
				-- GAMEMODE.CurrentMonth = 1;
				-- GAMEMODE.CurrentYear = GAMEMODE.CurrentYear + 1;
				-- // Happy near years
			-- end
		-- end
		
		-- if SERVER then GAMEMODE.SaveDate(); end
	-- end
		
	-- if SERVER then GAMEMODE.progressTime(); end
-- end
-- hook.Add("Think" , "manageTime" , manageTime);

-- function GM.GetTime ( )
	-- local perHour = DAY_LENGTH / 24;
	-- local perMinute = DAY_LENGTH / 1440;
	
	-- local hours = math.floor(GAMEMODE.CurrentTime / perHour);
	-- local mins = math.floor(GAMEMODE.CurrentTime / perMinute) - hours * 60;
	
	-- return hours, mins;
-- end

function PMETA:CanSee ( Entity, Strict )
	if Strict then
		if !self:HasLOS(Entity) then return false; end
	end

	local fov = self:GetFOV()
	local Disp = Entity:GetPos() - self:GetPos()
	local Dist = Disp:Length()
	local EntWidth = Entity:BoundingRadius() * 0.5;
	
	local MaxCos = math.abs( math.cos( math.acos( Dist / math.sqrt( Dist * Dist + EntWidth * EntWidth ) ) + fov * ( math.pi / 180 ) ) )
	Disp:Normalize()

	if Disp:Dot( self:EyeAngles():Forward() ) > MaxCos and Entity:GetPos():Distance(self:GetPos()) < 5000 then
		return true
	end
	
	return false
end

local chatTypes = {}
chatTypes["//"] = "OOC"
chatTypes["/ooc"] = "OOC"
chatTypes["///"] = "LOOC"
chatTypes["/looc"] = "LOOC"
chatTypes["/taxi"] = "Emote"
chatTypes["/me"] = "Emote"
chatTypes["/help"] = "Emote"
chatTypes["/advert"] = "Advert"
chatTypes["/ad"] = "Advert"
chatTypes["/pm"] = "PM"
chatTypes["/org"] = "Org"
chatTypes["/911"] = "911"
chatTypes["/radio"] = "Gov Radio"
chatTypes["/y"] = "Yell"
chatTypes["/yell"] = "Yell"
chatTypes["/w"] = "Whisper"
chatTypes["/whisper"] = "Whisper"
chatTypes["/broadcast"] = "Broadcast"
chatTypes["/a"] = "To Admins"
chatTypes["/admin"] = "To Admins"

function GetChatType(s)

	local words = string.Explode(" " , s)
	local word1 = string.lower(words[1])
	
	local type = chatTypes[word1] or false
	
	local msg = nil
	
	if type == false then
		local char1 = string.ToTable(s)[1]
		if char1 == "/" then
			type = "Command"
			msg = s
		else
			type = "Local"
			msg = s
		end
	end
    local pmtarget = nil
    if word1 == "/pm" then
        local target = ULib.getUser(words[2], false)
        if target and target:IsValid() then
            words[2] = "(To " .. target:Nick() .. ")"
            pmtarget = target
        end
    end
	
	if not msg then
		msg = ""
		for k,v in pairs(words) do
			if k == 1 then continue end
			msg = msg .. v .. " "
		end
		msg = string.TrimRight(msg)
	end
	
	if word1 == "/taxi" then msg = "calls for a taxi." end
	if word1 == "/help" then msg = "yells for help!" end
    if word1 == "/pm" then
        return type,msg,pmtarget -- return a PM target too
    end
	
	return type,msg

end
