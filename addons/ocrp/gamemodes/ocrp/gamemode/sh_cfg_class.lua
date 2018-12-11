
OCRPCfg[ CLASS_POLICE ] = {

	["Weapons"] = {  
		"v92_heat_m3s90" , 
		"v92_heat_car15" , 
		"v92_heat_uspc" , 
		"ocrp_doorbuster" , 
		"ocrp_handcuffs" , 
		"ocrp_baton" , 
		"ocrp_taser" 
	} ,

	["Condition"] = function( )

		if team.NumPlayers( CLASS_POLICE ) < #player.GetAll( ) / 3 then 

			return true 

		end 

		return false 

	end ,

}

OCRPCfg[ CLASS_CHIEF ] = {

	["Weapons"] = {  
		"v92_heat_m3s90" , 
		"v92_heat_car15" , 
		"v92_heat_uspc" , 
		"ocrp_doorbuster" , 
		"ocrp_handcuffs" , 
		"ocrp_baton" , 
		"ocrp_taser" 
	} ,

	["Condition"] = function( )

		return true 

	end ,

}

OCRPCfg[ CLASS_SWAT ] = {

	["Weapons"] = {  
		"v92_heat_m3s90" , 
		"v92_heat_car15" , 
		"v92_heat_uspc" , 
		"ocrp_doorbuster" , 
		"ocrp_handcuffs" , 
		"ocrp_baton" , 
		"ocrp_taser" 
	} ,

	["Condition"] = function( )

		return true 

	end ,

}	

OCRPCfg[ CLASS_MEDIC ] = {

	["Weapons"] = {
		"ocrp_medkit" ,
		"ocrp_defib" ,
	} ,

	["Condition"] = function( ply ) 

		if team.NumPlayers( CLASS_MEDIC ) < #player.GetAll( ) / 4 then 

			return true 

		end 

		return false 

	end ,

}
	
OCRPCfg[ CLASS_FIREMAN ] = {

	["Weapons"] = {
		"ocrp_fire_axe" ,
		"ocrp_fire_extinguisher" ,
		"ocrp_fire_hose" ,
	} ,

	["Condition"] = function( ply ) 

		if team.NumPlayers( CLASS_FIREMAN ) < #player.GetAll( ) / 4 then 

			return true 

		end 

		return false 

	end ,

}
	
OCRPCfg[ CLASS_MAYOR ] = {

	["Weapons"] = { 
	} ,

	["Condition"] = function( ply ) 

		if team.NumPlayers( CLASS_MAYOR ) < 1 then 

			return true 

		end 

		return false 

	end ,

}
    
OCRPCfg[ CLASS_ROADCREW ] = {

    ["Weapons"] = {
	 -- add wrench or something
	} ,

    ["Condition"] = function( ply )

        if team.NumPlayers( CLASS_ROADCREW ) < #player.GetAll( ) / 4 then

            return true

        end

        return false

    end ,

}
	
OCRPCfg[ CLASS_TAXI ] = {

	["Weapons"] = {
	
	} ,
	
	["Condition"] = function( ply )

		if team.NumPlayers( CLASS_TAXI ) < #player.GetAll( ) / 4 then

			return true

		end

		return false

	end ,

}

util.PrecacheModel("models/tdmcars/emergency/mitsu_evox.mdl") -- Cop Car 1
util.PrecacheModel("models/tdmcars/copcar.mdl") -- Cop Car 2
util.PrecacheModel("models/sickness/meatwagon.mdl") -- Ambulance
util.PrecacheModel("models/sickness/stockade2dr.mdl") -- SWAT Van
util.PrecacheModel("models/sickness/truckfire.mdl") -- Firetruck
util.PrecacheModel("models/sickness/towtruckdr.mdl") -- Towtruck
util.PrecacheModel("models/tdmcars/crownvic_taxi.mdl") -- Towtruck

GM.GovernmentCars = {

	["RoadCrew"] = {
		["Model"] = Model( "models/sickness/towtruckdr.mdl" ) ,
		["Class"] = "prop_vehicle_jeep"
	} ,

	["Ambulance"] = {
		["Model"] = Model( "models/sickness/meatwagon.mdl" ) ,
		["Class"] = "prop_vehicle_jeep"
	} ,

	["CopCar"] = {
		["Model"] = Model( "models/tdmcars/copcar.mdl" ) ,
		["Class"] = "prop_vehicle_jeep"
	} ,

	["EvoX"] = {
		["Model"] = Model( "models/tdmcars/emergency/mitsu_evox.mdl" ) ,
		["Class"] = "prop_vehicle_jeep"
	} ,

	["SWATVan"] = {
		["Model"] = Model( "models/sickness/stockade2dr.mdl" ) ,
		["Class"] = "prop_vehicle_jeep"
	} ,

	["FireTruck"] = {
		["Model"] = Model( "models/sickness/truckfire.mdl" ) ,
		["Class"] = "prop_vehicle_jeep"
	} ,

	["Taxi"] = {
		["Model"] = Model( "models/tdmcars/crownvic_taxi.mdl" ) ,
		["Class"] = "prop_vehicle_jeep"
	} ,

}

function TotalJobCars( )

	local CarTable = {
		["Number_Civie"] = 0 ,
		["Number_Tow"] = 0 ,
		["Number_Ambulance"] = 0 ,
		["Number_CopCar"] = 0 ,
		["Number_EvoX"] = 0 ,
		["Number_SWATVan"] = 0 ,
		["Number_FireTruck"] = 0 ,
		["Number_Taxi"] = 0 ,
	}

	for _ , VehiclesOnMap in pairs( ents.FindByClass( "prop_vehicle_jeep" ) ) do

		if VehiclesOnMap:IsValid( ) then

            if VehiclesOnMap:GetModel( ) == GM.GovernmentCars.RoadCrew.Model then

                CarTable.Number_Tow = CarTable.Number_Tow + 1

            elseif VehiclesOnMap:GetModel( ) == GM.GovernmentCars.Ambulance.Model then

                CarTable.Number_Ambulance = CarTable.Number_Ambulance + 1

            elseif VehiclesOnMap:GetModel( ) == GM.GovernmentCars.CopCar.Model then

                CarTable.Number_CopCar = CarTable.Number_CopCar + 1

            elseif VehiclesOnMap:GetModel( ) == GM.GovernmentCars.EvoX.Model then

                CarTable.Number_EvoX = CarTable.Number_EvoX + 1

            elseif VehiclesOnMap:GetModel( ) == GM.GovernmentCars.SWATVan.Model then

                CarTable.Number_SWATVan = CarTable.Number_SWATVan + 1

            elseif VehiclesOnMap:GetModel( ) == GM.GovernmentCars.FireTruck.Model then

                CarTable.Number_FireTruck = CarTable.Number_FireTruck + 1

            elseif VehiclesOnMap:GetModel( ) == GM.GovernmentCars.Taxi.Model then

				CarTable.Number_Taxi = CarTable.Number_Taxi + 1

			else

				CarTable.Number_Civie = CarTable.Number_Civie + 1

            end

		end

    end

    return CarTable

end
