
AddCSLuaFile( )

------------------------------------------------------
--	V92 Base Specialties							--
--	Unarmed Hands									--
------------------------------------------------------

SWEP.Spawnable = true -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable

------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------

SWEP.Settings.Weapon = "v92_ocrp_hands" -- (String) Name of the weapon script
SWEP.WeaponEntityName = "v92_ocrp_hands" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.PrintName = "Hands" -- (String) Printed name on menu
SWEP.Category = "OCRP" -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Slot = 0 -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = 8 -- (Integer) Bucket position
SWEP.ViewModelFOV = 90 -- (Integer) First-person field of view
SWEP.DrawWeaponInfoBox = true -- (Boolean) Draw a verbose info box in the HUD buckets
SWEP.BounceWeaponIcon = false -- (Boolean) This causes that annoying icon bounce effect used on the Tool Gun
SWEP.DrawAmmo = false -- (Boolean) Draw our ammo, you can change this is it doesn't use ammo or you're hardcore
SWEP.DrawCrosshair = true -- (Boolean) You can change this is you're a git who can't aim
SWEP.AutoSwitchTo = false -- (Boolean) Auto-switch to this weapon when picked up? Leave to false - PLEASE
SWEP.AutoSwitchFrom = true -- (Boolean) Auto-switch away from this weapon when you pickup a new gun? Leave at false - PLEASE

------------------------------------------------------
--	Setup Clientside Info							--	This block must be in every weapon!
------------------------------------------------------
if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.Settings.Weapon )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.Settings.Weapon , SWEP.PrintName )
	killicon.Add( SWEP.Settings.Weapon , "vgui/entities/" .. SWEP.Settings.Weapon , Color( 255 , 255 , 255 ) )
end

SWEP.Weight = 0
SWEP.UseHands = true
SWEP.ViewModel = Model( "models/jessev92/weapons/unarmed_c.mdl" )
SWEP.WorldModel = ""
SWEP.HoldType = "normal"
SWEP.Primary.Ammo = "none"
SWEP.Primary.ClipSize = -1
SWEP.Primary.Recoil	= 2
SWEP.Primary.Damage = 8
SWEP.Primary.Delay = 0.7
SWEP.Primary.Range = 80
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Automatic = false
SWEP.Secondary.ClipSize = -1
local KnockDelay = CurTime( )
local FallCheckTimer = 0.3

function SWEP:AnimationPlayback( Animation )

	local anim = self.Owner:GetViewModel( ):LookupSequence( Animation )
	self.Owner:GetViewModel( ):SendViewModelMatchingSequence( anim )
	self.Owner:GetViewModel( ):SetCycle( 0 )

end

hook.Add( "CalcMainActivity" , "Unarmed_Anims" , function( ply , vel )

	if CLIENT then

		usermessage.Hook( "Unarmed_Anims" , function( um )

			local ply2 = um:ReadEntity()
			local anim = um:ReadString()

			if not IsValid( ply2 ) or not ply2:IsPlayer( ) then return end

			if anim == "1" then

				ply2:AnimRestartGesture( GESTURE_SLOT_JUMP , ACT_HL2MP_JUMP_ANGRY , false )

			elseif anim == "2" then

				ply2:AnimRestartGesture( GESTURE_SLOT_ATTACK_AND_RELOAD , ACT_HL2MP_RUN_FAST , false )

			elseif anim == "3" then

				ply2:AnimRestartGesture( GESTURE_SLOT_ATTACK_AND_RELOAD , ACT_GMOD_IN_CHAT , true )

			end

		end )

	end

end )

