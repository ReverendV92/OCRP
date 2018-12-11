
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Weed"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Get High"
ENT.Instructions = "Far Out"
ENT.Category = "OCRP"

if CLIENT then

	ENT.Spawnable = false
	ENT.AdminOnly = false
	ENT.RenderGroup = RENDERGROUP_OPAQUE

	local count = 0

	function ENT:Draw()
		self:DrawModel()
	end

	function ENT:Initialize()
		self:SetModelScale(Vector(.3,.3,.3))
		timer.Simple(math.random(10,30),function() if self:IsValid() then self:Grow() end end )
	end

	function ENT:Grow()
		count = count + 1
		for _,ply in pairs(player.GetAll()) do
			if self:GetPos():Distance(ply:GetPos()) < 200 && count >= 1 then
				if ply.Stank == nil then
					ply.Stank = {Level = 1,}
				else
					ply.Stank.Level = ply.Stank.Level + 1
				end
				timer.Simple(math.random(10,30),function() if ply:IsValid() then ply:EmitScent() end end )
			end
		end
		count = 0
		if self.Ready then return end
		self:SetModelScale(self:GetModelScale() + Vector(.05,.05,.05))
		timer.Simple(math.random(10,30),function() if self:IsValid() then self:Grow() end end )
	end

	function META:EmitScent()
		local effectdata = EffectData() 
			effectdata:SetOrigin( self:LocalToWorld( Vector(0,0,self:OBBMins().z) ) ) 
			effectdata:SetAngles( self:GetForward() ) 
			effectdata:SetScale( .9 ) 

		self.SmokeTimer = self.SmokeTimer or 0

		if ( self.SmokeTimer > CurTime() ) then return end
		
		self.SmokeTimer = CurTime() + 0.0001

		local vOffset = self:LocalToWorld( Vector(0,0,self:OBBMins().z + 10) )

		local vNormal = (vOffset - self:OBBCenter()):GetNormalized()

		local emitter = ParticleEmitter( vOffset )
		
			local particle = emitter:Add( "particles/smokey", vOffset )
			particle:SetVelocity(VectorRand()*12)
			particle:SetGravity(Vector(5,5,3))
			particle:SetDieTime(math.Rand(2,4))
			particle:SetStartAlpha(math.Rand(60,70))
			particle:SetEndAlpha(0)
			particle:SetStartSize(math.Rand(9,14))
			particle:SetEndSize(math.Rand(35,45))
			particle:SetRoll(math.Rand(200,300))
			particle:SetRollDelta(math.Rand(-1,1))
			particle:SetColor(150,255,150)
			particle:SetAirResistance(5)
					
		emitter:Finish()
		
		self.Stank.Level = self.Stank.Level - 1
		if self.Stank.Level > 0 then
			timer.Simple(math.random(10,30),function() if self:IsValid() && self.Stank.Level > 0 then self:EmitScent() end end )
		end
	end

end

if SERVER then

	function ENT:Initialize()
		self:SetModel("models/props_foliage/spikeplant01.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(0)	
		self:SetColor(255,255,255,255)
		self:DrawShadow( false )
	end

	function ENT:OnTakeDamage(dmg)
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

	function ENT:Think() 
	end

	function ENT:Touch(hitEnt) 
	end

	function ENT:UpdateTransmitState(Entity)
	end

	function ENT:Use(activator,caller)
	end

end