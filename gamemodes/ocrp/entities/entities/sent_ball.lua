
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Bouncy Ball"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Kickballs"
ENT.Instructions = "Eat Me"
ENT.Category = "OCRP"

ENT.Spawnable			= true
ENT.AdminOnly		= true

if CLIENT then

	ENT.RenderGroup 		= RENDERGROUP_TRANSLUCENT

	local matBall = Material( "sprites/sent_ball" )

	--[[---------------------------------------------------------
	   Name: Initialize
	---------------------------------------------------------]]
	function ENT:Initialize()
		
		local i = math.random( 0, 3 )
		
		if ( i == 0 ) then
			self.Color = Color( 255, 0, 0, 255 )
		elseif ( i == 1 ) then
			self.Color = Color( 0, 255, 0, 255 )
		elseif ( i == 2 ) then
			self.Color = Color( 255, 255, 0, 255 )
		else
			self.Color = Color( 0, 0, 255, 255 )
		end
		
		self.LightColor = Vector( 0, 0, 0 )
		
	end

	--[[---------------------------------------------------------
	   Name: DrawPre
	---------------------------------------------------------]]
	function ENT:Draw()
		
		local pos = self:GetPos()
		local vel = self:GetVelocity()
			
		render.SetMaterial( matBall )
		
		local lcolor = render.GetLightColor( self:GetPos() ) * 2
		
		lcolor.x = self.Color.r * mathx.Clamp( lcolor.x, 0, 1 )
		lcolor.y = self.Color.g * mathx.Clamp( lcolor.y, 0, 1 )
		lcolor.z = self.Color.b * mathx.Clamp( lcolor.z, 0, 1 )
			
		if ( vel:Length() > 1 ) then
		
			for i = 1, 10 do
			
				local col = Color( lcolor.x, lcolor.y, lcolor.z, 200 / i )
				render.DrawSprite( pos + vel*(i*-0.005), 32, 32, col )
				
			end
		
		end
			
		render.DrawSprite( pos, 32, 32, Color( lcolor.x, lcolor.y, lcolor.z, 255 ) )
		
	end

end

if SERVER then

	// This is the spawn function. It's called when a client calls the entity to be spawned.
	// If you want to make your SENT spawnable you need one of these functions to properly create the entity
	//
	// ply is the name of the player that is spawning it
	// tr is the trace from the player's eyes 
	//
	function ENT:SpawnFunction( ply, tr )

		if ( !tr.Hit ) then return end
		
		local SpawnPos = tr.HitPos + tr.HitNormal * 16
		
		local ent = ents.Create( "sent_ball" )
			ent:SetPos( SpawnPos )
		ent:Spawn()
		ent:Activate()
		
		return ent
		
	end


	--[[---------------------------------------------------------
	   Name: Initialize
	---------------------------------------------------------]]
	function ENT:Initialize()

		// Use the helibomb model just for the shadow (because it's about the same size)
		self:SetModel( "models/Combine_Helicopter/helicopter_bomb01.mdl" )
		
		// Don't use the model's physics - create a sphere instead
		self:PhysicsInitSphere( 16, "metal_bouncy" )
		
		// Wake the physics object up. It's time to have fun!
		local phys = self:GetPhysicsObject()
		if (phys:IsValid()) then
			phys:Wake()
		end
		
		// Set collision bounds exactly
		self:SetCollisionBounds( Vector( -16, -16, -16 ), Vector( 16, 16, 16 ) )
		
	end


	--[[---------------------------------------------------------
	   Name: PhysicsCollide
	---------------------------------------------------------]]
	function ENT:PhysicsCollide( data, physobj )
		
		// Play sound on bounce
		if (data.Speed > 80 && data.DeltaTime > 0.2 ) then
			self:EmitSound( "Rubber.BulletImpact" )
		end
		
		// Bounce like a crazy bitch
		local LastSpeed = math.max( data.OurOldVelocity:Length(), data.Speed )
		local NewVelocity = physobj:GetVelocity()
		NewVelocity:Normalize()
		
		LastSpeed = math.max( NewVelocity:Length(), LastSpeed )
		
		local TargetVelocity = NewVelocity * LastSpeed * 0.9
		
		physobj:SetVelocity( TargetVelocity )
		
	end

	--[[---------------------------------------------------------
	   Name: OnTakeDamage
	---------------------------------------------------------]]
	function ENT:OnTakeDamage( dmginfo )

		// React physically when shot/getting blown
		self:TakePhysicsDamage( dmginfo )
		
	end


	--[[---------------------------------------------------------
	   Name: Use
	---------------------------------------------------------]]
	function ENT:Use( activator, caller )

		self:Remove()
		
		if ( activator:IsPlayer() ) then
		
			// Give the collecting player some free health
			local health = activator:Health()
			activator:SetHealth( health + 5 )
			activator:SendLua( "achievements.EatBall()" )
			
		end

	end

end