function SWEP:Think()

	if IsValid( self ) and IsValid(self.Owner) then

		local vm = self.Owner:GetViewModel()

		-- in noclip
		if self.Owner:GetMoveType() == 8 then

			vm:ResetSequence( vm:LookupSequence( "jump" ) )

		-- If on ladder
		elseif self.Owner:GetMoveType() == 9 then
			
			-- if moving
			if self.Owner:KeyDown( IN_FORWARD or IN_BACK )  then

				-- climb ladder sequence
				vm:ResetSequence( vm:LookupSequence( "ladder_climb" ) )
				
			else

				-- climb ladder sequence
				vm:ResetSequence( vm:LookupSequence( "ladder_idle" ) )
				
			end

		-- not in noclip
		else

			-- If swimming
			if self.Owner:WaterLevel( ) >= 2 then

				-- if moving
				if self.Owner:KeyDown( IN_FORWARD or IN_MOVELEFT or IN_MOVERIGHT or IN_BACK )  then

					-- and sprinting
					if self.Owner:KeyDown( IN_SPEED ) then

						-- swimming fast
						vm:ResetSequence( vm:LookupSequence( "swimming_fast" ) )

					-- not sprinting
					else

						-- swim slow
						vm:ResetSequence( vm:LookupSequence( "swimming" ) )

					end

				-- not moving
				else

					-- just be
					vm:ResetSequence( vm:LookupSequence( "swimming_floating" ) )
					
				end

			-- in ankle water or not in water
			elseif self.Owner:WaterLevel( ) < 2 then

				-- on ground
				if self.Owner:OnGround( ) then

					-- use key
					if self.Owner:KeyDown( IN_USE ) then

						vm:ResetSequence( vm:LookupSequence( "use" ) )
						self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_ITEM_GIVE )

					elseif self.Owner:KeyPressed( IN_DUCK ) then

						-- if side velocity is up
						if self.Owner:GetVelocity( ).x < -25 or self.Owner:GetVelocity( ).y < -25 then

							-- slide sequence
							vm:ResetSequence( vm:LookupSequence( "slide" ) )

						elseif self.Owner:GetVelocity( ).x > 25 or self.Owner:GetVelocity( ).y > 25 then

							-- slide sequence
							vm:ResetSequence( vm:LookupSequence( "slide_crouch" ) )

						end
					
					-- move keys
					elseif self.Owner:KeyDown( IN_FORWARD ) or self.Owner:KeyDown( IN_BACK )  then

						-- velocity > walkspeed variable

						if self.Owner:KeyDown(IN_SPEED) and self.Owner:GetVelocity():Length() > self.Owner:GetWalkSpeed() and self.Owner:GetMoveType() == 2 then

							if SERVER then

								if not self.UserMessageSent then

									umsg.Start( "Unarmed_Anims" )

										umsg.Entity( self.Owner )
										umsg.String( "2" )

									umsg.End( )

									self.UserMessageSent = true

								end

								timer.Create( "unarmed_reset" .. self:EntIndex( ) , 0.02 , 1 , function( )

									umsg.Start( "Unarmed_Anims" )

											umsg.Entity( self.Owner )

											umsg.String( "3" )

									umsg.End( )

									self.UserMessageSent = false

								end )

							end

							-- sprinting
							vm:ResetSequence( vm:LookupSequence( "sprint" ) )

						else
					
							-- sprinting
							-- print( "Hands: ON LAND; SPRINT" )
							vm:ResetSequence( vm:LookupSequence( "idle" ) )

						end

					else

						-- print( "Hands: OTHER; IDLE" )
						vm:ResetSequence( vm:LookupSequence( "idle" ) )	

					end

				else

					if self.Owner:GetVelocity().z > 10 then

						vm:ResetSequence( vm:LookupSequence( "jump_init" ) )

					elseif self.Owner:GetVelocity().z < -250 and self.Owner:GetVelocity().z >= -500 then

						vm:ResetSequence( vm:LookupSequence( "falling_slow" ) )

					elseif self.Owner:GetVelocity().z < -500 and self.Owner:GetVelocity().z >= -750 then

						vm:ResetSequence( vm:LookupSequence( "falling" ) )

					elseif self.Owner:GetVelocity().z < -750 then

						vm:ResetSequence( vm:LookupSequence( "falling_fast" ) )

					else

						vm:ResetSequence( vm:LookupSequence( "jump" ) )
						
					end

				end

			else

				-- print( "Hands: OTHER; IDLE" )
				vm:ResetSequence( vm:LookupSequence( "idle" ) )	

			end

		end

	end

end

function SWEP:Initialize( )

	self:SetHoldType( self.HoldType )

end

function SWEP:CanPrimaryAttack( )

	return true

end

