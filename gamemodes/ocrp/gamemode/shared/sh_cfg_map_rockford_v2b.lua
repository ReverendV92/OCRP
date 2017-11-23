
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- rp_rockford_v2b
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

GM.Maps["rp_rockford_v2b"] = {}
GM.Maps["rp_rockford_v2b"].Remove = {}
GM.Maps["rp_rockford_v2b"].UnOwnable = {}
GM.Maps["rp_rockford_v2b"].Public = {}
GM.Maps["rp_rockford_v2b"].ActUnOwnable = {}
GM.Maps["rp_rockford_v2b"].Police = {}
GM.Maps["rp_rockford_v2b"].Open = {}
GM.Maps["rp_rockford_v2b"].Locked = {}
GM.Maps["rp_rockford_v2b"].Jails = {}
GM.Maps["rp_rockford_v2b"].SpawnsCitizen = {}
GM.Maps["rp_rockford_v2b"].SpawnsCar = {}
GM.Maps["rp_rockford_v2b"].AddObjs = {}

-- City Hall
GM.Maps["rp_rockford_v2b"].UnOwnable[2500] = true -- City Hall Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[2501] = true -- City Hall Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[2502] = true -- City Hall Front Door 2a
GM.Maps["rp_rockford_v2b"].UnOwnable[2503] = true -- City Hall Front Door 2b
GM.Maps["rp_rockford_v2b"].UnOwnable[2504] = true -- City Hall Front Door 3a
GM.Maps["rp_rockford_v2b"].UnOwnable[2505] = true -- City Hall Front Door 3b
GM.Maps["rp_rockford_v2b"].UnOwnable[2514] = true -- City Hall Courtroom 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[2515] = true -- City Hall Courtroom 1b
GM.Maps["rp_rockford_v2b"].UnOwnable[2517] = true -- City Hall Upper 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[2516] = true -- City Hall Upper 1b
GM.Maps["rp_rockford_v2b"].UnOwnable[2518] = true -- City Hall Upper 2a
GM.Maps["rp_rockford_v2b"].UnOwnable[2519] = true -- City Hall Upper 2b
GM.Maps["rp_rockford_v2b"].UnOwnable[2520] = true -- City Hall Upper 3a
GM.Maps["rp_rockford_v2b"].UnOwnable[2521] = true -- City Hall Upper 3b
GM.Maps["rp_rockford_v2b"].UnOwnable[2523] = true -- City Hall Glass Room 1
GM.Maps["rp_rockford_v2b"].UnOwnable[2522] = true -- City Hall Glass Room 2

-- Hospital
GM.Maps["rp_rockford_v2b"].Locked[2699] = true -- Hospital Restricted Area
GM.Maps["rp_rockford_v2b"].UnOwnable[2701] = true -- Hospital Quarantine
GM.Maps["rp_rockford_v2b"].UnOwnable[2702] = true -- Hospital Exam 1
GM.Maps["rp_rockford_v2b"].Police[2698] = true -- Hospital Office

-- GM Car Lot
GM.Maps["rp_rockford_v2b"].UnOwnable[1632] = true -- GM Car Lot Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[1633] = true -- GM Car Lot Front Door 1b

-- Car Customs
GM.Maps["rp_rockford_v2b"].UnOwnable[4022] = true -- Customs Door

-- Bank
GM.Maps["rp_rockford_v2b"].UnOwnable[3729] = true -- Bank of America Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[3730] = true -- Bank of America Front Door 1b
GM.Maps["rp_rockford_v2b"].Locked[3732] = true -- Bank of America Security Door
GM.Maps["rp_rockford_v2b"].Locked[3795] = true -- Bank of America Teller Door

-- Department of Transportation
GM.Maps["rp_rockford_v2b"].UnOwnable[1642] = true -- DoT Front Foor 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[1643] = true -- DoT Front Foor 1b
GM.Maps["rp_rockford_v2b"].UnOwnable[1972] = true -- DoT Yard Door
GM.Maps["rp_rockford_v2b"].UnOwnable[1971] = true -- DoT Office Door

-- Fire Department
GM.Maps["rp_rockford_v2b"].UnOwnable[3582] = true -- Fire Department Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[3583] = true -- Fire Department Front Door 1b
GM.Maps["rp_rockford_v2b"].UnOwnable[3584] = true -- Fire Department Office 1
GM.Maps["rp_rockford_v2b"].UnOwnable[3585] = true -- Fire Department Office 2
GM.Maps["rp_rockford_v2b"].UnOwnable[4027] = true -- Fire Department Restricted
GM.Maps["rp_rockford_v2b"].UnOwnable[3587] = true -- Fire Department Upstairs
GM.Maps["rp_rockford_v2b"].UnOwnable[3590] = true -- Fire Department Upstairs
GM.Maps["rp_rockford_v2b"].UnOwnable[3589] = true -- Fire Department Upstairs
GM.Maps["rp_rockford_v2b"].UnOwnable[3588] = true -- Fire Department Upstairs
GM.Maps["rp_rockford_v2b"].UnOwnable[3586] = true -- Fire Department Upstairs

-- Shell Outside Town
GM.Maps["rp_rockford_v2b"].UnOwnable[3593] = true -- Shell Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[3594] = true -- Shell Front Door 1b

-- Shell Upper Town
GM.Maps["rp_rockford_v2b"].UnOwnable[1629] = true -- Shell Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[1628] = true -- Shell Front Door 1b

-- Realtor
GM.Maps["rp_rockford_v2b"].UnOwnable[1490] = true -- Realtor Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[1491] = true -- Realtor Front Door 1b
GM.Maps["rp_rockford_v2b"].UnOwnable[1965] = true -- Realtor Office

-- Transit Station
GM.Maps["rp_rockford_v2b"].UnOwnable[3797] = true -- Transit Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[3798] = true -- Transit Front Door 1b

-- Frosty Fasion
GM.Maps["rp_rockford_v2b"].UnOwnable[2858] = true -- Frosty Fasion Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[2859] = true -- Frosty Fasion Front Door 1b
GM.Maps["rp_rockford_v2b"].UnOwnable[2930] = true -- Frosty Fasion Dressing Room

-- Furniture
GM.Maps["rp_rockford_v2b"].UnOwnable[2854] = true -- Material Shop Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[2855] = true -- Material Shop Door 1b

-- Cheapies
GM.Maps["rp_rockford_v2b"].UnOwnable[2850] = true -- Material Shop Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[2851] = true -- Material Shop Door 1b

-- Materials
GM.Maps["rp_rockford_v2b"].UnOwnable[2846] = true -- Material Shop Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[2847] = true -- Material Shop Door 1b

