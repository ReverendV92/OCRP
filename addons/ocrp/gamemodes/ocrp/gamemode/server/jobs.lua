function GetTimeString(amt)
	local minutes = math.floor(amt / 60)
	local seconds = math.floor(amt % 60)
	local timestring = ""
	if minutes > 0 and seconds > 0 then
		timestring = minutes .. " minutes and " .. seconds .. " seconds."
	elseif seconds > 0 then
		timestring = seconds .. " seconds."
	elseif minutes > 0 then
		timestring = minutes .. " minutes."
	end
	return timestring
end
function DoTimeString(ply, Job)
	if Job == CLASS_POLICE and ply.OCRPData["JobCoolDown"].Police then
		local amt = ply.OCRPData["JobCoolDown"].Police - CurTime()
		ply:Hint("You cannot be a cop for another " .. GetTimeString(amt))
		return
	elseif Job == CLASS_MEDIC and ply.OCRPData["JobCoolDown"].Medic then
		local amt = ply.OCRPData["JobCoolDown"].Medic - CurTime()
		ply:Hint("You cannot be a medic for another " .. GetTimeString(amt))
		return 
	elseif Job == CLASS_FIREMAN and ply.OCRPData["JobCoolDown"].Fireman then
		local amt = ply.OCRPData["JobCoolDown"].Fireman - CurTime()
		ply:Hint("You cannot be a fireman for another " .. GetTimeString(amt))
		return
    elseif Job == CLASS_ROADCREW and ply.OCRPData["JobCoolDown"].Tow then
		local amt = ply.OCRPData["JobCoolDown"].Tow - CurTime()
		ply:Hint("You cannot be a tow truck driver for another " .. GetTimeString(amt))
        return
	elseif Job == CLASS_TAXI and ply.OCRPData["JobCoolDown"].Taxi then
		local amt = ply.OCRPData["JobCoolDown"].Tow - CurTime()
		ply:Hint("You cannot be a taxi driver for another " .. GetTimeString(amt))
        return
	end
end
util.AddNetworkString("OCRP_JobTimeString")

net.Receive("OCRP_JobTimeString" , function(len, ply)
	DoTimeString(ply, net.ReadInt(32))
end)
function OCRP_Job_Join( ply ,Job)
	if ply:Team() != CLASS_CITIZEN then
		return
	end
	if Job == CLASS_MAYOR and !ply.Mayor then
		return false
	end
	if Job == CLASS_POLICE and !ply:NearNPC( "Cop" ) then
		return false
	end
	if Job == CLASS_MEDIC and !ply:NearNPC( "Medic" ) then
		return false
	end
	if Job == CLASS_FIREMAN and !ply:NearNPC( "Fireman" ) then
		return false
	end
	if Job == CLASS_CHIEF and !ply.DueToBeChief then
		return false
	end
	if Job == CLASS_SWAT and !ply.DueToBeSWAT then
		return false
	end
    if Job == CLASS_ROADCREW and !ply:NearNPC("TowTruck") then
        return false
    end
	if Job == CLASS_TAXI and !ply:NearNPC("Taxi") then
		return false
	end
    if ply:IsBlacklisted(Job) then
		ply:Hint( "You have been blacklisted from this job. Go to the forums to appeal." )
		return
	end
    if ply:GetWarranted() >= 1 then
        ply:Hint("You can't join this job with a warrant on you.")
        return
    end
	if OCRPCfg[Job].Condition != nil then
		OCRPCfg[Job].Condition(ply)
	end
	if !ply:HasItem("item_policeradio") then
        if Job != CLASS_TAXI and Job != CLASS_ROADCREW then
            ply:GiveItem("item_policeradio")
        end
	end
	if Job == CLASS_SWAT then
		ply:BodyArmor(5)
	end
    for _,weapon in pairs(OCRPCfg[Job].Weapons) do
        ply:Give(weapon)
    end
    ply:SetTeam( Job )
--	for k, v in pairs( ply.OCRPData["Wardrobe"] ) do
    --	if tostring(v.Choice) == tostring(true) then
        --	thekey = v.Key
    --		break
