-- CONFIG
OCRPCfg = {}
--ALL OF THIS IS OBSOLETE, NONE SEEMS TO TAKE EFFECT
--Money CONFIG
Msg( "OCRP: Loading money config...\n" )
OCRPCfg["MoneyTime"] = 120 -- How often should we give the player their paycheck
OCRPCfg["MoneyAmount_C"] = 60 -- How much we should give the citizens on their paycheck
OCRPCfg["MoneyAmount_MA"] = 130 -- How much we should give the mayor on their paycheck
OCRPCfg["MoneyAmount_M"] = 100 -- How much we should give the medics on their paycheck
OCRPCfg["MoneyAmount_P"] = 90 -- How much we should give the police on their paycheck
OCRPCfg["MoneyStart"] = 10000 -- How much the player starts with on there first join
OCRPCfg["MoneyAmount_V_C"] = math.Round(OCRPCfg["MoneyAmount_C"] * 1.25) -- How much we should give the citizens on their paycheck - VIP
OCRPCfg["MoneyAmount_V_MA"] = math.Round(OCRPCfg["MoneyAmount_MA"] * 1.25) -- How much we should give the mayor on their paycheck - VIP
OCRPCfg["MoneyAmount_V_M"] = math.Round(OCRPCfg["MoneyAmount_M"] * 1.25) -- How much we should give the medics on their paycheck - VIP
OCRPCfg["MoneyAmount_V_P"] = math.Round(OCRPCfg["MoneyAmount_P"] * 1.25) -- How much we should give the police on their paycheck - VIP
Msg( "OCRP: Finished loading money config.\n" )
--End of money CONFIG

OCRPCfg["Prop_Limit"] = 40
OCRPCfg["Shop_Limit"] = 15

--Organization CONFIG
Msg( "OCRP: Loading organization config...\n" )
OCRPCfg["Org_MaxUsers"] = 20 -- How many users can be in a org at any one time
OCRPCfg["Org_StartCost"] = 3500 -- How much it costs to buy a organization
Msg( "OCRP: Finished loading organization config.\n" )
--End of organization CONFIG

--General CONFIG
Msg( "OCRP: Loading general config...\n" )
OCRPCfg["MaxDoors"] = 5 -- How many doors can a player have at any one time?
Msg( "OCRP: Finished loading general config.\n" )
--End of general CONFIG.

CosmosFM_DJs = {
 --"STEAM_0:0:6717638" , -- Darthkatzs
}
 
function PMETA:IsDJ()
	if (SERVER) then
		if self.CosmosFMDJ then
			return true
		else
			return false
		end
	elseif (CLIENT) then
		if self.AmDJ then
			return true
		else
			return false
		end
	end
	return false
end