-- Black Mesa Apartments
GM.Maps["rp_rockford_v2b"].UnOwnable[1582] = true -- 315 Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[1583] = true -- 315 Front Door 1b
GM.Maps["rp_rockford_v2b"].UnOwnable[1580] = true -- 325 Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[1581] = true -- 325 Front Door 1b

-- Police Station
GM.Maps["rp_rockford_v2b"].UnOwnable[3923] = true -- Police Station Front Door 1a
GM.Maps["rp_rockford_v2b"].UnOwnable[3924] = true -- Police Station Front Door 1b
GM.Maps["rp_rockford_v2b"].Police[4041] = true -- Police Station Restricted Door
GM.Maps["rp_rockford_v2b"].Police[3922] = true -- Police Station Parking Lot Door
GM.Maps["rp_rockford_v2b"].Police[4059] = true -- Police Station Office Door 1
GM.Maps["rp_rockford_v2b"].Police[4058] = true -- Police Station Office Door 2
GM.Maps["rp_rockford_v2b"].Police[4057] = true -- Police Station Office Door 3
GM.Maps["rp_rockford_v2b"].Police[4069] = true -- Police Station Observation
GM.Maps["rp_rockford_v2b"].Police[4070] = true -- Police Station Interrogation 1
GM.Maps["rp_rockford_v2b"].Police[4071] = true -- Police Station Interrogation 2
GM.Maps["rp_rockford_v2b"].Police[4045] = true -- Police Station Jail Area Door
GM.Maps["rp_rockford_v2b"].Police[4083] = true -- Police Station Isolation Lockup
GM.Maps["rp_rockford_v2b"].Police[4086] = true -- Police Station Jail 1
GM.Maps["rp_rockford_v2b"].Police[4087] = true -- Police Station Jail 2
GM.Maps["rp_rockford_v2b"].Police[4085] = true -- Police Station Jail 3
GM.Maps["rp_rockford_v2b"].Police[4088] = true -- Police Station Jail 4
GM.Maps["rp_rockford_v2b"].Police[4046] = true -- Police Station Drunk Tank
GM.Maps["rp_rockford_v2b"].Police[4047] = true -- Police Station Drunk Tank Lockup
GM.Maps["rp_rockford_v2b"].Police[3922] = true -- Police Station Garage Door

GM.Maps["rp_rockford_v2b"].SpawnsCar = {

	{Position = Vector(-9366 , -3984 , 96), Ang = Angle(0 , -90 , 0)} ,
	{Position = Vector(-9366 , -3233 , 96), Ang = Angle(0 , -90 , 0)} ,

}

GM.Maps["rp_rockford_v2b"].SpawnsCitizen = {

	{ Position = Vector( -1085 , 4105 , 550 ) , Ang = Angle( 0 , 180 , 0 ) } , 
	{ Position = Vector( -1085 , 4012 , 550 ) , Ang = Angle( 0 , 180 , 0 ) } , 
	{ Position = Vector( -1143 , 4046 , 550 ) , Ang = Angle( 0 , 180 , 0 ) } , 
	{ Position = Vector( -1143 , 3968 , 550 ) , Ang = Angle( 0 , 180 , 0 ) } , 
	{ Position = Vector( -1143 , 4139 , 550 ) , Ang = Angle( 0 , 180 , 0 ) } , 

}

GM.Maps["rp_rockford_v2b"].Jails = {

	{Position = Vector( -7610 , -5595 , -1300 ) , Ang = Angle( 0 , 90 , 0 ) } ,
	{Position = Vector( -7170 , -5555 , -1300 ) , Ang = Angle( 0 , 90 , 0 ) } ,
	{Position = Vector( -7161 , -5831 , -1300 ) , Ang = Angle( 0 , 90 , 0 ) } ,
	{Position = Vector( -7602 , -5814 , -1300 ) , Ang = Angle( 0 , 90 , 0 ) } ,

}