--		end
--		end
    for _,item in pairs(GAMEMODE.OCRP_Items) do
        if item.Weapondata != nil and ply:HasItem(_) and item.Weapondata.Weapon != "weapon_physgun" and ply:HasWeapon(item.Weapondata.Weapon) then
            for _,wep in pairs(ply:GetWeapons()) do
                if wep:GetClass() == item.Weapondata.Weapon then
                    if wep:Clip1() > 0 then
                        wep:EmptyClip()
                    end
                end
            end
            ply:StripWeapon(item.Weapondata.Weapon)
        end
    end 
    ply.OCRPData["MyModel"] = ply:GetModel()
    for _,car in pairs(ents.FindByClass("prop_vehicle_jeep")) do
        if car:IsValid() and car:GetNWInt("Owner") > 0 then
            if car:GetNWInt("Owner") == ply:EntIndex() then
                car:Remove()
            end
        end
    end
    if Job == CLASS_POLICE then
        SV_PrintToAdmin( ply, "JOB-JOIN-POLICE" , ply:Nick() .." just became a Police Officer" )
        ply:StripAmmo()
        ply:GiveItem("item_ammo_9x19mm" ,32)
        ply:UpdateAmmoCount()
    elseif Job == CLASS_SWAT then
        SV_PrintToAdmin( ply, "JOB-JOIN-SWAT" , ply:Nick() .." just became a SWAT member" )
        ply:StripAmmo()
        ply:GiveItem("item_ammo_9x19mm" ,32)
        ply:UpdateAmmoCount()
    elseif Job == CLASS_CHIEF then
        SV_PrintToAdmin( ply, "JOB-JOIN-CHIEF" , ply:Nick() .." just became a chief of the police force" )
        ply:StripAmmo()
        ply:GiveItem("item_ammo_9x19mm" ,32)
        ply:UpdateAmmoCount()
    elseif Job == CLASS_MEDIC then
        SV_PrintToAdmin( ply, "JOB-JOIN-MEDIC" , ply:Nick() .." just became a medic" )
    elseif Job == CLASS_FIREMAN then
        local rad2 = math.random( 1 , 3 )
        NUMBER_FIREMEN = NUMBER_FIREMEN + 1
        SV_PrintToAdmin( ply, "JOB-JOIN-FIREMAN" , ply:Nick() .." just became a fireman" )
    elseif Job == CLASS_MAYOR then
        SV_PrintToAdmin( ply, "JOB-JOIN-MAYOR" , ply:Nick() .." just became the mayor" )
    elseif Job == CLASS_ROADCREW then    
        SV_PrintToAdmin(ply, "JOB-JOIN-TOW" , ply:Nick() .. " just became a tow truck driver!")
    elseif Job == CLASS_TAXI then
        SV_PrintToAdmin(ply, "JOB-JOIN-TAXI" , ply:Nick() .. " just became a taxi driver!")
    end
    ply:SetJobModel()
	ply:StripAmmo()
	ply:UpdateAmmoCount()
    
    local org = OCRP_Orgs[ply:GetOrg()]
    if org and not org.Perks[3] then
        if GAMEMODE.OCRPPerks[3].Check(ply:GetOrg()) then
            org.Perks[3] = true
            for _,member in pairs(org.Members) do
                local p = player.GetBySteamID(member.SteamID)
                if p and p:IsValid() then
                    p:Hint("Congratulations, your org has unlocked the " .. GAMEMODE.OCRPPerks[3].Name .. " perk!")
                    GAMEMODE.OCRPPerks[3].Function(p)
                end
            end
        end
    end
end

net.Receive("OCRP_Job_Join" , function(len, ply)
	OCRP_Job_Join( ply ,net.ReadInt(32))
end)