function SWEP:PrimaryAttack( )

	if IsValid( self ) and IsValid( self.Owner ) then

		if not self:CanPrimaryAttack() then return end
		if self.Owner:GetNWBool("Handcuffed") then return end
		if not IsFirstTimePredicted() then return end

		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		
		local trace = util.GetPlayerTrace(self.Owner)
		local tr = util.TraceLine(trace)
		local EyeTrace = self.Owner:GetEyeTrace();

		if !self.Hidden then
			if self.Owner:GetNWInt("Energy") < 3 then return end
			self:SendWeaponAnim(ACT_VM_HITCENTER)
			self.Owner:SetAnimation(PLAYER_ATTACK1)
			self:EmitSound("npc/vort/claw_swing" .. math.random(1, 2) .. ".wav");
			if SERVER then
				self.Owner:SetNWInt("Energy",self.Owner:GetNWInt("Energy") - 3)
			end
			if (self.Owner:GetPos() - tr.HitPos):Length() <= self.Primary.Range then
				self.Owner:ViewPunch(Angle(math.Rand(-3,3) * self.Primary.Recoil,math.Rand(-3,3) * self.Primary.Recoil,0))
				if tr.HitNonWorld then
					if SERVER then 
						if tr.Entity:IsPlayer() then
							local dmg = self.Primary.Damage
							if self.Owner:HasSkill("skill_str",1) then
								dmg = dmg * 1.25
								if self.Owner:HasSkill("skill_str",3) then
									dmg = dmg * 1.25
								end
							end
							tr.Entity:TakeDamage(dmg,self.Owner) 
						end
					end				
					if tr.Entity:IsPlayer() then
						self:EmitSound("physics/flesh/flesh_impact_bullet" .. math.random(1, 5) .. ".wav")
						util.Decal("Blood",tr.HitPos + tr.HitNormal,tr.HitPos - tr.HitNormal)
						if SERVER then self:SpawnBlood(tr) end
					end
				elseif EyeTrace.HitWorld then
						self:EmitSound("physics/flesh/flesh_impact_hard" .. math.random(1, 5) .. ".wav");
			
						return false;
				end
			end
		else
			if (self.Owner:GetPos() - tr.HitPos):Length() <= self.Primary.Range then
				if tr.HitNonWorld then
					if SERVER then 
						if tr.Entity:IsDoor() then
							tr.Entity:EmitSound("physics/wood/wood_crate_impact_hard3.wav",100,math.random(95,110))
						elseif tr.Entity:IsPlayer() then
							tr.Entity:SetVelocity(self.Owner:EyeAngles():Forward() * 200 + self.Owner:EyeAngles():Up() * 40 )
							tr.Entity:ViewPunch(Angle(math.Rand(-3,3) * self.Primary.Recoil,math.Rand(-3,3) * self.Primary.Recoil,0))
						end
					end				
				end
			end	
		end
		local Trace = util.GetPlayerTrace( self.Owner )
		local TraceResult = util.TraceLine( Trace )
		local vm = self.Owner:GetViewModel()

		if TraceResult.HitSky then return false end

		if ( self.Owner:GetPos( ) - TraceResult.HitPos ):Length( ) < 25 then

			vm:ResetSequence( vm:LookupSequence( "knock" ) )	
			-- self:PlayRandomSequence( "knock" )
			
			local KnockSoundType = KnockSoundType or "VNT.Unarmed.Knock"
			
			if TraceResult.MatType == ( MAT_ALIENFLESH or MAT_ANTLION or MAT_BLOODYFLESH or MAT_FLESH or MAT_EGGSHELL ) then

				KnockSoundType = "VNT.Unarmed.KnockFlesh"

			elseif TraceResult.MatType == ( MAT_COMPUTER or MAT_PLASTIC or MAT_TILE ) then

				KnockSoundType = "VNT.Unarmed.KnockManufactured"

			elseif TraceResult.MatType == ( MAT_METAL or MAT_VENT or MAT_GRATE ) then

				KnockSoundType = "VNT.Unarmed.KnockMetal"

			elseif TraceResult.MatType == ( MAT_FOLIAGE or MAT_WOOD ) then

				KnockSoundType = "VNT.Unarmed.KnockWood"

			elseif TraceResult.MatType == ( MAT_GLASS ) then

				KnockSoundType = "VNT.Unarmed.KnockGlass"

			else

				KnockSoundType = "VNT.Unarmed.Knock"

			end
				
			timer.Simple( 0.1 , function( )

				self:EmitSound( KnockSoundType )

			end )

			timer.Simple( 0.3 , function( )

				self:EmitSound( KnockSoundType )

			end )

			timer.Simple( 0.5 , function( )

				self:EmitSound( KnockSoundType )

			end )

			self:SetNextPrimaryFire( CurTime() + 3 )
			
		end
		
	end

end

function SWEP:CanSecondaryAttack( )

	return true

end