GM.Maps["rp_rockford_v2b"].AddObjs = {

	-- ATMs

	{	["Class"] = "bank_atm" , -- Transit Station 1
		["Pos"] = Vector( -1216 , 3864 , 544 ) ,
		["Angles"] = Angle(0 ,90 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "bank_atm" , -- Transit Station 2
		["Pos"] = Vector( -1136 , 3864 , 544 ) ,
		["Angles"] = Angle(0 ,90 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "bank_atm" , -- Shell Uptown
		["Pos"] = Vector( 1024 , 3680 , 544.299 ) ,
		["Angles"] = Angle(0 ,90 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "bank_atm" , -- Shell Country
		["Pos"] = Vector( -14656 , 2912 , 392.299 ) ,
		["Angles"] = Angle(0 ,270 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "bank_atm" , -- Theater 1
		["Pos"] = Vector( -1168 , 2200 , 544 ),
		["Angles"] = Angle(0 ,90 ,0),
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "bank_atm" , -- Theater 2
		["Pos"] = Vector( -1008 , 2200 , 544 ) ,
		["Angles"] = Angle(0 ,90 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "bank_atm" , -- GM Lot
		["Pos"] = Vector( -3870 , -598 , 0.298534 ),
		["Angles"] = Angle(0 ,270 ,0),
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "bank_atm" , -- City Hall 1
		["Pos"] = Vector( -5472 , -5536 , 64.2985 ) ,
		["Angles"] = Angle(0 ,0 ,0),
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "bank_atm" , -- City Hall 2
		["Pos"] = Vector( -5472 , -5440 , 64.2985 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "bank_atm" , -- City Hall 3
		["Pos"] = Vector( -5472 , -5632 , 64.2985 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,
	
	{	["Class"] = "gas_pump" , --
		["Pos"] = Vector( 298 , 4118 , 606.75 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "gas_pump" , --
		["Pos"] = Vector( 278 , 4118 , 606.75 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "gas_pump" , --
		["Pos"] = Vector( 298 , 3786 , 606.75 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "gas_pump" , --
		["Pos"] = Vector( 278 , 3786 , 606.75 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "gas_pump" , --
		["Pos"] = Vector( -13930 , 2474 , 454.75 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "gas_pump" , --
		["Pos"] = Vector( -13910 , 2474 , 454.75 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "gas_pump" , --
		["Pos"] = Vector( -13910 , 2806 , 454.75 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	{	["Class"] = "gas_pump" , --
		["Pos"] = Vector( -13930 , 2806 , 454.75 ) ,
		["Angles"] = Angle(0 ,0 ,0) ,
		["Skin"] = 1 ,
		["Activate"] = false ,
		["Hide"] = false ,
	} ,

	-- Misc

	-- {   ["Class"] = "item_wardrobe" , -- Clothing Store
		-- ["Pos"] = Vector( 1944 , 3770 , 608 ) ,
		-- ["Angles"] = Angle( 0 , 0 , 0 ) ,
		-- ["Activate"] = false ,
	-- } ,
	
	-- Banks

	{   ["Class"] = "item_bank" , -- PacStandard Lobby Wall
		["Pos"] = Vector(-3951 , -3073 , 96),
		["Angles"] = Angle(0 , 0 , 0),
		["Activate"] = false ,
	} ,

	{   ["Class"] = "money_spawn" , -- PacStandard Lobby Wall
		["Pos"] = Vector(-4174 , -4288 , 132),
		["Angles"] = Angle(0 , 0 , 0),
		["Activate"] = false ,
	} ,
	{   ["Class"] = "money_spawn" , -- PacStandard Lobby Wall
		["Pos"] = Vector(-4021 , -4288 , 132),
		["Angles"] = Angle(0 , 0 , 0),
		["Activate"] = false ,
	} ,

	-- Tellers
	--
	{   ["Class"] = "bank_banker" ,
		["Pos"] = Vector(-3077 , -3368 , 45),
		["Angles"] = Angle(0 , 90 , 0),
		["Activate"] = false ,
	} ,
	
	{   ["Class"] = "bank_banker" ,
		["Pos"] = Vector(-3171 , -3368 , 45),
		["Angles"] = Angle(0 , 90 , 0),
		["Activate"] = false ,
	} ,

	{   ["Class"] = "bank_banker" ,
		["Pos"] = Vector(-3310 , -3368 , 45),
		["Angles"] = Angle(0 , 90 , 0),
		["Activate"] = false ,
	} ,

	{   ["Class"] = "bank_banker" ,
		["Pos"] = Vector(-3407 , -3368 , 45),
		["Angles"] = Angle(0 , 90 , 0),
		["Activate"] = false ,
	} ,

	{   ["Class"] = "bank_banker" ,
		["Pos"] = Vector(-3557 , -3368 , 45),
		["Angles"] = Angle(0 , 90 , 0),
		["Activate"] = false ,
	} ,

	{   ["Class"] = "bank_banker" ,
		["Pos"] = Vector(-3642 , -3368 , 45),
		["Angles"] = Angle(0 , 90 , 0),
		["Activate"] = false ,
	} ,
	--]]

	-- Stuff
	
	{	["Class"] = "gov_resupply" ,
		["Pos"] = Vector(-8536 , -5373 , 72),
		["Angles"] = Angle(0 , 180 , 0),
		["Activate"] = false ,
	} ,

}

GM.Maps["rp_rockford_v2b"].Function = function()

	-- Police Station
	AddNPC( Vector( -8820 , -5587 , 35 ) , Angle( 0 , 270 , 0 ) , "OCRP_NPCTalk" , "npc_metropolice" , "Cop" , { "Job_Cop001" } ) -- Police Station Front Desk
	AddNPC( Vector( -8694 , -5587 , 35 ) , Angle( 0 , 270 , 0 ) , "OCRP_NPCTalk" , "npc_metropolice" , "Cop" , { "Job_CopCar01" } ) -- Police Station Garage

	-- DoT
	AddNPC( Vector( -7288 , 141 , 35 ) , Angle( 0 , 0 , 0 ) , "OCRP_NPCTalk" , "npc_monk" , "TowTruck" , { "DoT_Job" } ) -- DoT Front Desk
	AddNPC( Vector( -7288 , 228 , 35 ) , Angle( 0 , 0 , 0 ) , "OCRP_NPCTalk" , "npc_monk" , "TowTruck" , { "RoadCrew_Spawn_Vehicle" } ) -- DoT Truck Spawn

	-- Hospital
	AddNPC( Vector( -75 , -5854 , 75 ) , Angle( 0 , 180 , 0 ) , "OCRP_NPCTalk" , "npc_mossman" , "Heal" , { "Heal" } ) -- Hospital Front Desk
	AddNPC( Vector( -75 , -5735 , 75 ), Angle( 0 , 180 , 0 ) , "OCRP_NPCTalk" , "npc_mossman" , "Medic" , { "Job_Medic001" } ) -- Hospital Front Desk
	AddNPC( Vector( -75 , -5963 , 75 ), Angle( 0 , 180 , 0 ) , "OCRP_NPCTalk" , "npc_mossman" , "Ambo" , { "Job_Ambulance01" } ) -- Hospital Front Desk

	-- Taxi
	AddNPC( Vector( -1474 , 3923 , 575 ) , Angle( 0 , 90 , 0 ) , "OCRP_NPCTalk" , "npc_eli" , "Taxi" , { "Job_Taxi001" } ) -- Transit Office Front Desk 1
	AddNPC( Vector( -1389 , 3923 , 616 ) , Angle( 0 , 90 , 0 ) , "OCRP_NPCTalk" , "npc_eli" , "Taxi" , { "Job_TaxiCar001" } ) -- Transit Office Front Desk 2

	-- Clothes
	AddNPC( Vector( 2013 , 3901 , 550 ) , Angle( 0 , 45 , 0 ) , "OCRP_Model" , "npc_gman" , "Tailor" , {} ) -- Clothing Store

	-- Shell Station
	AddNPC( Vector( 1004 , 3939 , 550 ) , Angle( 0 , 180 , 0 ) , "OCRP_ShopMenu" , "npc_gman" , "Shell Gas" , { 8 } ) -- Uptown Shell
	AddNPC( Vector( -14636 , 2652 , 400 ) , Angle( 0 , 0 , 0 ) , "OCRP_ShopMenu" , "npc_gman" , "Shell Gas" , { 8 } ) -- Out of town Shell

	-- Realtor Office
	AddNPC( Vector( -1088 , 6624 , 550 ), Angle( 0 , -160 , 0 ) , "OCRP_RealtorMenu" , "npc_alyx" , "Realtor" , { } ) -- Realtor Office Desk
	
	-- Fire Department
	AddNPC( Vector( -5812 , -3222 , 72 ), Angle( 0 , 180 , 0 ) , "OCRP_NPCTalk" , "npc_eli" , "Fireman" , { "Job_Fire001" } ) -- FD Desk Job
	AddNPC( Vector( -5871 , -3602 , 72 ), Angle( 0 , 0 , 0 ) , "OCRP_NPCTalk" , "npc_eli" , "Realtor" , { "Job_FireEngine01" } ) -- FD Engine Spawner
	
	-- GM Car Lot
	AddNPC( Vector( -4194 , -679 , 15 ), Angle( 0 , 270 , 0 ) , "SV_CarDealer" , "npc_eli" , "CarDealer" , { } ) -- Car Lot Desk
	
	-- Parking Garage
	AddNPC( Vector( -9583 , -3874 , 35 ), Angle( 0 , 0 , 0 ) , "SV_Garage" , "npc_eli" , "Garage" , { } ) -- Parking Garage

	-- City Hall
	AddNPC( Vector( -4665 , -5162 , 75 ), Angle( 0 , 270 , 0 ) , "OCRP_NPCTalk" , "npc_kleiner" , "Mayor" , { "Job_Mayor001" } )
	AddNPC( Vector( -4796 , -5162 , 75 ), Angle( 0 , 270 , 0 ) , "OCRP_NPCTalk" , "npc_alyx" , "Org" , { "Org" } )

	-- Car Mod Shop
	AddNPC( Vector( -8214 , -1949 , 72 ), Angle( 0 , 90 , 0 ) , "OCRP_NPCTalk" , "npc_alyx" , "Respray" , { "Skin_001" } )
	AddNPC( Vector( -8279 , -1949 , 72 ), Angle( 0 , 90 , 0 ) , "OCRP_NPCTalk" , "npc_alyx" , "UG_Nitrous" , { "Skin_002" } )
	AddNPC( Vector( -8381 , -1949 , 72 ), Angle( 0 , 90 , 0 ) , "OCRP_NPCTalk" , "npc_alyx" , "Headlights" , { "Skin_003" } )

	-- Stores

	AddNPC( Vector( 2017 , 1744 , 550 ), Angle( 0 , 270 , 0 ) , "OCRP_ShopMenu" , "npc_barney" , "Materials" , { 5 , 6 , 7 } , { Min = 300 , Max = 900 } )
	AddNPC( Vector( 1104 , 3899 , 600 ), Angle( 0 , 0 , 0 ) , "OCRP_ShopMenu" , "npc_eli" , "Materials" , { 2 , 3 , 4 , 31 , 32 , 33 } , { Min = 300 , Max = 900 } ) -- Uptown Druggie
	AddNPC( Vector( -14736 , 2707 , 448 ), Angle( 0 , 180 , 0 ) , "OCRP_ShopMenu" , "npc_eli" , "Materials" , { 2 , 3 , 4 , 31 , 32 , 33 } , { Min = 300 , Max = 900 } ) -- Outtown Druggie

	AddNPC( Vector( 2017 , 3133 , 550 ), Angle( 0 , 0 , 0 ) , "OCRP_ShopMenu" , "npc_gman" , "Cheepies" , { 28 } )
	AddNPC( Vector( 2017 , 2360 , 550 ), Angle( 0 , 0 , 0 ) , "OCRP_ShopMenu" , "npc_barney" , "Furniture" , { 29 } )
	AddNPC( Vector( -4906 , -5163 , 75 ), Angle( 0 , 270 , 0 ) , "OCRP_ShopMenu" , "npc_kleiner" , "Librarian" , { 11 , 12 , 13 , 14 , 15 , 16 , 17 , 18 , 19 , 20 , 21 , 22 , 23 , 24 , 25 } , { Min = 120 , Max = 300 } ) -- City Hall Librarian

end

--------------------------------------------------
--------------------------------------------------
-- Properties
--------------------------------------------------
--------------------------------------------------

GM.Properties["rp_rockford_v2b"] = {}
GM.Properties["rp_rockford_v2b"][1] = {

	["Name"] = "103-1 Cosmos St." ,
	["Desc"] = "Small 2-room office in City Hall complex" , 
	["Price"] = 650 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_103cosmo" , 
	["Icon2"] = "rockfordv2b_103cosmo" ,
}
GM.Properties["rp_rockford_v2b"][1].Doors[2506] = true
GM.Properties["rp_rockford_v2b"][1].Doors[2507] = true
GM.Properties["rp_rockford_v2b"][1].Doors[2512] = true
GM.Properties["rp_rockford_v2b"][1].Doors[2513] = true

GM.Properties["rp_rockford_v2b"][2] = {
	["Name"] = "103-2 Cosmos St." ,
	["Desc"] = "Small 2-room office in City Hall complex" , 
	["Price"] = 650 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_103cosmo" , 
	["Icon2"] = "rockfordv2b_103cosmo" ,
}
GM.Properties["rp_rockford_v2b"][2].Doors[2508] = true
GM.Properties["rp_rockford_v2b"][2].Doors[2509] = true
GM.Properties["rp_rockford_v2b"][2].Doors[2510] = true
GM.Properties["rp_rockford_v2b"][2].Doors[2511] = true

GM.Properties["rp_rockford_v2b"][3] = {
	["Name"] = "102-1 Cosmos St." ,
	["Desc"] = "2-room apartment across from City Hall complex" , 
	["Price"] = 400 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_102cosmo" , 
	["Icon2"] = "rockfordv2b_102cosmo1" ,
}
GM.Properties["rp_rockford_v2b"][3].Doors[1236] = true
GM.Properties["rp_rockford_v2b"][3].Doors[1237] = true
GM.Properties["rp_rockford_v2b"][3].Doors[1238] = true

GM.Properties["rp_rockford_v2b"][4] = {
	["Name"] = "102-2 Cosmos St." ,
	["Desc"] = "2-room apartment across from City Hall complex" , 
	["Price"] = 400 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_102cosmo" , 
	["Icon2"] = "rockfordv2b_102cosmo2" ,
}
GM.Properties["rp_rockford_v2b"][4].Doors[1239] = true
GM.Properties["rp_rockford_v2b"][4].Doors[1240] = true
GM.Properties["rp_rockford_v2b"][4].Doors[1241] = true

GM.Properties["rp_rockford_v2b"][5] = {
	["Name"] = "102-3 Cosmos St." ,
	["Desc"] = "2-room apartment across from City Hall complex" , 
	["Price"] = 400 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_102cosmo" , 
	["Icon2"] = "rockfordv2b_102cosmo3" ,
}
GM.Properties["rp_rockford_v2b"][5].Doors[1242] = true
GM.Properties["rp_rockford_v2b"][5].Doors[1243] = true
GM.Properties["rp_rockford_v2b"][5].Doors[1244] = true

GM.Properties["rp_rockford_v2b"][6] = {
	["Name"] = "106-1 Cosmos St." ,
	["Desc"] = "2-room apartment across from City Hall complex" , 
	["Price"] = 400 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_106cosmo" , 
	["Icon2"] = "rockfordv2b_106cosmo1" ,
}
GM.Properties["rp_rockford_v2b"][6].Doors[1251] = true
GM.Properties["rp_rockford_v2b"][6].Doors[1252] = true
GM.Properties["rp_rockford_v2b"][6].Doors[1253] = true

GM.Properties["rp_rockford_v2b"][7] = {
	["Name"] = "106-2 Cosmos St." ,
	["Desc"] = "2-room apartment across from City Hall complex" , 
	["Price"] = 400 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_106cosmo" , 
	["Icon2"] = "rockfordv2b_106cosmo2" ,
}
GM.Properties["rp_rockford_v2b"][7].Doors[1245] = true
GM.Properties["rp_rockford_v2b"][7].Doors[1246] = true
GM.Properties["rp_rockford_v2b"][7].Doors[1247] = true

GM.Properties["rp_rockford_v2b"][8] = {
	["Name"] = "106-3 Cosmos St." ,
	["Desc"] = "2-room apartment across from City Hall complex" , 
	["Price"] = 400 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_106cosmo" , 
	["Icon2"] = "rockfordv2b_106cosmo3" ,
}
GM.Properties["rp_rockford_v2b"][8].Doors[1248] = true
GM.Properties["rp_rockford_v2b"][8].Doors[1249] = true
GM.Properties["rp_rockford_v2b"][8].Doors[1250] = true

GM.Properties["rp_rockford_v2b"][9] = {
	["Name"] = "169 Cosmos St." ,
	["Desc"] = "1-room shop next to Police Station" , 
	["Price"] = 750 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_169cosmo" , 
	["Icon2"] = "rockfordv2b_169cosmo" ,
}
GM.Properties["rp_rockford_v2b"][9].Doors[1636] = true
GM.Properties["rp_rockford_v2b"][9].Doors[1637] = true

GM.Properties["rp_rockford_v2b"][10] = {
	["Name"] = "195 Cosmos St." ,
	["Desc"] = "1-room shop on corner of Broadway and Cosmos" , 
	["Price"] = 800 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_195cosmo" , 
	["Icon2"] = "rockfordv2b_195cosmo" ,
}
GM.Properties["rp_rockford_v2b"][10].Doors[1634] = true
GM.Properties["rp_rockford_v2b"][10].Doors[1635] = true

GM.Properties["rp_rockford_v2b"][11] = {
	["Name"] = "190 Main St." ,
	["Desc"] = "1-room shop on corner of Broadway and Main" , 
	["Price"] = 600 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_190main" , 
	["Icon2"] = "rockfordv2b_190main" ,
}
GM.Properties["rp_rockford_v2b"][11].Doors[1645] = true

GM.Properties["rp_rockford_v2b"][12] = {
	["Name"] = "Club Catalyst" ,
	["Desc"] = "Swanky underground club on Main St." , 
	["Price"] = 1992 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_club" , 
	["Icon2"] = "rockfordv2b_club" ,
}
GM.Properties["rp_rockford_v2b"][12].Doors[2326] = true
GM.Properties["rp_rockford_v2b"][12].Doors[2327] = true

GM.Properties["rp_rockford_v2b"][13] = {
	["Name"] = "223 Main St." ,
	["Desc"] = "2-room shop on Main St." , 
	["Price"] = 1200 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_223main" , 
	["Icon2"] = "rockfordv2b_223main" ,
}
GM.Properties["rp_rockford_v2b"][13].Doors[1640] = true
GM.Properties["rp_rockford_v2b"][13].Doors[1641] = true
GM.Properties["rp_rockford_v2b"][13].Doors[1970] = true

GM.Properties["rp_rockford_v2b"][14] = {
	["Name"] = "239 Main St." ,
	["Desc"] = "1-room shop on Main St." , 
	["Price"] = 900 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_239main" , 
	["Icon2"] = "rockfordv2b_239main" ,
}
GM.Properties["rp_rockford_v2b"][14].Doors[1638] = true
GM.Properties["rp_rockford_v2b"][14].Doors[1639] = true
GM.Properties["rp_rockford_v2b"][14].Doors[1968] = true

GM.Properties["rp_rockford_v2b"][15] = {
	["Name"] = "255 Main St." ,
	["Desc"] = "1-room shop on Main St." , 
	["Price"] = 600 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_255main" , 
	["Icon2"] = "rockfordv2b_255main" ,
}
GM.Properties["rp_rockford_v2b"][15].Doors[1644] = true
GM.Properties["rp_rockford_v2b"][15].Doors[1967] = true

GM.Properties["rp_rockford_v2b"][16] = {
	["Name"] = "121 Grant Ave." ,
	["Desc"] = "Large warehouse on Grant Ave." , 
	["Price"] = 1000 ,
	["Doors"] = {} ,
	["type"] = "industrial" ,
	["Icon1"] = "rockfordv2b_121grant" , 
	["Icon2"] = "rockfordv2b_121grant" ,
}
GM.Properties["rp_rockford_v2b"][16].Doors[1644] = true
GM.Properties["rp_rockford_v2b"][16].Doors[1967] = true

GM.Properties["rp_rockford_v2b"][17] = {
	["Name"] = "327 Cosmos St." ,
	["Desc"] = "Large power station complex" , 
	["Price"] = 4500 ,
	["Doors"] = {} ,
	["type"] = "industrial" ,
	["Icon1"] = "rockfordv2b_327cosmo" , 
	["Icon2"] = "rockfordv2b_327cosmo" ,
}
GM.Properties["rp_rockford_v2b"][17].Doors[1568] = true
GM.Properties["rp_rockford_v2b"][17].Doors[1577] = true
GM.Properties["rp_rockford_v2b"][17].Doors[1986] = true
GM.Properties["rp_rockford_v2b"][17].Doors[1987] = true
GM.Properties["rp_rockford_v2b"][17].Doors[1989] = true
GM.Properties["rp_rockford_v2b"][17].Doors[1578] = true

GM.Properties["rp_rockford_v2b"][18] = {
	["Name"] = "330 Main St." ,
	["Desc"] = "Large warehouse complex" , 
	["Price"] = 2000 ,
	["Doors"] = {} ,
	["type"] = "industrial" ,
	["Icon1"] = "rockfordv2b_330main" , 
	["Icon2"] = "rockfordv2b_330main" ,
}
GM.Properties["rp_rockford_v2b"][18].Doors[3177] = true
GM.Properties["rp_rockford_v2b"][18].Doors[3178] = true
GM.Properties["rp_rockford_v2b"][18].Doors[3179] = true

GM.Properties["rp_rockford_v2b"][19] = {
	["Name"] = "339 Broadway Ave." ,
	["Desc"] = "Taco Bell restaurant" , 
	["Price"] = 1600 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_339broad" , 
	["Icon2"] = "rockfordv2b_339broad" ,
}
GM.Properties["rp_rockford_v2b"][19].Doors[1630] = true
GM.Properties["rp_rockford_v2b"][19].Doors[1631] = true
GM.Properties["rp_rockford_v2b"][19].Doors[1720] = true
GM.Properties["rp_rockford_v2b"][19].Doors[1721] = true

GM.Properties["rp_rockford_v2b"][20] = {
	["Name"] = "Rockford Dreams Cinema" ,
	["Desc"] = "Single-screen cinema across from Taco Bell" , 
	["Price"] = 4000 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_cinema" , 
	["Icon2"] = "rockfordv2b_cinema" ,
}
GM.Properties["rp_rockford_v2b"][20].Doors[3803] = true
GM.Properties["rp_rockford_v2b"][20].Doors[3804] = true
GM.Properties["rp_rockford_v2b"][20].Doors[3805] = true
GM.Properties["rp_rockford_v2b"][20].Doors[3806] = true
GM.Properties["rp_rockford_v2b"][20].Doors[3807] = true
GM.Properties["rp_rockford_v2b"][20].Doors[3808] = true

GM.Properties["rp_rockford_v2b"][21] = {
	["Name"] = "215 Century St." ,
	["Desc"] = "Pacific Standard Tavern" , 
	["Price"] = 1500 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_215century" , 
	["Icon2"] = "rockfordv2b_215century" ,
}
GM.Properties["rp_rockford_v2b"][21].Doors[3849] = true
GM.Properties["rp_rockford_v2b"][21].Doors[3850] = true

GM.Properties["rp_rockford_v2b"][22] = {
	["Name"] = "315-1 Grif Dr." ,
	["Desc"] = "1st floor 2-bed, 1-bath" , 
	["Price"] = 1600 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_315" , 
	["Icon2"] = "rockfordv2b_mesa_1a" ,
}
GM.Properties["rp_rockford_v2b"][22].Doors[1681] = true
GM.Properties["rp_rockford_v2b"][22].Doors[1674] = true
GM.Properties["rp_rockford_v2b"][22].Doors[1678] = true
GM.Properties["rp_rockford_v2b"][22].Doors[1675] = true

GM.Properties["rp_rockford_v2b"][23] = {
	["Name"] = "315-2 Grif Dr." ,
	["Desc"] = "1st floor 2-bed, 1-bath" , 
	["Price"] = 1600 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_315" , 
	["Icon2"] = "rockfordv2b_mesa_2a" ,
}
GM.Properties["rp_rockford_v2b"][23].Doors[1680] = true
GM.Properties["rp_rockford_v2b"][23].Doors[1676] = true
GM.Properties["rp_rockford_v2b"][23].Doors[1679] = true
GM.Properties["rp_rockford_v2b"][23].Doors[1677] = true

GM.Properties["rp_rockford_v2b"][24] = {
	["Name"] = "315-3 Grif Dr." ,
	["Desc"] = "2nd floor 2-bed, 1-bath, balcony" , 
	["Price"] = 1800 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_315" , 
	["Icon2"] = "rockfordv2b_mesa_1b" ,
}
GM.Properties["rp_rockford_v2b"][24].Doors[1683] = true
GM.Properties["rp_rockford_v2b"][24].Doors[1686] = true
GM.Properties["rp_rockford_v2b"][24].Doors[1682] = true
GM.Properties["rp_rockford_v2b"][24].Doors[1691] = true
GM.Properties["rp_rockford_v2b"][24].Doors[1689] = true

GM.Properties["rp_rockford_v2b"][25] = {
	["Name"] = "315-4 Grif Dr." ,
	["Desc"] = "2nd floor 2-bed, 1-bath, balcony" , 
	["Price"] = 1800 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_315" , 
	["Icon2"] = "rockfordv2b_mesa_2b" ,
}
GM.Properties["rp_rockford_v2b"][25].Doors[1685] = true
GM.Properties["rp_rockford_v2b"][25].Doors[1687] = true
GM.Properties["rp_rockford_v2b"][25].Doors[1684] = true
GM.Properties["rp_rockford_v2b"][25].Doors[1690] = true
GM.Properties["rp_rockford_v2b"][25].Doors[1688] = true

GM.Properties["rp_rockford_v2b"][26] = {
	["Name"] = "315-5 Grif Dr." ,
	["Desc"] = "3rd floor 2-bed, 1-bath, balcony" , 
	["Price"] = 2000 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_315" , 
	["Icon2"] = "rockfordv2b_mesa_1b" ,
}
GM.Properties["rp_rockford_v2b"][26].Doors[1693] = true
GM.Properties["rp_rockford_v2b"][26].Doors[1696] = true
GM.Properties["rp_rockford_v2b"][26].Doors[1692] = true
GM.Properties["rp_rockford_v2b"][26].Doors[1701] = true
GM.Properties["rp_rockford_v2b"][26].Doors[1699] = true

GM.Properties["rp_rockford_v2b"][27] = {
	["Name"] = "315-6 Grif Dr." ,
	["Desc"] = "3rd floor 2-bed, 1-bath, balcony" , 
	["Price"] = 2000 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_315" , 
	["Icon2"] = "rockfordv2b_mesa_2b" ,
}
GM.Properties["rp_rockford_v2b"][27].Doors[1695] = true
GM.Properties["rp_rockford_v2b"][27].Doors[1697] = true
GM.Properties["rp_rockford_v2b"][27].Doors[1694] = true
GM.Properties["rp_rockford_v2b"][27].Doors[1700] = true
GM.Properties["rp_rockford_v2b"][27].Doors[1698] = true

GM.Properties["rp_rockford_v2b"][28] = {
	["Name"] = "325-1 Grif Dr." ,
	["Desc"] = "1st floor 2-bed, 1-bath" , 
	["Price"] = 1600 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_325" , 
	["Icon2"] = "rockfordv2b_mesa_1a" ,
}
GM.Properties["rp_rockford_v2b"][28].Doors[1666] = true
GM.Properties["rp_rockford_v2b"][28].Doors[1667] = true
GM.Properties["rp_rockford_v2b"][28].Doors[1670] = true
GM.Properties["rp_rockford_v2b"][28].Doors[1673] = true

GM.Properties["rp_rockford_v2b"][29] = {
	["Name"] = "325-2 Grif Dr." ,
	["Desc"] = "1st floor 2-bed, 1-bath" , 
	["Price"] = 1600 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_325" , 
	["Icon2"] = "rockfordv2b_mesa_2a" ,
}
GM.Properties["rp_rockford_v2b"][29].Doors[1668] = true
GM.Properties["rp_rockford_v2b"][29].Doors[1669] = true
GM.Properties["rp_rockford_v2b"][29].Doors[1671] = true
GM.Properties["rp_rockford_v2b"][29].Doors[1672] = true

GM.Properties["rp_rockford_v2b"][30] = {
	["Name"] = "325-3 Grif Dr." ,
	["Desc"] = "2nd floor 2-bed, 1-bath, balcony" , 
	["Price"] = 1800 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_325" , 
	["Icon2"] = "rockfordv2b_mesa_1b" ,
}
GM.Properties["rp_rockford_v2b"][30].Doors[1656] = true
GM.Properties["rp_rockford_v2b"][30].Doors[1657] = true
GM.Properties["rp_rockford_v2b"][30].Doors[1660] = true
GM.Properties["rp_rockford_v2b"][30].Doors[1663] = true
GM.Properties["rp_rockford_v2b"][30].Doors[1665] = true

GM.Properties["rp_rockford_v2b"][31] = {
	["Name"] = "325-4 Grif Dr." ,
	["Desc"] = "2nd floor 2-bed, 1-bath, balcony" , 
	["Price"] = 1800 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_325" , 
	["Icon2"] = "rockfordv2b_mesa_2b" ,
}
GM.Properties["rp_rockford_v2b"][31].Doors[1658] = true
GM.Properties["rp_rockford_v2b"][31].Doors[1659] = true
GM.Properties["rp_rockford_v2b"][31].Doors[1661] = true
GM.Properties["rp_rockford_v2b"][31].Doors[1662] = true
GM.Properties["rp_rockford_v2b"][31].Doors[1664] = true

GM.Properties["rp_rockford_v2b"][32] = {
	["Name"] = "325-5 Grif Dr." ,
	["Desc"] = "3rd floor 2-bed, 1-bath, balcony" , 
	["Price"] = 2000 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_325" , 
	["Icon2"] = "rockfordv2b_mesa_1b" ,
}
GM.Properties["rp_rockford_v2b"][32].Doors[1646] = true
GM.Properties["rp_rockford_v2b"][32].Doors[1647] = true
GM.Properties["rp_rockford_v2b"][32].Doors[1650] = true
GM.Properties["rp_rockford_v2b"][32].Doors[1653] = true
GM.Properties["rp_rockford_v2b"][32].Doors[1655] = true

GM.Properties["rp_rockford_v2b"][33] = {
	["Name"] = "325-6 Grif Dr." ,
	["Desc"] = "3rd floor 2-bed, 1-bath, balcony" , 
	["Price"] = 2000 ,
	["Doors"] = {} ,
	["type"] = "apartment" ,
	["Icon1"] = "rockfordv2b_mesa_325" , 
	["Icon2"] = "rockfordv2b_mesa_2b" ,
}
GM.Properties["rp_rockford_v2b"][33].Doors[1648] = true
GM.Properties["rp_rockford_v2b"][33].Doors[1649] = true
GM.Properties["rp_rockford_v2b"][33].Doors[1651] = true
GM.Properties["rp_rockford_v2b"][33].Doors[1652] = true
GM.Properties["rp_rockford_v2b"][33].Doors[1654] = true

GM.Properties["rp_rockford_v2b"][34] = {
	["Name"] = "J&M Glass Co." ,
	["Desc"] = "Warehouse on corner of Century and N. Perimeter Rd." , 
	["Price"] = 1100 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_jmglass" , 
	["Icon2"] = "rockfordv2b_jmglass" ,
}
GM.Properties["rp_rockford_v2b"][34].Doors[3011] = true

GM.Properties["rp_rockford_v2b"][35] = {
	["Name"] = "KellCo." ,
	["Desc"] = "Warehouse on corner of W. & N. Perimeter Rd." , 
	["Price"] = 1100 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_kellco" , 
	["Icon2"] = "rockfordv2b_kellco" ,
}
GM.Properties["rp_rockford_v2b"][35].Doors[3023] = true

GM.Properties["rp_rockford_v2b"][36] = {
	["Name"] = "26153 S. Perimeter Rd." ,
	["Desc"] = "Country home on S. Perimeter Rd." , 
	["Price"] = 2800 ,
	["Doors"] = {} ,
	["type"] = "house" ,
	["Icon1"] = "rockfordv2b_26153sperimeter" , 
	["Icon2"] = "rockfordv2b_26153sperimeter" ,
}
GM.Properties["rp_rockford_v2b"][36].Doors[2937] = true
GM.Properties["rp_rockford_v2b"][36].Doors[2938] = true
GM.Properties["rp_rockford_v2b"][36].Doors[2939] = true
GM.Properties["rp_rockford_v2b"][36].Doors[2940] = true
GM.Properties["rp_rockford_v2b"][36].Doors[2941] = true
GM.Properties["rp_rockford_v2b"][36].Doors[1444] = true
GM.Properties["rp_rockford_v2b"][36].Doors[1445] = true
GM.Properties["rp_rockford_v2b"][36].Doors[1446] = true
GM.Properties["rp_rockford_v2b"][36].Doors[1447] = true
GM.Properties["rp_rockford_v2b"][36].Doors[1448] = true
GM.Properties["rp_rockford_v2b"][36].Doors[1449] = true
GM.Properties["rp_rockford_v2b"][36].Doors[1450] = true
GM.Properties["rp_rockford_v2b"][36].Doors[1451] = true
GM.Properties["rp_rockford_v2b"][36].Doors[3556] = true
GM.Properties["rp_rockford_v2b"][36].Doors[3558] = true

GM.Properties["rp_rockford_v2b"][37] = {
	["Name"] = "Southwestern Disposal" ,
	["Desc"] = "Warehouse on S. Perimeter Rd." , 
	["Price"] = 1100 ,
	["Doors"] = {} ,
	["type"] = "business" ,
	["Icon1"] = "rockfordv2b_swdisposal" , 
	["Icon2"] = "rockfordv2b_swdisposal" ,
}
GM.Properties["rp_rockford_v2b"][37].Doors[3036] = true

GM.Properties["rp_rockford_v2b"][38] = {
	["Name"] = "1 Bay View Dr." ,
	["Desc"] = "Large chalet near the bay." , 
	["Price"] = 4200 ,
	["Doors"] = {} ,
	["type"] = "house" ,
	["Icon1"] = "rockfordv2b_1bay" , 
	["Icon2"] = "rockfordv2b_1bay" ,
}
GM.Properties["rp_rockford_v2b"][38].Doors[1462] = true
GM.Properties["rp_rockford_v2b"][38].Doors[1463] = true
GM.Properties["rp_rockford_v2b"][38].Doors[1464] = true
GM.Properties["rp_rockford_v2b"][38].Doors[1465] = true
GM.Properties["rp_rockford_v2b"][38].Doors[1466] = true
GM.Properties["rp_rockford_v2b"][38].Doors[1467] = true
GM.Properties["rp_rockford_v2b"][38].Doors[1468] = true
GM.Properties["rp_rockford_v2b"][38].Doors[1469] = true

GM.Properties["rp_rockford_v2b"][39] = {
	["Name"] = "2 Bay View Dr." ,
	["Desc"] = "Large chalet near the bay." , 
	["Price"] = 4200 ,
	["Doors"] = {} ,
	["type"] = "house" ,
	["Icon1"] = "rockfordv2b_2bay" , 
	["Icon2"] = "rockfordv2b_1bay" ,
}
GM.Properties["rp_rockford_v2b"][39].Doors[1454] = true
GM.Properties["rp_rockford_v2b"][39].Doors[1455] = true
GM.Properties["rp_rockford_v2b"][39].Doors[1456] = true
GM.Properties["rp_rockford_v2b"][39].Doors[1457] = true
GM.Properties["rp_rockford_v2b"][39].Doors[1458] = true
GM.Properties["rp_rockford_v2b"][39].Doors[1459] = true
GM.Properties["rp_rockford_v2b"][39].Doors[1460] = true
GM.Properties["rp_rockford_v2b"][39].Doors[1461] = true

GM.Properties["rp_rockford_v2b"][40] = {
	["Name"] = "1 Richard Dr." ,
	["Desc"] = "2-bed, 1-bath suburban home" , 
	["Price"] = 4200 ,
	["Doors"] = {} ,
	["type"] = "house" ,
	["Icon1"] = "rockfordv2b_1richard" , 
	["Icon2"] = "rockfordv2b_1richard" ,
}
GM.Properties["rp_rockford_v2b"][40].Doors[1296] = true
GM.Properties["rp_rockford_v2b"][40].Doors[1297] = true
GM.Properties["rp_rockford_v2b"][40].Doors[1298] = true
GM.Properties["rp_rockford_v2b"][40].Doors[1299] = true
GM.Properties["rp_rockford_v2b"][40].Doors[1705] = true

GM.Properties["rp_rockford_v2b"][41] = {
	["Name"] = "3 Richard Dr." ,
	["Desc"] = "2-story, 4-bed, 3-bath, 2-car garage, basement" , 
	["Price"] = 9001 ,
	["Doors"] = {} ,
	["type"] = "house" ,
	["Icon1"] = "rockfordv2b_3richard" , 
	["Icon2"] = "rockfordv2b_3richard" ,
}
GM.Properties["rp_rockford_v2b"][41].Doors[1625] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1331] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1324] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1323] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1327] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1328] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1320] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1322] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1321] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1319] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1325] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1326] = true
GM.Properties["rp_rockford_v2b"][41].Doors[1707] = true

GM.Properties["rp_rockford_v2b"][42] = {
	["Name"] = "6 Richard Dr." ,
	["Desc"] = "2-bed, 2-bath, 1-car garage, basement" , 
	["Price"] = 5600 ,
	["Doors"] = {} ,
	["type"] = "house" ,
	["Icon1"] = "rockfordv2b_6richard" , 
	["Icon2"] = "rockfordv2b_6richard" ,
}
GM.Properties["rp_rockford_v2b"][42].Doors[1287] = true
GM.Properties["rp_rockford_v2b"][42].Doors[1288] = true
GM.Properties["rp_rockford_v2b"][42].Doors[1289] = true
GM.Properties["rp_rockford_v2b"][42].Doors[1290] = true
GM.Properties["rp_rockford_v2b"][42].Doors[1291] = true
GM.Properties["rp_rockford_v2b"][42].Doors[1292] = true
GM.Properties["rp_rockford_v2b"][42].Doors[1293] = true
GM.Properties["rp_rockford_v2b"][42].Doors[1294] = true
GM.Properties["rp_rockford_v2b"][42].Doors[1295] = true

GM.Properties["rp_rockford_v2b"][43] = {
	["Name"] = "8 Richard Dr." ,
	["Desc"] = "2-bed, 1-bath" , 
	["Price"] = 4600 ,
	["Doors"] = {} ,
	["type"] = "house" ,
	["Icon1"] = "rockfordv2b_8richard" , 
	["Icon2"] = "rockfordv2b_8richard" ,
}
GM.Properties["rp_rockford_v2b"][43].Doors[1300] = true
GM.Properties["rp_rockford_v2b"][43].Doors[1301] = true
GM.Properties["rp_rockford_v2b"][43].Doors[1302] = true
GM.Properties["rp_rockford_v2b"][43].Doors[1303] = true
GM.Properties["rp_rockford_v2b"][43].Doors[1304] = true
GM.Properties["rp_rockford_v2b"][43].Doors[1305] = true
GM.Properties["rp_rockford_v2b"][43].Doors[1306] = true
GM.Properties["rp_rockford_v2b"][43].Doors[1307] = true
GM.Properties["rp_rockford_v2b"][43].Doors[1711] = true

GM.Properties["rp_rockford_v2b"][44] = {
	["Name"] = "10 Richard Dr." ,
	["Desc"] = "2-story, 3-bed, 2-bath, 2-car garage" , 
	["Price"] = 7500 ,
	["Doors"] = {} ,
	["type"] = "house" ,
	["Icon1"] = "rockfordv2b_10richard" , 
	["Icon2"] = "rockfordv2b_10richard" ,
}
GM.Properties["rp_rockford_v2b"][44].Doors[1308] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1310] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1311] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1312] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1313] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1314] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1315] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1316] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1317] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1318] = true
GM.Properties["rp_rockford_v2b"][44].Doors[1709] = true