function PMETA:DoJobCoolDown()
	if self:Team() == CLASS_CITIZEN then return end
	if self:Team() == CLASS_POLICE then 
		self.OCRPData["JobCoolDown"].Police = CurTime() + 300
		timer.Simple(300 ,function() if self:IsValid() then self.OCRPData["JobCoolDown"].Police = false self:SetNWBool("JobCD_" .. tostring(CLASS_POLICE), false) end end) 
		self:Hint("You may not be a cop for 5 minutes.")
	elseif self:Team() == CLASS_MEDIC then 
		self.OCRPData["JobCoolDown"].Medic = CurTime() + 300
		timer.Simple(300 ,function() if self:IsValid() then self.OCRPData["JobCoolDown"].Medic = false self:SetNWBool("JobCD_" .. tostring(CLASS_MEDIC), false) end end) 
		self:Hint("You may not be a medic for 5 minutes.")
	elseif self:Team() == CLASS_MAYOR then 
		self.OCRPData["JobCoolDown"].Mayor = CurTime() + 300
		self:Hint("You may not run for mayor in the next election.")
    elseif self:Team() == CLASS_FIREMAN then
        self.OCRPData["JobCoolDown"].Fireman = CurTime() + 300
        self:Hint("You may not be a fireman for 5 minutes.")
        timer.Simple(300 , function() if self:IsValid() then self.OCRPData["JobCoolDown"].Fireman = false self:SetNWBool("JobCD_" .. tostring(CLASS_FIREMAN), false) end end)
    elseif self:Team() == CLASS_ROADCREW then
        self.OCRPData["JobCoolDown"].Tow = CurTime() + 300
        self:Hint("You may not be a tow truck driver for 5 minutes.")
        timer.Simple(300 , function() if self:IsValid() then self.OCRPData["JobCoolDown"].Tow = false self:SetNWBool("JobCD_" .. tostring(CLASS_ROADCREW), false) end end)
	elseif self:Team() == CLASS_TAXI then
        self.OCRPData["JobCoolDown"].Taxi = CurTime() + 300
        self:Hint("You may not be a taxi driver for 5 minutes.")
        timer.Simple(300 , function() if self:IsValid() then self.OCRPData["JobCoolDown"].Taxi = false self:SetNWBool("JobCD_" .. tostring(CLASS_TAXI), false) end end)
	end
	self:SetNWBool("JobCD_" .. tostring(self:Team()), true)
end

function PMETA:Resupply()
	if self:Team() != CLASS_CITIZEN then
		if !self:HasItem("item_policeradio") then
			self:GiveItem("item_policeradio")
            self:Hint("You have been commissioned a new radio, try not to lose it this time!")
		end
	else
		self:Hint("Only government officials can resupply here.")
	end
end

function OCRP_Job_Quit( ply )
	if ply:Team() == CLASS_CITIZEN then
		return
	end
	SV_PrintToAdmin( ply, "JOB-QUIT" , ply:Nick() .." just quit his job" )
	ply:DoJobCoolDown()
	for _,weapon in pairs( OCRPCfg[ply:Team()].Weapons) do
		if ply:HasWeapon(weapon) then
			ply:StripWeapon(weapon)
		end
	end
	
	if ply:HasWeapon("v92_heat_m3s90") then
		ply:StripWeapon("v92_heat_m3s90")
	end
	
	if ply:HasWeapon("swat_ump45_ocrp") then
		ply:StripWeapon("swat_ump45_ocrp")
	end
	
	if ply:HasItem("item_policeradio") then
		ply:RemoveItem("item_policeradio")
	end
	
		for _,item in pairs(GAMEMODE.OCRP_Items) do
			if item.Weapondata != nil and ply:HasItem(_) and item.Weapondata.Weapon != "weapon_physgun" then
				ply:Give(item.Weapondata.Weapon)
			end
		end 
	if ply:Team() == CLASS_POLICE or ply:Team() == CLASS_CHIEF  or ply:Team() == CLASS_SWAT then
		for _,ent in pairs(ents.FindByClass("gov_resupply")) do
			if ent:IsValid() then
				if ply:HasItem("item_ammo_9x19mm") then
                    ent.items["item_ammo_9x19mm"] = (ent.items["item_ammo_9x19mm"] or 0) + ply.OCRPData["Inventory"]["item_ammo_9x19mm"]
					ply:RemoveItem("item_ammo_9x19mm" ,ply.OCRPData["Inventory"]["item_ammo_9x19mm"])
				end
				if ply:HasItem("item_ammo_12gauge") then
                    ent.items["item_ammo_12gauge"] = (ent.items["item_ammo_12gauge"] or 0) + ply.OCRPData["Inventory"]["item_ammo_12gauge"]
					ply:RemoveItem("item_ammo_12gauge" ,ply.OCRPData["Inventory"]["item_ammo_12gauge"])
				end
				if ply:HasItem("item_ammo_556x45") then
                    ent.items["item_ammo_556x45"] = (ent.items["item_ammo_556x45"] or 0) + ply.OCRPData["Inventory"]["item_ammo_556x45"]
					ply:RemoveItem("item_ammo_556x45" ,ply.OCRPData["Inventory"]["item_ammo_556x45"])
				end
				if ply:HasItem("item_ammo_45acp") then
                    ent.items["item_ammo_45acp"] = (ent.items["item_ammo_45acp"] or 0) + ply.OCRPData["Inventory"]["item_ammo_45acp"]
					ply:RemoveItem("item_ammo_45acp" ,ply.OCRPData["Inventory"]["item_ammo_45acp"])
				end
				break
			end
		end
	end
	if ply:Team() == CLASS_FIREMAN then
		NUMBER_FIREMEN = NUMBER_FIREMEN - 1
	end
	if ply.OCRPData.CurCar then
		if ply.OCRPData.CurCar:IsValid() then
			ply.OCRPData.CurCar:Remove()
			ply.OCRPData.CurCar = nil
		end
	end
    
    for k,v in pairs(ents.FindByClass("prop_vehicle_jeep")) do
        if v:GetNWInt("Owner") > 0 and ply:EntIndex() == v:GetNWInt("Owner") then
            v:Remove()
        end
    end
	
	ply:SetTeam( CLASS_CITIZEN )
	ply:SetModel(ply.OCRPData["MyModel"])
	ply:StripAmmo()
	ply:UpdateAmmoCount()
