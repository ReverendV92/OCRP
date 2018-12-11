
AddCSLuaFile()

local Category = "Dynamic Roleplay"

------------------------------
-- Ford Transit
------------------------------

local light_table = {
	L_HeadLampPos = Vector(-36,103,40),
	L_HeadLampAng = Angle(0,90,0),

	R_HeadLampPos = Vector(36,103,40),
	R_HeadLampAng = Angle(0,90,0),

	L_RearLampPos = Vector(-36,103,40),
	L_RearLampAng = Angle(0, 0, 0),

	R_RearLampPos = Vector(36,103,40),
	R_RearLampAng = Angle(0,0,0),
	
	Headlight_sprites = { 
		Vector(32,103,40),
		Vector(36,103,40),
		Vector(-32,103,40),
		Vector(-36,103,40),
	},
	Headlamp_sprites = { 
		Vector(32,103,40),
		Vector(36,103,40),
		Vector(-32,103,40),
		Vector(-36,103,40),
	},
	Rearlight_sprites = {
		Vector(41,-109,45),
		Vector(-41,-109,45),
		Vector(0,-109,91),
		Vector(-2,-109,91),
		Vector(2,-109,91),
	},
	Brakelight_sprites = {
		Vector(41,-109,45),
		Vector(-41,-109,45),
		Vector(0,-109,91),
		Vector(-2,-109,91),
		Vector(2,-109,91),
	},
	Reverselight_sprites = {
		Vector(41,-111,37),
		Vector(-41,-111,37),
		Vector(41,-111,40),
		Vector(-41,-111,40),
		Vector(41,-111,48),
		Vector(-41,-111,48),
	},
	FogLight_sprites = {
		{pos = Vector(31.5,106,47),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(35,112,22),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(-31.5,106,47),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(-35,112,22),material = "sprites/light_ignorez",size = 24},
	},
	ems_sounds = {"common/null.wav"},
	--ems_sounds = {"simulated_vehicles/police/siren_madmax.wav"},
	--ems_sounds = {"simulated_vehicles/police/siren_1.wav","simulated_vehicles/police/siren_2.wav","simulated_vehicles/police/siren_3.wav"},
	ems_sprites = {
	
		----------------------------
		----------------------------
		--	SIDE MIRRORS
		----------------------------
		----------------------------
	
		--	Left Blinker
		{
			pos = Vector(-36,103,47),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,250),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.2, -- for how long each color will be drawn
		},
		--	Right Blinker
		{
			pos = Vector(36,103,47),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,250),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.2, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "dynrptransit", light_table)

