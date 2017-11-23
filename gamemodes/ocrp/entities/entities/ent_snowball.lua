
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Snowball"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Snowball Fights"
ENT.Instructions = "Throw me bitch"
ENT.Category = "OCRP"

ENT.Spawnable			= false
ENT.AdminOnly		= false 

if CLIENT then

	ENT.Rotation = 0

	function ENT:Draw()

		self:DrawModel()

		self:SetAngles(Angle(0,self.Rotation,0))

	end

	function ENT:Think()

		self.Rotation = self.Rotation + 60

	end

end

if SERVER then

	function ENT:Initialize()
		self:SetModel("models/weapons/w_snowball_thrown.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:EnableGravity(true)
		end
		//self.Trail = util.SpriteTrail(self, 0, Color(255,255,255,255), false, 15, 1, 0.2, 1/(15+1)*0.5, "trails/laser.vmt") 
	end

	function ENT:Think()
	end

	function ENT:SpawnFunction(ply, tr)
		if (!tr.Hit) then return end
		local SpawnPos = tr.HitPos + tr.HitNormal * 16
		local ent = ents.Create("ent_snowball")
		ent:SetPos(SpawnPos)
		ent:Spawn()
		ent:Activate()
		ent:SetOwner(ply)
		
		return ent
	end

	function ENT:PhysicsCollide(data)
		 local phys = self:GetPhysicsObject()
			if phys:IsValid() then
				phys:SetMass(1)
			end

		local pos = self:GetPos() --Get the position of the snowball
		local effectdata = EffectData()
		effectdata:SetStart( pos )
		effectdata:SetOrigin( pos )
		effectdata:SetScale( 1 )
		--util.Effect( "HelicopterImpact", effectdata ) -- effect
		self:EmitSound("physics/body/body_medium_impact_soft" .. math.random(1, 7) .. ".wav", 70, 100 )
		util.Effect( "inflator_magic", effectdata ) -- effect
		util.Effect( "WheelDust", effectdata ) -- effect
		util.Effect( "GlassImpact", effectdata ) -- effect
		self:Remove() --Remove the snowball
	end 

end