end

net.Receive("OCRP_Job_Quit" , function(len, ply)
	OCRP_Job_Quit( ply )
end)

function OCRP_Job_Demote( ply, FromTeam, demoter  )
	if demoter:Team() != CLASS_MAYOR then
		if demoter:GetLevel() > 2 then 
			return
		end
	end
	local TheTeam
	if FromTeam == CLASS_CITIZEN then return end
	OCRP_Job_Quit(ply)
	if FromTeam == CLASS_POLICE then
		TheTeam = "a Police Officer"
	elseif FromTeam == CLASS_CHIEF then
		TheTeam = "the Police Chief"
	elseif FromTeam == CLASS_SWAT then
		TheTeam = "a SWAT Officer"	
	elseif FromTeam == CLASS_FIREMAN then
		TheTeam = "a Fireman"
	elseif FromTeam == CLASS_MEDIC then
		TheTeam = "an EMT"
    elseif FromTeam == CLASS_ROADCREW then
        TheTeam = "a DoT Worker"
	elseif FromTeam == CLASS_TAXI then
		TheTeam = "a Taxi Driver"
	end
	ply:Hint("You have been demoted from your job as ".. TheTeam .." by the mayor.")
	ply:Hint("If you are unsure why, ask the mayor.")
end
net.Receive("OCRP_DemotePlayer" , function(len, ply)
	for _,v in pairs(player.GetAll()) do 
		if v:Nick() == net.ReadString() then 
			OCRP_Job_Demote(v,v:Team(),ply) ply:Hint("Demoted "..v:Nick()) 
		end 
	end 
 end)

function OCRP_DEMOTE( ply, ply2 )
	if !ply:IsAdmin() then return false end
	ply:Hint("You have demoted ".. ply2:Nick() ..".")
	ply2:Hint("You have been demoted from your job by an Admin.")
	ply2:Hint("If you are unsure why, ask an Admin.")
	OCRP_Job_Quit(ply2)
end	

function PMETA:GetWarranted(  ) -- placeholder
	if self:GetNWInt("Warrant") > 0 then
		return self:GetNWInt("Warrant")
	end
	return 0
end

function PMETA:SetWarranted( Warrant ) -- placeholder
	self:SetNWInt("Warrant" ,Warrant)
	self:Hint("You have been Warranted")
end
net.Receive("OCRP_WarrantPlayer" , function(len, ply)
	local nick = net.ReadString()
	local w = net.ReadInt(32)
	if ply:Team() == CLASS_MAYOR or ply:Team() == CLASS_CHIEF then  
		for _,v in pairs(player.GetAll()) do 
			if v:Nick() == nick then 
				v:SetWarranted(w) 
				if w > 0 then 
					ply:Hint("Warranted "..v:Nick()) 
				else 
					ply:Hint("Unwarranted "..v:Nick()) 
				end 
			end  
		end 
	end 
end)

function getJobString(job)
    if job == 1 then
        return "Citizen"
    elseif job == 2 then
        return "EMT"
    elseif job == 3 then
        return "Police Officer"
    elseif job == 4 then
        return "SWAT Officer"
    elseif job == 5 then
        return "Police Chief"
    elseif job == 6 then
        return "Mayor"
    elseif job == 7 then
        return "Fireman"
    elseif job == 8 then
        return "DoT Worker"
    elseif job == 9 then
        return "Taxi Driver"
    end
    return