GM.Properties["rp_rockford_v2b"][45] = {
	["Name"] = "11 Richard Dr." ,
	["Desc"] = "2-bed, 1-bath" , 
	["Price"] = 3800 ,
	["Doors"] = {} ,
	["type"] = "house" ,
	["Icon1"] = "rockfordv2b_11richard" , 
	["Icon2"] = "rockfordv2b_11richard" ,
}
GM.Properties["rp_rockford_v2b"][45].Doors[1280] = true
GM.Properties["rp_rockford_v2b"][45].Doors[1281] = true
GM.Properties["rp_rockford_v2b"][45].Doors[1282] = true
GM.Properties["rp_rockford_v2b"][45].Doors[1283] = true
GM.Properties["rp_rockford_v2b"][45].Doors[1284] = true
GM.Properties["rp_rockford_v2b"][45].Doors[1285] = true
GM.Properties["rp_rockford_v2b"][45].Doors[1286] = true
GM.Properties["rp_rockford_v2b"][45].Doors[1623] = true
GM.Properties["rp_rockford_v2b"][45].Doors[1624] = true
GM.Properties["rp_rockford_v2b"][45].Doors[1703] = true

for k,v in pairs(GM.Maps["rp_rockford_v2b"].Police) do

	GM.Maps["rp_rockford_v2b"].Locked[k] = true

end