
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Government Supply Locker"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Supply Coppers"
ENT.Instructions = "Use Me for Shit"
ENT.Category = "OCRP"

if SERVER then

	util.AddNetworkString("OCRP_ShowPoliceResupply")
	util.AddNetworkString("OCRP_WithdrawPoliceItem")

	function ENT:Initialize()
		local angles = self:GetAngles()
		local newangles = angles
		self:SetAngles(Angle(0,0,0))
		self:SetModel("models/props_lab/lockers.mdl")
		self:PhysicsInit(0)
		self:SetMoveType(0)
		self:SetSolid(SOLID_VPHYSICS)
		self:DropToFloor()
		self.LockerDoor1 = ents.Create("prop_physics")
		self.LockerDoor1:SetParent(self)
		self.LockerDoor1:SetModel("models/props_lab/lockerdoorleft.mdl")
		self.LockerDoor1:SetPos(self:GetPos() + Vector(10,0,38))
		self.LockerDoor1:SetKeyValue( "spawnflags", 8)
		self.LockerDoor1:Spawn()
		self.LockerDoor1:SetMoveType(0)
		self.LockerDoor1:SetSolid(0)
		self.LockerDoor1:SetCollisionGroup(0)
		self.LockerDoor2 = ents.Create("prop_physics")
		self.LockerDoor2:SetParent(self)
		self.LockerDoor2:SetModel("models/props_lab/lockerdoorleft.mdl")
		self.LockerDoor2:SetPos(self:GetPos() + Vector(10,-15,38))
		self.LockerDoor2:SetKeyValue( "spawnflags", 8)
		self.LockerDoor2:Spawn()
		self.LockerDoor2:SetCollisionGroup(0)
		self.LockerDoor2:SetMoveType(0)
		self.LockerDoor2:SetSolid(0)
		self.LockerDoor3 = ents.Create("prop_physics")
		self.LockerDoor3:SetParent(self)
		self.LockerDoor3:SetKeyValue( "spawnflags", 8)
		self.LockerDoor3:SetModel("models/props_lab/lockerdoorsingle.mdl")
		self.LockerDoor3:SetPos(self:GetPos() + Vector(10,16,38))
		self.LockerDoor3:Spawn()
		self.LockerDoor3:SetMoveType(0)
		self.LockerDoor3:SetCollisionGroup(0)
		self.LockerDoor3:SetSolid(0)
		self:SetAngles(newangles)
		self.items = {}
		self.items["item_ammo_9x19mm"] = 32
		self.items["item_ammo_12gauge"] = 32
		self.items["item_ammo_556x45"] = 32
		self.items["item_ammo_45acp"] = 32
	end

	function ENT:KeyValue(key,value)
	end

	function ENT:SetType(strType)
	end

	function ENT:SetAmount(varAmount)
	end

	function ENT:Use(activator, caller)
		if activator:IsPlayer() && !activator.CantUse then
			activator:Resupply()
			activator.CantUse = true
			timer.Simple(0.3, function() activator.CantUse = false end)
			if activator:Team() == CLASS_POLICE || activator:Team() == CLASS_CHIEF || activator:Team() == CLASS_SWAT  then
				net.Start("OCRP_ShowPoliceResupply")
				net.WriteTable(self.items)
				net.Send(activator)
			end
		end
	end

	net.Receive("OCRP_WithdrawPoliceItem", function(len, ply)
		if ply:Team() != CLASS_POLICE and ply:Team() != CLASS_CHIEF and ply:Team() != CLASS_SWAT then return end
		local item = net.ReadString()
		if not ply:HasRoom(item, 1) then
			ply:Hint("You don't have room for this!")
			return
		elseif ply:ExceedsMax(item, 1) then
			ply:Hint("You can't carry any more of this item!")
			return
		end
		for k,v in pairs(ents.FindByClass("gov_resupply")) do
			if v:GetPos():Distance(ply:GetPos()) < 150 then
				if v.items[item] >= 1 then
					v.items[item] = v.items[item] - 1
					ply:GiveItem(item, 1)
					net.Start("OCRP_WithdrawPoliceItem")
					net.WriteTable(v.items)
					net.Send(ply)
				end
			end
		end
	end)
	
end