function SWEP:SecondaryAttack( )

	if self.Owner:GetNWBool("Handcuffed") then return end

	if not IsFirstTimePredicted() then return end

	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)

	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)

	if !self.Hidden then 

		self.HoldType = "normal"

		timer.Simple(0.25,function()  self:SetHoldType(self.HoldType) end)

		if SERVER then

			self.Owner:DrawViewModel(false)

		end

		self.Hidden = true

		return 

	else

		self:SendWeaponAnim(ACT_VM_DRAW)

		self.HoldType = "melee" 

		timer.Simple(0.25,function() self:SetHoldType(self.HoldType) end)

		if SERVER then

			self.Owner:DrawViewModel(true)

		end

		self.Hidden = false

		return 

	end

end

function SWEP:Reload( )

	if self.Owner:GetNWInt( "Energy" ) >= 1 then

	end

end

function SWEP:Deploy( )

	if IsValid( self ) and IsValid( self.Owner ) then

		local vm = self.Owner:GetViewModel()

		vm:ResetSequence( vm:LookupSequence( "Idle" ) )	

	end

end

function SWEP:OnDrop( )

	if IsValid( self ) then

		self:Remove( )

	end

end

function SWEP:SpawnBlood( tr )

	local effectdata = EffectData( )
	effectdata:SetOrigin( tr.HitPos )
	effectdata:SetNormal( tr.HitNormal )
	util.Effect( "bodyshot" , effectdata )
	util.Decal( "Blood" , tr.HitPos + tr.HitNormal , tr.HitPos - tr.HitNormal )

end

sound.Add( { ["name"] = "VNT.Unarmed.Knock" ,
	["channel"] = CHAN_BODY ,
	["level"] = 75 ,
	["volume"] = 1 ,
	["pitch"] = { 85, 115 } ,
	["sound"] = { 
		"physics/concrete/rock_impact_hard1.wav" ,
		"physics/concrete/rock_impact_hard2.wav" ,
		"physics/concrete/rock_impact_hard3.wav" ,
		"physics/concrete/rock_impact_hard4.wav" ,
		"physics/concrete/rock_impact_hard5.wav" ,
		"physics/concrete/rock_impact_hard6.wav" ,
	} ,
} )

sound.Add( { ["name"] = "VNT.Unarmed.KnockFlesh" ,
	["channel"] = CHAN_BODY ,
	["level"] = 75 ,
	["volume"] = 1 ,
	["pitch"] = { 85, 115 } ,
	["sound"] = { 
		"physics/flesh/flesh_impact_hard1.wav" ,
		"physics/flesh/flesh_impact_hard2.wav" ,
		"physics/flesh/flesh_impact_hard3.wav" ,
		"physics/flesh/flesh_impact_hard4.wav" ,
		"physics/flesh/flesh_impact_hard5.wav" ,
		"physics/flesh/flesh_impact_hard6.wav" ,
	} ,
} )

sound.Add( { ["name"] = "VNT.Unarmed.KnockManufactured" ,
	["channel"] = CHAN_BODY ,
	["level"] = 75 ,
	["volume"] = 1 ,
	["pitch"] = { 85, 115 } ,
	["sound"] = { 
		"physics/plastic/plastic_box_impact_hard1.wav" ,
		"physics/plastic/plastic_box_impact_hard2.wav" ,
		"physics/plastic/plastic_box_impact_hard3.wav" ,
		"physics/plastic/plastic_box_impact_hard4.wav" ,
	} ,
} )

sound.Add( { ["name"] = "VNT.Unarmed.KnockMetal" ,
	["channel"] = CHAN_BODY ,
	["level"] = 75 ,
	["volume"] = 1 ,
	["pitch"] = { 85, 115 } ,
	["sound"] = { 
		"physics/metal/metal_box_impact_soft1.wav" ,
		"physics/metal/metal_box_impact_soft2.wav" ,
		"physics/metal/metal_box_impact_soft3.wav" ,
	} ,
} )

sound.Add( { ["name"] = "VNT.Unarmed.KnockWood" ,
	["channel"] = CHAN_BODY ,
	["level"] = 75 ,
	["volume"] = 1 ,
	["pitch"] = { 85, 115 } ,
	["sound"] = { 
		"physics/wood/wood_crate_impact_hard2.wav" ,
		"physics/wood/wood_crate_impact_hard3.wav" ,
	} ,
} )

sound.Add( { ["name"] = "VNT.Unarmed.KnockGlass" ,
	["channel"] = CHAN_BODY ,
	["level"] = 75 ,
	["volume"] = 1 ,
	["pitch"] = { 85, 115 } ,
	["sound"] = { 
		"physics/glass/glass_impact_hard1.wav" ,
		"physics/glass/glass_impact_hard2.wav" ,
		"physics/glass/glass_impact_hard3.wav" ,
	} ,
} )
