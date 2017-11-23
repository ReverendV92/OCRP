
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Body Armour"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Protect your torso"
ENT.Instructions = "Wear me"
ENT.Category = "OCRP"


if CLIENT then

	ENT.Spawnable = false
	ENT.AdminOnly = false
	ENT.RenderGroup 		= RENDERGROUP_OPAQUE

	function ENT:Initialize() 
	end


	function ENT:Draw()
		if self:GetNWInt("Owner") > 0 && LocalPlayer():EntIndex() != self:GetNWInt("Owner") then 
			local ply = player.GetByID(self:GetNWInt("Owner"))
			local ply_spine1 = ply:LookupBone("ValveBiped.Bip01_Spine4")		
			local pos,ang = ply:GetBonePosition( ply_spine1 )
			local ply_spine2 = ply:LookupBone("ValveBiped.Bip01_Spine2")		
			local pos2,ang2 = ply:GetBonePosition( ply_spine2 )
			local ent_spine = self:LookupBone("ValveBiped.Bip01_Spine1")
			local ent_spine2 = self:LookupBone("ValveBiped.Bip01_Spine2")
			--self:SetBonePosition(ent_spine1,pos,ang)
			--self:SetBonePosition(ent_spine2,pos2,ang2)
			local ang = ang + Angle(75,0,90)
			self:SetPos(pos + ang:Up() * -64 + ang:Forward() * 3)
			self:SetAngles(ang)
			self:DrawModel()
		end
	end

end

if SERVER then

	function ENT:Initialize()
		self:SetModel("models/dynamicrp/items/kevlar_vest.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(0)
		self:DrawShadow( false )
	end
	function ENT:StartTouch(ent) 
	end
	function ENT:EndTouch(ent)
	end
	function ENT:AcceptInput(name,activator,caller)
	end
	function ENT:KeyValue(key,value)
	end
	function ENT:OnRemove()
	end
	function ENT:OnRestore()
	end
	function ENT:PhysicsCollide(data,physobj)
	end
	function ENT:PhysicsSimulate(phys,deltatime) 
	end
	function ENT:PhysicsUpdate(phys) 
	end
	function ENT:Touch(hitEnt) 
	end
	function ENT:UpdateTransmitState(Entity)
	end
	function ENT:Use(activator,caller)
	end

end