end

--[[concommand.Add("OCRP_Blacklist" , function(ply, cmd, args)
    if not ply:IsAdmin() then return end
    if not args[2] or not getJobString(tonumber(args[2])) then
        ply:PrintMessage(HUD_PRINTCONSOLE, "Usage: OCRP_Blacklist \"<STEAM_ID>\" <JOB ENUM>")
        ply:PrintMessage(HUD_PRINTCONSOLE, "You MUST have quotes around the STEAM ID!")
        ply:PrintMessage(HUD_PRINTCONSOLE, "The following are the job enums:")
        for i=2 ,9 do
            ply:PrintMessage(HUD_PRINTCONSOLE, "" .. getJobString(i) .. ": " .. i)
        end
        return
    end
    if not string.find(args[1], "STEAM_") then
        ply:PrintMessage(HUD_PRINTCONSOLE, "Invalid STEAM ID")
        return
    end
    if tonumber(args[2]) == 1 then
        ply:PrintMessage(HUD_PRINTCONSOLE, "You can't blacklist a player from Citizen... Who made you an admin anyways?")
        return
    end
    if player.GetBySteamID(args[1]) then
        ply:Blacklist(player.GetBySteamID(args[1]), tonumber(args[2]))
    else
        runOCRPQuery("SELECT * FROM `ocrp_users` WHERE `STEAM_ID` = "" .. ocrpdb:escape(args[1]) .. """ , function(data)
            if not data[1] then
                if ply:IsValid() then
                    ply:PrintMessage(HUD_PRINTCONSOLE, "No user found with that STEAM ID")
                end
                return
            end
            data[1]["blacklist"] = data[1]["blacklist"] or ""
            local ExplodedStr = string.Explode(";" , data[1]["blacklist"])
            local BLTable = {}
            for k,v in pairs(ExplodedStr) do
                if tonumber(v) then
                    BLTable[v] = true
                end
            end
            BLTable[args[2] ] = true
            local BLStr = ""
            for k,v in pairs(BLTable) do
                BLStr = BLStr .. k .. ";"
            end
            runOCRPQuery("UPDATE `ocrp_users` SET `blacklist` = "" .. ocrpdb:escape(BLStr) .. "" WHERE `STEAM_ID` = "".. ocrpdb:escape(args[1]) ..""" , function()
                if ply:IsValid() then
                    ply:PrintMessage(HUD_PRINTCONSOLE, data[1]["nick"] .. " blacklisted from " .. getJobString(tonumber(args[2])))
                    SV_PrintToAdmin(ply, "BLACKLIST" , "blacklisted " .. data[1]["nick"] .. "(" .. data[1]["STEAM_ID"] .. ") from " .. getJobString(tonumber(args[2])))
                end
            end)
            end , function()
                ply:Hint("Error updating blacklist in database. Retry and report if error continues.")
            end
        )
    end
end)]]

function PMETA:Blacklist( ply, FromTeam ) -- This is retarded. Why do you call admin:Blacklist(player) instead of player:Blacklist(admin) ??
	if !self:IsAdmin() then return false end
    if FromTeam == 1 then
        self:Hint("You can't blacklist a player from Citizen... Who made you an admin anyways?")
        return
    end
    local TehTxt = getJobString(FromTeam)
    ply.OCRPData["Blacklists"] = ply.OCRPData["Blacklists"] or {}
    ply.OCRPData["Blacklists"][FromTeam] = true
    self:Hint( "You have blacklisted ".. ply:Nick() .." from being a ".. TehTxt .."." )
	ply:Hint( "You have been blacklisted from being a ".. TehTxt .."." )
    SV_PrintToAdmin(self, "BLACKLIST" , "blacklisted " .. ply:Nick() .. " from " .. tehTxt)
	if ply:Team() == FromTeam then
		OCRP_Job_Quit( ply )
	end
end

function PMETA:IsBlacklisted( job )
    if job == 1 then return false end
    if self.OCRPData["Blacklists"] then
        return self.OCRPData["Blacklists"][job]
    end
	return false
end