local V = {
	Name = "Ford Transit",
	Model = "models/tdmcars/ford_transit.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,

	Members = {
		Mass = 1500,	-- total mass of the   vehicle + masscenter counterweight     excluding the wheels
		--MaxHealth = 1000,    -- overrides max health
		--AirFriction = -250,
		LightsTable = "dynrptransit",  --wich list we want to use for our light positions. You can comment this variable out if you dont want lights.  lights are defined in simfphys_lights.lua 
		
		FrontWheelRadius = 17.5,			--sadly, these cannot be measured from the model. you need to look in the vehicle script @ scripts/vehicles/XXX.txt and find "radius" for both front and rear axle
		RearWheelRadius = 17.5,
		
		CustomMassCenter = Vector(0,0,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		SeatOffset = Vector(0,0,-2),	--driver seat offset
		SeatPitch = 0,
		
		SpeedoMax = 130,    -- in mph.  if your vehicle interior has an working speedometer you can adjust it here. Some vehicles are very inaccurate made so if the speedo matches at slowspeed that doesnt mean it will match at high speeds
		
		--[[
		ModelInfo = {
			Bodygroups = {0,2,1},   -- Sets first bodygroup to 0, second to 2 and third to 1
			Color = Color(0,31,127,255),
			Skin = 1
		},
		]]--
		
		PassengerSeats = {
			{
				pos = Vector(-20,32,42),
				ang = Angle(0,0,0)
			},
		},
		
		Backfire = false,
		ExhaustPositions = {
			{
				pos = Vector(37,-111,13),
				ang = Angle(90,270,0),
				--OnBodyGroups = { [4] = {0,2} }   -- if bodygroup number 4 is set to 0 or 2 the exhaust effect will be used
			},
			{
				pos = Vector(30,-111,13),
				ang = Angle(90,270,0)
			},
		},
		
		StrengthenSuspension = false, -- if set to true it will increase the constant limit to 10 0000 but double the amount of constraints used. Also the limiters of the physical wheel will be set tighter. You can make the physical wheelpos visible by typing cl_simfphys_debugwheels = 1 into the console
							  --If you are using vehicle models with bones/poseparameters and experience floating wheels or wheels clipping into the ground then this will probably fix it. 
							  --Keep in mind that this will make the suspension alot more responsive to bumps and stiffer. If your wheels are still leaving the ground in corners you will have to decrease the constant or lower the masscenter
		
		FrontHeight = 13.5,		--positive numbers only
		FrontConstant = 27000,		--max 50000 if StrengthenSuspension set to false     constant can be imagined as spring strength
		FrontDamping = 2800,		-- dont set damping/relative damping too high or it will spazz     damping is basically the shock absorbers
		FrontRelativeDamping = 2800,
		
		RearHeight = 13.5,
		RearConstant = 32000,
		RearDamping = 2900,
		RearRelativeDamping = 2900,
			
		FastSteeringAngle = 18,	--steering angle at high speeds.
		SteeringFadeFastSpeed = 535,	--at wich speed (gmod units per second) we want to fade from slow steer angle to fast steer angle
		
		TurnSpeed = 8,		--how fast the steering will move to its target angle
		
		MaxGrip = 44,	--max available grip
		Efficiency = 1.337,	--this defines how good the wheels can put the engine power to the ground. this also increases engine power and brake force.  Its a cheap way to make your car accelerate faster without having to deal with griploss
		GripOffset = 0,	-- a negative value will get more understeer, a positive value more oversteer. NOTE: this will not affect under/oversteer caused by engine power.   This value can be found as Tractionbias in the EDIT properties menu however it is divided by MaxGrip there
		BrakePower = 40,		--how strong the brakes are, NOTE: this can be higher than MaxGrip. Sorry folks but i couldnt stand how people fail to realize that braking while turning decreases grip and therefore causes understeer. So i excluded it from the grip calculations
		
		IdleRPM = 750,	-- must be smaller than powerbandstart
		LimitRPM = 2500,  -- should never be smaller than PowerbandStart
		PeakTorque = 200,
		PowerbandStart = 1000,  --must be greater than IdleRPM but dont set this too high because it will also be used as shifting point for the automatic transmission.
		PowerbandEnd = 2300, -- should never be greater but ideally 200rpm less than LimitRPM. Must be greater than powerbandstart
		Turbocharged = false,
		--snd_blowoff = "path/to/sound.wav",  -- replace blowoff sound
		Supercharged = false,
		
		PowerBias = -1,	--how much power goes to the front and rear wheels,   1 = rear wheel drive    -1 = front wheel Drive     0 = all wheel drive with power distributed equally on front and rear wheels
		
		EngineSoundPreset = -1,-- available sound presets:   -1 = use custom sound preset with gearchange and revdown sounds  ,  0 = use simple custom sounds preset ,  1 = GTA 5 Dukes  ,  2 = Master Chris's 1969 charger   ,  3 = shelby  ,   4 = hl2 jeep  ,  5 = synergy elite jeep  ,  6 = 4banger  ,   7 = hl2 jalopy cruise ,   8 = alfa romeo diesel (thanks to salza for recording)
		
		
		-- preset -1
		snd_pitch = 1,
		snd_idle = "vehicles/tdmcars/transit/idle.wav",  --you have to have an idle sound or the script will fallback to preset 0
		
		snd_low = "vehicles/tdmcars/transit/first.wav",  			--you have to have an low rpm sound or the script will fallback to preset 0.  This will be used as "continue" sound for  snd_low_revdown so it has to sound the same.
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",	--you dont need this one. if you comment it out it will use snd_low instead. The only difference in this should be the "startup",  once it reaches the loop part it should be the same as snd_low
		snd_low_pitch = 0.9,
		
		snd_mid = "vehicles/tdmcars/transit/second.wav",  			--you have to have an mid sound or the script will fallback to preset 0. This will be used as "continue" sound for  snd_mid_gearup so it has to sound the same.
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav", 	--you dont need this one but it is highly recommended to have it since this is the point of this sound definition.  if you comment it out it will use snd_mid instead but will cause sound issues ingame.
													--The soundfile should basically be the same as snd_mid but it should include the "gearchange" sound. Also make sure you set the start_cue and end_cue correctly so it doesnt loop the gearchange.
													--I highly advice to use EngineSoundPreset 0 if you dont have an matching sound for this one. 
		
		--snd_mid_geardown = "simulated_vehicles/shelby/shelby_shiftdown.wav",	-- same for geardown
		snd_mid_pitch = 1,
		--
		
		-- make sure every sound is looped https://developer.valvesoftware.com/wiki/Looping_a_Sound
		
		--if you set EngineSoundPreset to 0 you will have to define the sounds down below.
		Sound_Idle = "vehicles/tdmcars/transit/idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "vehicles/tdmcars/transit/first.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,		-- at wich percentage of limitrpm the sound fades out
		Sound_MidFadeOutRate = 0.476,                    --how fast it fades out   0 = instant       1 = never
		
		Sound_High = "vehicles/tdmcars/transit/fourth_cruise.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "vehicles/tdmcars/transit/throttle_off.wav",		-- mutes the default throttle sound
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		--
		
		SpawnOffset = Vector(0,0,0),
		
		DifferentialGear = 0.55,
		Gears = {-0.15,0,0.06,0.21,0.42,0.7,1}	-- 0.15 means 1 revolution of the engine = 0.15 of the driveshaft
	}
}
list.Set( "simfphys_vehicles", "v92_simfphy_dynrptransit", V )
