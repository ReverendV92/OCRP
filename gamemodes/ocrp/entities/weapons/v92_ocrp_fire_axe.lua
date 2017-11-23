
------------------------------------------------------
--	OCRP FIRE AXE
------------------------------------------------------

AddCSLuaFile( )

SWEP.PrintName = "Fire Axe" -- (String) Printed name on menu

if not VNTCB then

	Error( "V92 Content Bases not mounted; Removing Weapon: " .. self.PrintName .. "\n" )

	return false

end

SWEP.Base = VNT_BASE_WEAPON_MELEE -- (String) Weapon base parent this is a child of
SWEP.Spawnable = true -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable

------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------

SWEP.Settings.Weapon = "v92_ocrp_fire_axe" -- (String) Name of the weapon script
SWEP.WeaponEntityName = SWEP.Settings.Weapon .. "_ent" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.Manufacturer = VNT_WEAPON_MANUFACTURER_VARIOUS -- (String) Gun company that makes this weapon
SWEP.CountryOfOrigin = VNT_WEAPON_COUNTRY_UNITEDSTATES -- (String) Country of origin
SWEP.Category = VNT_CATEGORY_VNT -- (String) Category
SWEP.Instructions = "Chop 'til You Drop!" -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Slot = VNT_WEAPON_BUCKETPOS_MELEE -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = VNT_WEAPON_SLOTPOS_MELEE -- (Integer) Bucket position

------------------------------------------------------
--	Model Information								--
------------------------------------------------------

SWEP.ViewModelFlip = false -- (Boolean) Only used for vanilla CS:S models
SWEP.ViewModel = Model( "models/valve/weapons/melee/fireaxe_c.mdl" ) -- (String) View model - v_*
SWEP.WorldModel = Model( "models/valve/weapons/melee/fireaxe_w.mdl" ) -- (String) World model - w_*
SWEP.HoldType = "melee2" -- (String) Hold type for our weapon, refer to wiki for animation sets
SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms

------------------------------------------------------
--	Gun Types										--	Set the type of weapon
------------------------------------------------------

------------------------------------------------------
--	Primary Fire Settings							--	Settings for the primary fire of the weapon
------------------------------------------------------

SWEP.Primary.ClipSize = -1 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = 0 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.Ammo = "none" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Primary.RPM = 250 -- (Integer) Go to a wikipedia page and look at the RPM of the weapon, then put that here - the base will do the math
SWEP.Primary.PureDmg = 25 -- (Integer) Base damage, put one number here and the base will do the rest

------------------------------------------------------
--	Secondary Fire Settings							--	Settings for the Secondary fire of the weapon
------------------------------------------------------

SWEP.Secondary.ClipSize = -1 -- (Integer) Size of a magazine
SWEP.Secondary.DefaultClip = 0 -- (Integer) Default number of ammo you spawn with
SWEP.Secondary.Ammo = "none" -- (String) Secondary ammo used by the weapon, bullets probably
SWEP.Secondary.RPM = 250 -- (Integer) Go to a wikipedia page and look at the RPM of the weapon, then put that here - the base will do the math
SWEP.Secondary.PureDmg = 50 -- (Integer) Base damage, put one number here and the base will do the rest

------------------------------------------------------
--	Gun Mechanics									--	Various things to tweak the effects and feedback
------------------------------------------------------

SWEP.Weight = 1 -- (Integer) The weight in Kilogrammes of our weapon - used in my weapon weight mod!
SWEP.StoppageRate = 0 -- (Integer) Rate of stoppages in the weapon, look up the real world number estimations and just throw that in here.

------------------------------------------------------
--	Melee Settings									--
------------------------------------------------------

SWEP.MeleeAnimType = 2 -- (Integer) Melee type; 0=holdtype animation, 1=pistol whip, 2=rifle butt
SWEP.MeleeRange = 80 -- (Integer) Range of melee weapon swings
SWEP.HasMeleeAttack = false -- (Boolean) Does this weapon have a pistol whip or rifle butt animation?
SWEP.AltFireMelee = true -- (Boolean) Is the alt fire a melee attack?
SWEP.IsBladedMelee = true -- (Boolean) Is the melee a blade?

------------------------------------------------------
--	Ironsight & Run Positions						--	Set our model transforms for running and ironsights
------------------------------------------------------

SWEP.IronSightsPos = Vector( 0 , 0 , 0 ) -- (Vector) Ironsight XYZ Transform
SWEP.IronSightsAng = Vector( 0 , 0 , 0 ) -- (Vector) Ironsight XYZ Rotation
SWEP.RunArmOffset = Vector( -10 , -14 , -1.5 ) -- (Vector) Sprinting XYZ Transform
SWEP.RunArmAngle = Vector( -25 , 0 , -50 ) -- (Vector) Sprinting XYZ Rotation

------------------------------------------------------
--	Custom Sounds									--	Setup sounds here!
------------------------------------------------------

SWEP.Sounds = {
	["MeleeHitWall"] = Sound( "HL2.Vortigaunt.Claw.Swing" ) , -- (String) Sound for melee world hits
	["MeleeHitCharacter"] = Sound( "HL2.Vortigaunt.Claw.Swing" ) , -- (String) Sound for melee flesh hits
	["MeleeMiss"] = Sound( "HL2.Vortigaunt.Claw.Swing" ) , -- (String) Sound for melee misses
}

------------------------------------------------------
--	Setup Clientside Info							--	This block must be in every weapon!
------------------------------------------------------

if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.Settings.Weapon )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.Settings.Weapon , SWEP.PrintName )
	killicon.Add( SWEP.Settings.Weapon , "vgui/entities/" .. SWEP.Settings.Weapon , Color( 255 , 255 , 255 ) )
end
------------------------------------------------------
--	SWEP:Initialize() 							--	Called when the weapon is first loaded
------------------------------------------------------
function SWEP:Initialize( )
	self.HoldMeRight = VNTCB.HoldType.Sword -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua
end

SWEP.SeqPrimary = { "swing_w_e" , "swing_ne_w" , "swing_se_w" , "swing_sw_e" , "swing_w_e" , "swinghard_n_s" }
SWEP.SeqIdle = { "idle" }
SWEP.SeqDraw = { "deploy" }
SWEP.SeqHolster = { "deploy" }
