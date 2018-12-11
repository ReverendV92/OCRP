
if SERVER then
	SWEP.Weight				= 5
	SWEP.AutoSwitchTo		= true
	SWEP.AutoSwitchFrom		= true
	SWEP.Charge = 0
end
if CLIENT then
	SWEP.PrintName			= "Defibilator"			
	SWEP.Author				= "Noobulater"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	SWEP.DrawAmmo			= false
	SWEP.DrawCrosshair		= false
	SWEP.DrawWeaponInfoBox	= false
	SWEP.BounceWeaponIcon   = false
	SWEP.SwayScale			= 1.0
	SWEP.BobScale			= 1.0
	SWEP.Chargee = 0
	SWEP.IconLetter			= "C"
end

SWEP.HoldType = "normal"

SWEP.ViewModelFOV	= 100
SWEP.ViewModel		= "models/weapons/v_defilibrator.mdl"
SWEP.WorldModel		= "models/weapons/w_stunbaton.mdl" 

SWEP.Spawnable			= false
SWEP.AdminOnly		= false

SWEP.Primary.Range			= 120
SWEP.Primary.Recoil			= 4.6
SWEP.Primary.Delay			= 1
SWEP.Primary.Damage			= 100
SWEP.Primary.Cone			= 0.02
SWEP.Primary.NumShots		= 1

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false	
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

function SWEP:Initialize()
	self:SetHoldType(self.HoldType)
	self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
	self:SetNWInt("Charge",0)
end 

function SWEP:Deploy()
	self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
	return true
end

function SWEP:CanPrimaryAttack()
	return true
end

function SWEP:SecondaryAttack()
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
	self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
	if SERVER then
		if self:GetNWInt("Charge") < 100 then
			self:SetNWInt("Charge",self:GetNWInt("Charge") + 25)
			if self:GetNWInt("Charge") >= 75 then
				self.Owner:EmitSound("buttons/blip1.wav",60,100)
			end
		end
	end
end

function SWEP:PrimaryAttack()
	if not self:CanPrimaryAttack() then return end
		if self:GetNWInt("Charge") < 75 then 
			return
		end
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	
 	local trace = util.GetPlayerTrace(self.Owner)
 	local tr = util.TraceLine(trace)
	
	self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
	self.Owner:SetAnimation(PLAYER_ATTACK1)
		if tr.Hit then
			if (self.Owner:GetPos() - tr.HitPos):Length() < self.Primary.Range then
				for _,ply in pairs(player.GetAll()) do
					if SERVER then		
						if !ply:Alive() && ply.Ragdoll:GetPos():Distance(tr.HitPos) < 120 then
							if ply.KOInfo.Death then
								local phys = ply:GetRagdoll():GetPhysicsObject()
											
								if phys && phys:IsValid() then
									phys:ApplyForceCenter(ply:GetAimVector() * 120)
								end
								
								local chance = math.random(0,self:GetNWInt("Charge"))
								ply:GetRagdoll().Zaps = ply:GetRagdoll().Zaps + 1
								if chance > 25 then
									local chance1 = math.random(0,self:GetNWInt("Charge"))
									if chance1 > 50 || ply:GetRagdoll().Zaps > 5 then
										local pos = ply:GetRagdoll():GetPos()
										ply:Spawn()
										local tracedata = {}
										tracedata.start = self.Owner:EyePos()
										tracedata.endpos = self.Owner:EyePos()+(Angle(0,self.Owner:GetAngles().y,90):Forward()*60)
										tracedata.filter = self.Owner
										local trace = util.TraceLine(tracedata)
										if trace.Hit then
											ply:SetPos(self.Owner:GetPos() + Angle(0,self.Owner:GetAngles().y,90):Forward() * -60)
										else
											ply:SetPos(self.Owner:GetPos() + Angle(0,self.Owner:GetAngles().y,90):Forward() * 60)
										end
										if ply:HasItem("item_life_alert") then
											self.Owner:Hint("You earned $300 for responding to a life alert call.")
											self.Owner:AddMoney(WALLET,300)							
										end
									end
								end
								self:SetNWInt("Charge",self:GetNWInt("Charge") - 75)
								self.Owner:EmitSound("ambient/energy/zap3.wav",60,100)
							else
								self.Owner:Hint("This person isn't dying.")
							end
							self.Owner:ViewPunch(Angle(math.Rand(-3,3) * self.Primary.Recoil,math.Rand(-3,3) * self.Primary.Recoil,0))
							self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
							self.Weapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
							break
						end
					end		
				end				
			end
		end

end
include('shared.lua')

