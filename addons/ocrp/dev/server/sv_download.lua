
AddCSLuaFile()

maplist = {}

maplist["rp_evocity_v4b1"] = "734371493" -- Map
maplist["rp_evocity_v4b1"] = "734375270" -- Materials 1
maplist["rp_evocity_v4b1"] = "734377619" -- Materials 2
maplist["rp_evocity_v4b1"] = "734374060" -- Models

maplist["rp_evocity2_v5p"] = "538207599" -- Map
maplist["rp_evocity2_v5p"] = "538347004" -- Content Pt. 1
maplist["rp_evocity2_v5p"] = "538350412" -- Content Pt. 2

maplist["rp_rockford_v1b"] = "328735094" -- Map
maplist["rp_rockford_v1b"] = "328735857" -- Content

maplist["rp_rockford_v2b"] = "622810630" -- Map
maplist["rp_rockford_v2b"] = "328735857" -- Content

local map = game.GetMap() -- Gets the current map name
local workshopid = maplist[map] -- Finds the workshop ID for the current map name from the table above

if( workshopid != nil )then
	--If the map is in the table above, add it through workshop
	print( "[WORKSHOP] Setting up map download: " ..map.. " has workshop ID of: " ..workshopid )
	resource.AddWorkshop( workshopid )
else
	--If not, then hope the server has FastDL or the client has the map
	print( "[WORKSHOP] Not available for current map." )
end

-- Files

resource.AddWorkshop( "505106454" ) -- V92 Base
resource.AddWorkshop( "851168781" ) -- V92 Character Content
resource.AddWorkshop( "763862893" ) -- V92 HEAT Pack
resource.AddWorkshop( "930052371" ) -- OCRP Content

-- Scripts

resource.AddWorkshop( "775573383" ) -- Prone
resource.AddWorkshop( "757604550" ) -- wOS Base
resource.AddWorkshop( "918084741" ) -- wOS Prone
resource.AddWorkshop( "632470227" ) -- VCMod Content
resource.AddWorkshop( "622773812" ) -- GMPermaWorld
resource.AddWorkshop( "519350361" ) -- Maestro Admin Mod
resource.AddWorkshop( "218917501" ) -- SimpleWeather
resource.AddWorkshop( "563592174" ) -- SimpleWeather Disaster DLC

-- Sgt Sickness

resource.AddWorkshop( "540471399" ) -- Sickness GTAIV Vehicles Pt.1
resource.AddWorkshop( "540473319" ) -- Sickness GTAIV Vehicles Pt.2

-- TDM