function PMETA:UnBlacklist( ply, Team )
	if !self:IsAdmin() then return false end
    if FromTeam == 1 then
        self:Hint("You can't blacklist a player from Citizen... Who made you an admin anyways?")
        return
    end
    local TehTxt = getJobString(Team)
    ply.OCRPData["Blacklists"] = ply.OCRPData["Blacklists"] or {}
    ply.OCRPData["Blacklists"][Team] = false
	self:Hint( "You have unblacklisted ".. ply:Nick() .." from " .. TehTxt .. ".")
    self:PrintMessage(HUD_PRINTCONSOLE, "You have unblacklisted " .. ply:Nick() .. " from " .. TehTxt .. ".")
	ply:Hint( "You have been unblacklisted from ".. TheTxt .."." )
end

util.AddNetworkString("OCRP_Arrest")

concommand.Add("OCRP_Unblacklist" , function(ply, cmd, args)
    if #args < 2 then
        ply:PrintMessage(HUD_PRINTCONSOLE, "Usage: OCRP_Unblacklist \"<STEAMID>\" <JOB ENUM>")
        ply:PrintMessage(HUD_PRINTCONSOLE, "You MUST have quotes around the STEAM ID!")
        ply:PrintMessage(HUD_PRINTCONSOLE, "The following are the job enums:")
        for i=2 ,9 do
            ply:PrintMessage(HUD_PRINTCONSOLE, "" .. getJobString(i) .. ": " .. i)
        end
        return
    end
    local target = player.GetBySteamID(args[1])
    if not target or not target:IsValid() then
        ply:PrintMessage(HUD_PRINTCONSOLE, "Invalid player. Make sure you typed the STEAM ID properly and surrounded by quotes.")
        return
    end
    if args[2] == "1" then
        ply:PrintMessage(HUD_PRINTCONSOLE, "You can't change blacklist settings for the Citizen team... Who made you admin anyways?")
        return
    end
    if not getJobString(args[2]) then
        ply:PrintMessage(HUD_PRINTCONSOLE, "Invalid job enum. Type \"OCRP_Unblacklist\" to see a list of the available values.")
        return
    end
    ply:UnBlacklist(target, tonumber(args[2]))
end)
function PMETA:JailPlayer( Time, Bail, Arrester )
	if Arrester:Team() != CLASS_POLICE and Arrester:Team() != CLASS_CHIEF then return false end
	if Arrester:GetPos():Distance(self:GetPos()) > 100 then return false end
	self.Arrested = true
	self.Bail = Bail
	if self:GetWarranted() == 2 then Time = Time * 1.5 end
    net.Start("OCRP_Arrest")
    net.WriteInt(CurTime() + Time, 32)
    net.WriteInt(Bail, 32)
    net.Send(self)
	if GAMEMODE.Maps[string.lower(game.GetMap())].Jails != nil then
		local free = true
		local data = table.Random(GAMEMODE.Maps[string.lower(game.GetMap())].Jails)
			for _,objs in pairs(ents.FindInSphere(data.Position,32)) do
				if objs:IsPlayer() then
					local free = false
					break
				end
			end
		if free then
			self:SetPos(data.Position + Vector(0 ,0 ,10))
			self:SetAngles(data.Ang)
		else
			for _,data in pairs(GAMEMODE.Maps[string.lower(game.GetMap())].Jails) do
				free = true
				for _,objs in pairs(ents.FindInSphere(data.Position,32)) do
					if objs:IsPlayer() then
						local free = false
						break
					end
				end
				if free then
					self:SetPos(data.Position + Vector(0 ,0 ,10))
					self:SetAngles(data.Ang)
					break
				end
			end	
		end
	end
	SV_PrintToAdmin( self, "ARREST" , self:Nick() .." was arrested by ".. Arrester:Nick() )
	self:StripWeapons()
	
    local hasMayor = false
    for bleh,blah in pairs(player.GetAll()) do
        if blah:Team() == CLASS_MAYOR then
            hasMayor = true
        end
    end
    if hasMayor then
        for illitem,bool in pairs(GAMEMODE.IllegalItems) do
            if self:HasItem(illitem) then
                Arrester:AddMoney("Wallet" , 100)
                Arrester:Hint("You have gained $100 for arresting someone carrying Illegal weapons")
                self:RemoveItem(illitem)
				SV_PrintToAdmin(self, "ARREST-WEAPON-LOSS" , "lost a " .. illitem .. " when arrested.")
                break
            end
        end
    end
	
	if !self:GetNWBool("Handcuffed") then
		self:SetNWBool("Handcuffed" ,true)
	end
		if self:GetWarranted() >= 2 then
			Arrester:AddMoney("Wallet" , 1000)
			Arrester:Hint("You have gained $1000 for arresting a Warranted criminal")
			SV_PrintToAdmin(self, "ARREST-REWARD" , "gained $1000 for arresting a warranted criminal.")
		end
	
	--timer.Simple(Time, function() if self.Arrested then self:UnJail() end end)
	timer.Simple(Time, function ( )
		if self.Arrested then
			self:UnJail()
		end
	end);
	
	self:SetNWInt("Warrant" ,0)