if CLIENT then

	function SWEP:DrawHUD()
		if self.Weapon:GetNetworkedBool( "Ironsights", false ) then return false; end
			local x = ScrW() / 2.0 
			local y = ScrH() / 2.0 
			local scale = 15 * self.Primary.Cone
			if self.Owner:Crouching() then 
				scale = 15 * self.Primary.Cone * .6
			elseif !self:GetOwner():OnGround() then
				scale = 15 * self.Primary.Cone * 1.3
			end

			local LastShootTime = self.Weapon:GetNetworkedFloat("LastShootTime",0) 
			scale = scale * (2 - math.Clamp((CurTime() - LastShootTime) * 5,0.0,1.0)) 
			local gap = 30 * scale
			local length = gap + 7
			surface.SetDrawColor(0,255,0,255)
			surface.DrawLine(x-1,y,x+2,y)
			surface.DrawLine(x,y-1,x,y+2)
			surface.DrawLine(x - length,y,x - gap,y) 
			surface.DrawLine(x + length,y,x + gap,y) 
			surface.DrawLine(x,y - length,x,y - gap) 
			surface.DrawLine(x,y + length,x,y + gap) 
		surface.SetTextColor(255,255,255,255)
		surface.SetTextPos(ScrW()/2,ScrH()-50)
		surface.DrawText(self:GetNWInt("Charge").."% Charged")
	end

	function SWEP:DrawWeaponSelection(x,y,wide,tall,alpha) 
		draw.SimpleText(self.IconLetter,"CSSelectIcons",x + wide/2,y + tall*0.2,Color(255,210,0,255),TEXT_ALIGN_CENTER) 
		draw.SimpleText(self.IconLetter,"CSSelectIcons",x + wide/2 + math.Rand(-4,4),y + tall*0.2 + math.Rand(-12,12),Color(255,210,0,math.Rand(10,80)),TEXT_ALIGN_CENTER) 
		draw.SimpleText(self.IconLetter,"CSSelectIcons",x + wide/2 + math.Rand(-4,4),y + tall*0.2 + math.Rand(-9,9),Color(255,210,0,math.Rand(10,80)),TEXT_ALIGN_CENTER) 
	end 

	function SWEP:FreezeMovement()
		return false
	end
	function SWEP:ViewModelDrawn()
		
	end
	function SWEP:OnRestore()
	end
	function SWEP:OnRemove()
	end
	function SWEP:CustomAmmoDisplay()
	end
	function SWEP:TranslateFOV(current_fov)
		return current_fov
	end
	function SWEP:DrawWorldModel()
		self.Weapon:DrawModel()
	end
	function SWEP:DrawWorldModelTranslucent()
		self.Weapon:DrawModel()
	end
	function SWEP:AdjustMouseSensitivity()
		return nil
	end

	local IRONSIGHT_TIME = 0.25
	function SWEP:GetViewModelPosition( pos, ang )

		if ( !self.IronSightsPos ) then return pos, ang end

		local bIron = self.Weapon:GetNetworkedBool( "Ironsights" )
		
		if ( bIron != self.bLastIron ) then
		
			self.bLastIron = bIron 
			self.fIronTime = CurTime()
			
			if ( bIron ) then 
				self.SwayScale 	= 0.3
				self.BobScale 	= 0.1
			else 
				self.SwayScale 	= 1.0
				self.BobScale 	= 1.0
			end
		
		end
		
		local fIronTime = self.fIronTime or 0

		if ( !bIron && fIronTime < CurTime() - IRONSIGHT_TIME ) then 
			return pos, ang 
		end
		
		local Mul = 1.0
		
		if ( fIronTime > CurTime() - IRONSIGHT_TIME ) then
		
			Mul = math.Clamp( (CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1 )
			
			if (!bIron) then Mul = 1 - Mul end
		
		end

		local Offset	= self.IronSightsPos
		
		if ( self.IronSightsAng ) then
		
			ang = ang * 1
			ang:RotateAroundAxis( ang:Right(), 		self.IronSightsAng.x * Mul )
			ang:RotateAroundAxis( ang:Up(), 		self.IronSightsAng.y * Mul )
			ang:RotateAroundAxis( ang:Forward(), 	self.IronSightsAng.z * Mul )
		
		
		end
		
		local Right 	= ang:Right()
		local Up 		= ang:Up()
		local Forward 	= ang:Forward()
		
		

		pos = pos + Offset.x * Right * Mul
		pos = pos + Offset.y * Forward * Mul
		pos = pos + Offset.z * Up * Mul

		return pos, ang
		
	end

	function PlayWeaponSound ( UMsg )
		local Ent = UMsg:ReadEntity();
		local Snd = UMsg:ReadString();
		
		if !IsValid(Ent) then return false; end
		
		Ent:EmitSound(Snd, 135, 100); 
	end
	usermessage.Hook('re_wep', PlayWeaponSound);

	function SWEP:DrawWorldModel()
	end

end
