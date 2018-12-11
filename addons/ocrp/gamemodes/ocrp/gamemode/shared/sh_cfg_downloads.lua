
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
-- DOWNLOAD CONFIG FILE
-- 
-- BYPASS MAKING A COLLECTION AND DO IT ON THE FLY
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

if SERVER then

	maplist = {}

	maplist["rp_rockford_v2b"] = "328735857" -- Rockford Content
	maplist["rp_rockford_v2b"] = "622810630" -- Rockford v2b Map

	maplist["rp_rockford_v1b"] = "328735857" -- Rockford Content
	maplist["rp_rockford_v1b"] = "328735094" -- Rockford v2b Map

	maplist["rp_evocity_v4b1"] = "734371493" -- EvoCity v4b1 Map
	maplist["rp_evocity_v4b1"] = "734375270" -- EvoCity v4b1 Materials 1
	maplist["rp_evocity_v4b1"] = "734377619" -- EvoCity v4b1 Materials 2
	maplist["rp_evocity_v4b1"] = "734374060" -- EvoCity v4b1 Models

	maplist["rp_evocity2_v5p"] = "538207599" -- EvoCity2 v5p Map
	maplist["rp_evocity2_v5p"] = "538347004" -- EvoCity2 v5p Content 1
	maplist["rp_evocity2_v5p"] = "538350412" -- EvoCity2 v5p Content 2

	-- Gets the current map name
	local map = game.GetMap()
	
	-- Finds the workshop ID for the current map name from the table above
	local workshopid = maplist[map] 

	if( workshopid != nil )then
	
		--If the map is in the table above, add it through workshop
		print( "[WORKSHOP] Setting up map download: " ..map.. " has workshop ID of: " ..workshopid )
		
		resource.AddWorkshop( workshopid )
		
	else
	
		--If not, then hope the server has FastDL or the client has the map
		print( "[WORKSHOP] Not available for current map." )
		
	end

	resource.AddWorkshop( "930052371" ) -- OCRP Content
	resource.AddWorkshop( "505106454" ) -- V92 Base
	resource.AddWorkshop( "763938735" ) -- V92 Base - Ammo Crates
	resource.AddWorkshop( "763862893" ) -- V92 Base - HEAT Pack
	resource.AddWorkshop( "788152557" ) -- V92 Base - CS:S Pack
	resource.AddWorkshop( "941433215" ) -- V92 Base - Unarmed
	resource.AddWorkshop( "851168781" ) -- V92 Base - Characters - Faces/Eyes/Arms
	resource.AddWorkshop( "1171821076" ) -- V92 Base - Characters - Bodies

	resource.AddWorkshop( "218917501" ) -- Simple Weather Content
	resource.AddWorkshop( "563592174" ) -- Simple Weather Disaster DLC Content

	resource.AddWorkshop( "757604550" ) -- wOS Base
	resource.AddWorkshop( "918084741" ) -- wOS Base - Prone Extension
	resource.AddWorkshop( "775573383" ) -- Prone Mod - wOS Base

	resource.AddWorkshop( "519350361" ) -- Maestro
	resource.AddWorkshop( "972202461" ) -- Maestro - V92 Plugins

	resource.AddWorkshop( "771487490" ) -- Simfphys Base
	resource.AddWorkshop( "831680603" ) -- Simfphys Armed Base

	resource.AddWorkshop( "632470227" ) -- VCMod

	resource.AddWorkshop( "540471399" ) -- Sickness Vehicles 1 of 2
	resource.AddWorkshop( "540473319" ) -- Sickness Vehicles 2 of 2

	resource.AddWorkshop( "112606459" ) -- TDM - Base
	resource.AddWorkshop( "469162158" ) -- TDM - Alfa Romeo
	resource.AddWorkshop( "195481065" ) -- TDM - American Truck
	resource.AddWorkshop( "126921199" ) -- TDM - Aston Martin
	resource.AddWorkshop( "113120185" ) -- TDM - Audi
	resource.AddWorkshop( "113118541" ) -- TDM - BMW
	resource.AddWorkshop( "119146471" ) -- TDM - Bugatti
	resource.AddWorkshop( "126920533" ) -- TDM - Cadillac
	resource.AddWorkshop( "113997239" ) -- TDM - Chevy
	resource.AddWorkshop( "176984840" ) -- TDM - Chrysler
	resource.AddWorkshop( "114000337" ) -- TDM - Citroen
	resource.AddWorkshop( "777864203" ) -- TDM - Commercial
	resource.AddWorkshop( "114001545" ) -- TDM - Dodge
	resource.AddWorkshop( "349281554" ) -- TDM - EMS
	resource.AddWorkshop( "469173046" ) -- TDM - Euro Truck
	resource.AddWorkshop( "119148996" ) -- TDM - Ferrari
	resource.AddWorkshop( "113999373" ) -- TDM - Ford
	resource.AddWorkshop( "120766823" ) -- TDM - GMC
	resource.AddWorkshop( "234464092" ) -- TDM - Holden
	resource.AddWorkshop( "209683096" ) -- TDM - Honda
	resource.AddWorkshop( "120765874" ) -- TDM - Hudson
	resource.AddWorkshop( "221198333" ) -- TDM - Hummer
	resource.AddWorkshop( "556698122" ) -- TDM - Jaguar
	resource.AddWorkshop( "224183198" ) -- TDM - Jeep
	resource.AddWorkshop( "226435666" ) -- TDM - Kia
	resource.AddWorkshop( "119148120" ) -- TDM - Lambo
	resource.AddWorkshop( "230680318" ) -- TDM - Land Rover
	resource.AddWorkshop( "494665724" ) -- TDM - Lexus
	resource.AddWorkshop( "423749944" ) -- TDM - Maserati
	resource.AddWorkshop( "233934024" ) -- TDM - Mazda
	resource.AddWorkshop( "217264937" ) -- TDM - McLaren
	resource.AddWorkshop( "131246684" ) -- TDM - Mercedes
	resource.AddWorkshop( "123455501" ) -- TDM - Mini
	resource.AddWorkshop( "131243694" ) -- TDM - Mitsubishi
	resource.AddWorkshop( "225810491" ) -- TDM - Multi-Brand
	resource.AddWorkshop( "123455885" ) -- TDM - Nissan
	resource.AddWorkshop( "254930849" ) -- TDM - Pagani
	resource.AddWorkshop( "556706101" ) -- TDM - Pontiac
	resource.AddWorkshop( "259899351" ) -- TDM - Porsche
	resource.AddWorkshop( "261961088" ) -- TDM - Scion
	resource.AddWorkshop( "266504181" ) -- TDM - Subaru
	resource.AddWorkshop( "131245637" ) -- TDM - Toyota
	resource.AddWorkshop( "215871671" ) -- TDM - Trailers
	resource.AddWorkshop( "272988660" ) -- TDM - Vauxhall
	resource.AddWorkshop( "123456202" ) -- TDM - Volkswagen
	resource.AddWorkshop( "286998866" ) -- TDM - Volvo

end

if CLIENT then

end