end

net.Receive("OCRP_Arrest_Player" , function(len, ply1)
	local ply = player.GetByID(net.ReadInt(32))
	ply:JailPlayer(net.ReadInt(32), net.ReadInt(32), ply1)
end)

net.Receive("OCRP_Handcuffplayer" , function(len, ply) 
	if ply:Team() == CLASS_POLICE or ply:Team() == CLASS_CHIEF then 
		local player = player.GetByID(net.ReadInt(32)) 
		ply:Hint("You handcuffed "..player:Nick() .. ".") 
		player:SelectWeapon("ocrp_hands") 
		player:SetNWBool("Handcuffed" , true ) 
		SV_PrintToAdmin( ply, "HANDCUFF" , ply:Nick() .." handcuffed ".. player:Nick() )
	end 
end)

function PMETA:UnJail()
	self:Hint("You have been released from jail.")
	self.Arrested = false
	self:Spawn()
	self:SetNWBool("Handcuffed" ,false)
end

local EMETA = FindMetaTable("Entity")

function EMETA:BootCar(booter)
    if not self:IsValid() then return end
    if not self:GetClass() == "prop_vehicle_jeep" then return end
    --[[if self:IsGovCar() then
        booter:Hint("You cannot boot a government vehicle!")
        return
    end]]
    if self.Boot == true then
        self.Boot = false
        self.Booter = nil
        booter:Hint("You have unbooted this car.")
        return
    end
    local pos = self:GetPos()
    if pos.x > 440 and pos.x < 1177 then
        if pos.y > 3602 and pos.y < 4601 then
            self.Boot = true
            self.Booter = booter
            if self.rope and self.rope:IsValid() then
                self.rope:Remove()
            end
            return true
        else
            booter:Hint("You can't boot and ticket a car unless You've towed it to the dealership!")
        end
    else
        booter:Hint("You can't boot and ticket a car unless You've towed it to the dealership!")
    end
end
--setpos 6019.138672 -3176.522705 57.048531;
--setpos 3751.103760 -5057.364746 62.556919;

-- This is now part of the ticketing process through F1
--[[function BootCarPress(ply)
    if not ply:IsValid() then return end
    if ply:Team() ~= CLASS_ROADCREW then return end
    if ply.CantUse == true then return end
    ply.CantUse = true
    timer.Simple(1 , function()
        if ply:IsValid() then
            ply.CantUse = false
        end
    end)
    local tr = util.TraceLine({
        start = ply:EyePos(),
        endpos = ply:EyePos() + ply:EyeAngles():Forward() * 100 ,
        filter = function(ent)
            if ent:GetClass() == "prop_vehicle_jeep" then
                target = ent
            end
        end ,
    })
    if not target or not target:IsValid() then return end
    if target:GetPos():Distance(ply:GetPos()) > 100 then return end
    target:BootCar(ply)
end
hook.Add("ShowSpare2" , "OCRP_BootCar" , BootCarPress)]]

net.Receive("OCRP_Pay_Bail" , function(len, ply)
	ply:TakeMoney(WALLET,ply.Bail)
	Mayor_SpawnMoney(ply.Bail)
	ply:UnJail()
	ply.Bail = 0
    umsg.Start("OCRP_Arrest" , self) -- Send the arrest to the player
		umsg.Long( 0 )
		umsg.Long( 0 )
	umsg.End()
end)

net.Receive("OCRP_IllegalizeItem" , function(len, ply)
	local item1 = net.ReadString()
	if ply:Team() == CLASS_MAYOR then
		GAMEMODE.IllegalItems[item1] = tobool(net.ReadInt(2))
	end
end)