if CLIENT then

	ENT.Spawnable = false
	ENT.AdminOnly = false
	function ENT:Initialize()
	end

	function ENT:Draw()
		self:DrawModel()
	end

	net.Receive("OCRP_ShowPoliceResupply", function()
		ShowPoliceResupply(net.ReadTable())
	end)

	POLICELOCKERMENU = nil

	function ShowPoliceResupply(policeItems)

		local frame = vgui.Create("OCRP_BaseMenu")
		frame:SetSize(360, 360)
		frame:SetOCRPTitle("Police Locker")
		frame:Center()
		frame:MakePopup()
		
		POLICELOCKERMENU = frame
		
		surface.SetFont("Trebuchet19")
		local textw,texth = surface.GetTextSize("Police force items.")
		
		local caption = vgui.Create("DPanel", frame)
		caption:SetSize(textw+10,texth+10)
		caption:SetPos(frame:GetWide()/2-caption:GetWide()/2, 10)
		
		function caption:Paint(w,h)
			draw.RoundedBox(8, 0, 0, w, h, Color(30,30,30,255))
			draw.DrawText("Police force items.", "Trebuchet19", 5, 5, Color(255,255,255,255), TEXT_ALIGN_LEFT)
		end
		
		local inv = vgui.Create("DPanelList", frame)
		inv:SetSize(360, frame:GetTall()-select(2, caption:GetPos())-caption:GetTall()-10)
		inv:SetPos(0, select(2, caption:GetPos())+caption:GetTall()+10)
		inv:SetPadding(10)
		inv:SetSpacing(10)
		inv:SetNoSizing(true)
		inv:EnableVerticalScrollbar(true)
		inv:EnableHorizontal(true)
		
		local pl = inv.PerformLayout
		
		function inv:PerformLayout()
			pl(self)
			self.VBar:SetTall(self:GetTall()-10)
			self.VBar:SetPos(self:GetWide() - 20, 5)
		end
		
		POLICELOCKERMENU.inv = inv
		
		PopulatePoliceResupplyInv(policeItems)

	end

	function PopulatePoliceResupplyInv(policeItems)
		
		local dummyEnt = ents.CreateClientProp("prop_physics")
		dummyEnt:SetPos(Vector(0,0,0))
		dummyEnt:Spawn()
		dummyEnt:Activate()
		POLICELOCKERMENU.inv:Clear()
		
		for item,amt in pairs(policeItems) do
			if not amt or amt == 0 then continue end
			local itemPanel = vgui.Create("DPanel")
			itemPanel:SetSize(100, 140)
			
			function itemPanel:Paint(w,h)
				draw.RoundedBox(8, 0, 0, w, h, Color(0,0,0,255))
				draw.DrawText(GAMEMODE.OCRP_Items[item].Name, "UiBold", w/2, 5, Color(255,255,255,255), TEXT_ALIGN_CENTER)
				if amt > 1 then
					draw.DrawText("x" .. amt, "UiBold", w/2, 18, Color(255,255,255,255), TEXT_ALIGN_CENTER)
				end
			end
			
			local itemMdlPanel = vgui.Create("DModelPanel", itemPanel)
			itemMdlPanel:SetSize(80, 80)
			itemMdlPanel:SetPos(5, 30)
			itemMdlPanel:SetModel(GAMEMODE.OCRP_Items[item].Model)
			itemMdlPanel:SetCursor("arrow")
			
			itemMdlPanel.OnCursorEntered = itemPanel.OnCursorEntered
			itemMdlPanel.OnCursorExited = itemPanel.OnCursorExited
			
			-- Make the angles look nice by checking them on the dummy ent
			dummyEnt:SetModel(GAMEMODE.OCRP_Items[item].Model)
			local center = dummyEnt:OBBCenter()
			local dist = dummyEnt:BoundingRadius() * 1.2
			itemMdlPanel:SetLookAt(center)
			itemMdlPanel:SetCamPos(center+Vector(dist, dist, 0))
			
			local withdraw = vgui.Create("OCRP_BaseButton", itemPanel)
			withdraw:SetSize(90, 15)
			withdraw:SetPos(5, 115)
			withdraw:SetText("Withdraw")
			
			function withdraw:DoClick()
				net.Start("OCRP_WithdrawPoliceItem")
				net.WriteString(item)
				net.SendToServer()
			end
			
			POLICELOCKERMENU.inv:AddItem(itemPanel)
		end
		
		while table.Count(POLICELOCKERMENU.inv:GetItems()) < 7 do
			local filler = vgui.Create("DPanel")
			filler:SetSize(100, 140)
			filler.Paint = function() end
			POLICELOCKERMENU.inv:AddItem(filler)
		end
		
		dummyEnt:Remove()
		
	end

	net.Receive("OCRP_WithdrawPoliceItem", function()
		if POLICELOCKERMENU and POLICELOCKERMENU:IsValid() then
			PopulatePoliceResupplyInv(net.ReadTable())
		end
	end)

end