resource.AddWorkshop( "112606459" ) -- TDM Base
resource.AddWorkshop( "469162158" ) -- TDM Alfa Romeo
resource.AddWorkshop( "126921199" ) -- TDM Aston Martin
resource.AddWorkshop( "113120185" ) -- TDM Audi
resource.AddWorkshop( "113118541" ) -- TDM BMW
resource.AddWorkshop( "119146471" ) -- TDM Bugatti
resource.AddWorkshop( "126920533" ) -- TDM Cadillac
resource.AddWorkshop( "113997239" ) -- TDM Chevy
resource.AddWorkshop( "176984840" ) -- TDM Chrysler
resource.AddWorkshop( "114000337" ) -- TDM Citroen
resource.AddWorkshop( "777864203" ) -- TDM Commercial
resource.AddWorkshop( "114001545" ) -- TDM Dodge
resource.AddWorkshop( "349281554" ) -- TDM Emergency
resource.AddWorkshop( "469173046" ) -- TDM Euro Trucks
resource.AddWorkshop( "119148996" ) -- TDM Ferrari
resource.AddWorkshop( "113999373" ) -- TDM Ford
resource.AddWorkshop( "120766823" ) -- TDM GMC
resource.AddWorkshop( "234464092" ) -- TDM Holden
resource.AddWorkshop( "209683096" ) -- TDM Honda
resource.AddWorkshop( "120765874" ) -- TDM Hudson
resource.AddWorkshop( "221198333" ) -- TDM Hummer
resource.AddWorkshop( "556698122" ) -- TDM Jaguar
resource.AddWorkshop( "224183198" ) -- TDM Jeep
resource.AddWorkshop( "226435666" ) -- TDM Kia
resource.AddWorkshop( "119148120" ) -- TDM Lambo
resource.AddWorkshop( "230680318" ) -- TDM Land Rover
resource.AddWorkshop( "494665724" ) -- TDM Lexus
resource.AddWorkshop( "423749944" ) -- TDM Maserati
resource.AddWorkshop( "233934024" ) -- TDM Mazda
resource.AddWorkshop( "217264937" ) -- TDM McLaren
resource.AddWorkshop( "131246684" ) -- TDM Mercedes
resource.AddWorkshop( "123455501" ) -- TDM Mini
resource.AddWorkshop( "131243694" ) -- TDM Mitsubishi
resource.AddWorkshop( "225810491" ) -- TDM Multi Brand
resource.AddWorkshop( "195481065" ) -- TDM American Trucks
resource.AddWorkshop( "123455885" ) -- TDM Nissan
resource.AddWorkshop( "254930849" ) -- TDM Pagani
resource.AddWorkshop( "556706101" ) -- TDM Pontiac
resource.AddWorkshop( "259899351" ) -- TDM Porsche
resource.AddWorkshop( "261961088" ) -- TDM Scion
resource.AddWorkshop( "266504181" ) -- TDM Subaru
resource.AddWorkshop( "131245637" ) -- TDM Toyota
resource.AddWorkshop( "215871671" ) -- TDM Trailer
resource.AddWorkshop( "272988660" ) -- TDM Vauxhall
resource.AddWorkshop( "123456202" ) -- TDM Volkswagen
resource.AddWorkshop( "286998866" ) -- TDM Volvo

-- Legacy

resource.AddFile( "materials/rockford_map.jpg" )

resource.AddFile( "models/ocrp2players/busdriver/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/busdriver/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/clothes1/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/clothes1/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/clothes2/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/clothes2/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/clothes3/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/clothes3/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/clothes4/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/clothes4/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/clothes5/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/clothes5/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/clothes6/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/clothes6/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/paramedic/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/paramedic/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/firefighter/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/firefighter/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/mayor/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/mayor/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/police/l1/female_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/female_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/female_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/female_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/female_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/female_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/male_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/male_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/male_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/male_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/male_05.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/male_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/male_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/male_08.mdl" )
resource.AddFile( "models/ocrp2players/police/l1/male_09.mdl" )

resource.AddFile( "models/ocrp2players/police/l2/female_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/female_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/female_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/female_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/female_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/female_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/male_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/male_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/male_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/male_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/male_05.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/male_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/male_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/male_08.mdl" )
resource.AddFile( "models/ocrp2players/police/l2/male_09.mdl" )

resource.AddFile( "models/ocrp2players/police/l3/female_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/female_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/female_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/female_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/female_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/female_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/male_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/male_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/male_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/male_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/male_05.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/male_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/male_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/male_08.mdl" )
resource.AddFile( "models/ocrp2players/police/l3/male_09.mdl" )

resource.AddFile( "models/ocrp2players/police/l4/female_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/female_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/female_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/female_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/female_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/female_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/male_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/male_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/male_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/male_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/male_05.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/male_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/male_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/male_08.mdl" )
resource.AddFile( "models/ocrp2players/police/l4/male_09.mdl" )

resource.AddFile( "models/ocrp2players/police/l5/female_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/female_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/female_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/female_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/female_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/female_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/male_01.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/male_02.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/male_03.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/male_04.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/male_05.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/male_06.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/male_07.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/male_08.mdl" )
resource.AddFile( "models/ocrp2players/police/l5/male_09.mdl" )

resource.AddFile( "models/ocrp2players/towtruck/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/towtruck/10/male_09.mdl" )

resource.AddFile( "models/ocrp2players/swat/10/female_01.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/female_02.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/female_03.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/female_04.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/female_06.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/female_07.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/male_01.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/male_02.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/male_03.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/male_04.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/male_05.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/male_06.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/male_07.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/male_08.mdl" )
resource.AddFile( "models/ocrp2players/swat/10/male_09.mdl" )
