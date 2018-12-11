
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
-- DIALOGUE CONFIG FILE
-- 
-- USED BY NPCS WHEN THEY SPEAK TO YOU ABOUT JOBS AND SHIT
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue = { }

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	ORGANIZATION DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Org"] = { -- Dialogue.Org
	["Dialogue"] = { } ,
}

GM.OCRP_Dialogue["Org"].Dialogue[ 1 ] = { -- Dialogue.Org.1

	["Question"] = "Hello there, are you looking to start an Organization?." ,
	
	["YesAnswer"] = "Yeah, that sounds exciting!" ,
	
	["NoAnswer"] = "I really don't think it's really for me, bye." ,
	
	["Condition"] = function( ply )
	
		if ply:GetOrg( ) > 0 then
		
			return "InOrg"
			
		else
		
			return "Create"
			
		end
		
	end ,
	
}

GM.OCRP_Dialogue["Org"].Dialogue["Create"] = { -- Dialogue.Org.Create

	["Question"] = "That's going to cost you $5000." ,
	
	["YesAnswer"] = "Okay, that's fine!" ,
	
	["NoAnswer"] = "Wow, I don't have that kind of cash." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply ) 
	
		OpenOrgCreation( ) 
		
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Org"].Dialogue["InOrg"] = { -- Dialogue.Org.InOrg

	["Question"] = "You must quit your current one first." ,
	
	["YesAnswer"] = "Oh, okay. I'd like to quit." ,
	
	["NoAnswer"] = "I think I'll pass, I like mine!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
        return "AreYouSure"
		
    end ,
	
}

GM.OCRP_Dialogue["Org"].Dialogue["AreYouSure"] = { -- Dialogue.Org.AreYouSure

	["Question"] = "Are you sure you want to quit your org?" ,
	
	["YesAnswer"] = "Yes. Please remove me from it." ,
	
	["NoAnswer"] = "No, nevermind, I want to stay in it." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
        net.Start( "OCRP_QuitOrg" )
		
        net.SendToServer( )
		
        return "Exit"
		
    end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	MAYOR DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Job_Mayor001"] = { -- Dialogue.Mayor

	["Dialogue"] = { } ,

	["Condition"] = function( ply )

		if ply:Team( ) == CLASS_MAYOR then

			return "Quit"

		end

		if ply:GetNWBool( "InBallot" , false ) then

			return "QuitBallot"

		end

		return 1 

	end ,

}
GM.OCRP_Dialogue["Job_Mayor001"].Dialogue["Full"] = { -- Dialogue.Mayor.Full

	["Question"] = "There is already a mayor." ,

	["YesAnswer"] = "Oh okay. I'll run in the next election." ,

	["NoAnswer"] = "You jerk!" ,

	["Condition"] = function( ply )

		return true

	end ,

	["Function"] = function( ply )

		return "Exit"

	end ,

} 

GM.OCRP_Dialogue["Job_Mayor001"].Dialogue["Job"] = { -- Dialogue.Mayor.Job

	["Question"] = "Quit your current job first, then we can talk." ,
	
	["YesAnswer"] = "Oh okay, I'll go do that." ,
	
	["NoAnswer"] = "But I like this job!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["Job_Mayor001"].Dialogue["QuitBallot"] = { -- Dialogue.Mayor.QuitBallot

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'd like to withdraw my ballot." ,
	
	["NoAnswer"] = "I don't want your help." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_RemoveBallot" )
		
		net.SendToServer( )
		
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Mayor001"].Dialogue["Quit"] = { -- Dialogue.Mayor.Quit

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'd like to resign as the mayor." ,
	
	["NoAnswer"] = "Nevermind." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Quit" )
		
		net.SendToServer( )
		
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Mayor001"].Dialogue["Quitter"] = { -- Dialogue.Mayor.Quitter

	["Question"] = "You can't run again so soon, it's against the law." ,
	
	["YesAnswer"] = "Oh sorry, I'll try next time." ,
	
	["NoAnswer"] = "Eat shit, raisinballs! I hope you swallow a turd!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Mayor001"].Dialogue[ 1 ] = { -- Dialogue.Mayor.1

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking to become the mayor of this town!" ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )  
	
		if team.NumPlayers( CLASS_MAYOR ) >= 1 and ply:Team( ) != CLASS_MAYOR then 
		
			return "Full" 
			
		end
		
		if ply:GetNWBool( "InBallot" , false ) then
		
			return "QuitBallot"
			
		end
		
		if ply:Team( ) == CLASS_MAYOR then
		
			return "Quit"
			
		elseif ply:Team( ) == CLASS_CITIZEN then
		
			if ply:GetNWBool("JobCD_" .. tostring(CLASS_MAYOR), false) then
			
				return "Quitter"
				
			end
			
			return 2
			
		else
		
			return "Job"
			
		end
		
		return "Exit" 
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Mayor001"].Dialogue[ 2 ] = {

	["Question"] = "Okay, all you have to do is enter your ballot." ,
	
	["YesAnswer"] = "Sweet, put my name down!" ,
	
	["NoAnswer"] = "Woah, I just wanted money, not responsibility." ,
	
	["Condition"] = function( ply )
	
		net.Start( "OCRP_AddBallot" )
		
		net.SendToServer( ) 
		
		return 3
		
	end ,
	
	["Func"] = function( ply ) 

	end ,
	
}
	

GM.OCRP_Dialogue["Job_Mayor001"].Dialogue[ 3 ] = {

	["Question"] = "Good luck." ,
	
	["YesAnswer"] = "Yea, like I need luck." ,
	
	["NoAnswer"] = "Time to win some votes!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	POLICE HIRE DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Job_Cop001"] = {

	["Dialogue"] = { } ,
	
	["Condition"] = function( ply )
	
		if ply:Team( ) > 1 and ply:Team( ) == ( CLASS_POLICE or CLASS_CHIEF or CLASS_SWAT ) then
			
			return "Quit"

		end
		
		return 1 
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Cop001"].Dialogue["Full"] = {

	["Question"] = "Sorry, all our positions are filled! Try again later." ,
	
	["YesAnswer"] = "Damn, alright. I'll come back later." ,
	
	["NoAnswer"] = "Fucking fascists!" ,
	
	["Condition"] = function( ply )
	
		return true 
		
	end ,
	
	["Function"] = function( ply ) 
	
		return "Exit" 
		
	end , 
	
} 

GM.OCRP_Dialogue["Job_Cop001"].Dialogue["Job"] = { 

	["Question"] = "Quit your current job first, then we can talk." ,
	
	["YesAnswer"] = "Oh, okay. I'll go do that." ,
	
	["NoAnswer"] = "But I like this job!" ,
	
	["Condition"] = function( ply ) 
	
		return true 
		
	end ,
	
	["Function"] = function( ply ) 
	
		return "Exit" 
		
	end , 
	
} 

GM.OCRP_Dialogue["Job_Cop001"].Dialogue["Quit"] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm here to quit." ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Quit" )
		
		net.SendToServer( )
		
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Cop001"].Dialogue["Quitter"] = {

	["Question"] = "You just recently quit the force, get lost." ,
	
	["YesAnswer"] = "Oh sorry, I'll come back later." ,
	
	["NoAnswer"] = "Screw you, I just wanted to help!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_JobTimeString" )
		
		net.WriteInt( CLASS_POLICE , 32 )
		
		net.SendToServer( )
		
		return "Exit"
	
	end ,
	
}

GM.OCRP_Dialogue["Job_Cop001"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking for work as a cop, are there any positions open?" ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )
	
		if ply:GetNWBool( "InBallot" , false ) then
		
			return 4
			
		end
		
		if ply:Team( ) > 1 then
		
			if ply:Team( ) == ( CLASS_POLICE or CLASS_CHIEF or CLASS_SWAT ) then
			
				return "Quit"
				
			else
			
				return "Job"
				
			end
			
		elseif ply:Team( ) <= 1 then
		
			if team.NumPlayers(CLASS_POLICE) < #player.GetAll( ) / 4 then 
			
				if ply:GetNWBool("JobCD_" .. tostring(CLASS_POLICE), false) then
				
					return "Quitter"
					
				end
				
				return 2
				
			else
			
				return "Full"
				
			end
			
		end
		
		return "Exit" 
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Cop001"].Dialogue[ 2 ] = {

	["Question"] = "Why yes there are, just sign here." ,
	
	["YesAnswer"] = "Alright." ,
	
	["NoAnswer"] = "Woah, I just wanted a gun, not to sign anything." , 
	
	["Condition"] = function( ply )
	
		if team.NumPlayers(CLASS_POLICE) >= #player.GetAll( )/3 then 
		
			return "Full"
			
		end 
		
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Join" )
		
		net.WriteInt( CLASS_POLICE , 32 )
		
		net.SendToServer( ) 
		
		return 3 
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Cop001"].Dialogue[ 3 ] = {

	["Question"] = "Okay, here is your badge and gear. Good luck." ,
	
	["YesAnswer"] = "Yea, like I need luck." ,
	
	["NoAnswer"] = "Lets rock." , 
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit" 
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Cop001"].Dialogue[ 4 ] = {

	["Question"] = "You're running for mayor, you cannot join the police force." ,
	
	["YesAnswer"] = "Oh, okay. I'll go remove my ballot." ,
	
	["NoAnswer"] = "Well, screw you too!" , 
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit" 
		
	end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	POLICE VEHICLE SPAWN DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Job_CopCar01"] = {

	["Dialogue"] = { } ,
	
}

GM.OCRP_Dialogue["Job_CopCar01"].Dialogue["Enough"] = {

	["Question"] = "Enough cars are out, patrol with another cop." ,
	
	["YesAnswer"] = "Oh okay. I'll go find a partner." ,
	
	["NoAnswer"] = "I didn't sign up for this." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_CopCar01"].Dialogue["Job"] = { 

	["Question"] = "You're not a cop. Scram." ,
	
	["YesAnswer"] = "Oh, I'll go sign up now." ,
	
	["NoAnswer"] = "Wanna race to the donut shop, sparky?" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["Job_CopCar01"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking for a service vehicle." ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )
	
		if ply:Team( ) > 1 then

			if ply:Team( ) == ( CLASS_POLICE or CLASS_CHIEF ) then
			
				if TotalJobCars( ) >= math.Round( ( #team.GetPlayers( CLASS_POLICE ) + #team.GetPlayers( CLASS_CHIEF ) ) / 2) then
				
					if ply:GetLevel( ) > 3 then
					
						return "Enough"
						
					end
					
				end
				
				return 2
				
			elseif ply:Team( ) == CLASS_SWAT then
			
				return 3
				
			else
			
				return "Job"
				
			end
			
		else
		
			return "Job"
			
		end
		
		return "Exit" 
		
	end ,
	
}

GM.OCRP_Dialogue["Job_CopCar01"].Dialogue[ 2 ] = {

	["Question"] = "Which service vehicle would you like?" ,
	
	["YesAnswer"] = "I'll take the Evo X." ,
	
	["NoAnswer"] = "I want a SWAT van!" ,
	
	["SecondYes"] = true ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply ) 
		
		net.Start( "OCRP_SpawnPolice" )
		
		net.SendToServer( )
		
		return 3
		
	end ,
	
	["Function2"] = function( ply )
		
		if ply:Team( ) == CLASS_SWAT then
		
			net.Start( "OCRP_SpawnSWAT" )
			
			net.SendToServer( )
			
			return 3
			
		end
		
		return "SWAT"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_CopCar01"].Dialogue[ 3 ] = {

	["Question"] = "Here are the keys." ,
	
	["YesAnswer"] = "Alright." ,
	
	["NoAnswer"] = "Nice." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply ) 
	
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_CopCar01"].Dialogue["SWAT"] = {

	["Question"] = "You're not part of the SWAT force." ,
	
	["YesAnswer"] = "I guess I'll go ask for a promotion." ,
	
	["NoAnswer"] = "Well neither are you, loser." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"

	end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	DEPT. OF TRANSPORTATION HIRE DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["DoT_Job"] = {

	["Dialogue"] = { } ,
	
	["Condition"] = function( ply )
	
		if ply:Team( ) == CLASS_ROADCREW then
	
			return "Quit"
		
		end
	
		return 1
	
	end ,
}

GM.OCRP_Dialogue["DoT_Job"].Dialogue["Quitter"] = {

	["Question"] = "You just bailed on us truckers, get lost." ,
	
	["YesAnswer"] = "Oh sorry, I'll come back later." ,
	
	["NoAnswer"] = "Screw you, I just wanted to help!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_JobTimeString" )
		
		net.WriteInt( CLASS_ROADCREW , 32 ) 
		
		net.SendToServer( ) 
		
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["DoT_Job"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'd like to join the Department of Transportation." ,
	
	["NoAnswer"] = "Nevermind." ,
	
	["Condition"] = function( ply )
		
		if ply:GetNWBool("InBallot" , false) then
		
			return 4
			
		end
		
		if ply:Team( ) > 1 then
		
			if ply:Team( ) == CLASS_ROADCREW then
			
				return "Quit"
				
			else
			
				return "Job"
				
			end
			
		elseif ply:Team( ) <= 1 then
		
			if team.NumPlayers( CLASS_ROADCREW ) < #player.GetAll( ) / 4 then
			
				if ply:GetNWBool("JobCD_" .. tostring( CLASS_ROADCREW ), false) then
				
					return "Quitter"
					
				end
				
				return 2
				
			else
			
				return "Full"
				
			end
			
		end
	
		return "Exit"
	
	end ,

}


GM.OCRP_Dialogue["DoT_Job"].Dialogue[ 2 ] = {

	["Question"] = "We've got an open position just for you, sign here." ,
	
	["YesAnswer"] = "Awesome, got a pen?" ,
	
	["NoAnswer"] = "Woah, I'm not interested in signing anything." ,
	
	["Condition"] = function( ply )
	
		return true
	
	end ,

	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Join" )
	
		net.WriteInt(CLASS_ROADCREW, 32)
	
		net.SendToServer( ) 
	
		return 3
		
	end ,
	
}
    
GM.OCRP_Dialogue["DoT_Job"].Dialogue[ 3 ] = {

	["Question"] = "Okay, here are your tools. Good luck." ,
	
	["YesAnswer"] = "Yea, like I need luck" ,
	
	["NoAnswer"] = "Lets rock." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["DoT_Job"].Dialogue[ 4 ] = {

	["Question"] = "You're running for mayor, white-collar, you can't be a tow truck driver." ,
	
	["YesAnswer"] = "Oh, okay. I'll go remove my ballot." ,
	
	["NoAnswer"] = "Well, screw you too!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["DoT_Job"].Dialogue["Full"] = { 

	["Question"] = "All our positions are filled, I'm sorry." ,
	
	["YesAnswer"] = "Oh, okay. I'll come back later." ,
	
	["NoAnswer"] = "You jerk!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["DoT_Job"].Dialogue["Job"] = { 

	["Question"] = "Quit your current job first, then we can talk." ,
	
	["YesAnswer"] = "Oh, okay. I'll go do that." ,
	
	["NoAnswer"] = "But I like this job!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["DoT_Job"].Dialogue["Quit"] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm here to quit." ,
	
	["NoAnswer"] = "Nevermind." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Quit" )
		
		net.SendToServer( )
		
		return "Exit"
		
	end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	TOW TRUCK SPAWN DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["RoadCrew_Spawn_Vehicle"] = {

	["Dialogue"] = { } ,
	
}

GM.OCRP_Dialogue["RoadCrew_Spawn_Vehicle"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking for a tow truck." ,

	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )
	
		if ply:Team( ) == CLASS_ROADCREW then
	
			return 2

		else

			return "Job"

		end

		return "Exit" 

	end ,

}

GM.OCRP_Dialogue["RoadCrew_Spawn_Vehicle"].Dialogue[ 2 ] = {

	["Question"] = "Alright, here are the keys." ,
	
	["YesAnswer"] = "Awesome." ,
	
	["NoAnswer"] = "Thanks." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply ) 
	
		net.Start( "OCRP_SpawnTow" )

		net.SendToServer( )

		return "Exit"

	end ,
	
}

GM.OCRP_Dialogue["RoadCrew_Spawn_Vehicle"].Dialogue["Job"] = { 

	["Question"] = "You're not a tow truck driver. Scram." ,
	
	["YesAnswer"] = "Oh, I'll go sign up now." ,
	
	["NoAnswer"] = "And You're a loser!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	FIRE BRIGADE DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Job_Fire001"] = {

	["Dialogue"] = { } ,
	
	["Condition"] = function( ply )  

		if ply:Team( ) > 1 and ply:Team( ) == CLASS_FIREMAN then

			return "Quit"

		end

		return 1 

	end ,

}

GM.OCRP_Dialogue["Job_Fire001"].Dialogue["Full"] = { 

	["Question"] = "All our positions are filled, I'm sorry" ,

	["YesAnswer"] = "Oh, okay. I'll come back later." ,

	["NoAnswer"] = "Go back to Ladder 49, Morrison!" ,

	["Condition"] = function( ply )

		return true

	end ,

	["Function"] = function( ply )

		return "Exit"

	end ,

} 

GM.OCRP_Dialogue["Job_Fire001"].Dialogue["Job"] = { 

	["Question"] = "Quit your current job first, then we can talk." ,
	
	["YesAnswer"] = "Oh, okay. I'll go do that." ,
	
	["NoAnswer"] = "But I like this job!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["Job_Fire001"].Dialogue["Quit"] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm here to quit." ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Quit" )
		
		net.SendToServer( )
		
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Fire001"].Dialogue["Quitter"] = {

	["Question"] = "You recently skipped out when we needed you, get lost." ,
	
	["YesAnswer"] = "Oh sorry, I'll come back later." ,
	
	["NoAnswer"] = "Screw you, I just wanted to help!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_JobTimeString" )
		
		net.WriteInt( CLASS_FIREMAN , 32 ) net.SendToServer( ) return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Fire001"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking for work as a fireman, are there any positions open?" ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )  
	
		if ply:GetNWBool( "InBallot" , false ) then
		
			return 4
			
		end
		
		if ply:Team( ) > 1 then

			if ply:Team( ) == CLASS_FIREMAN then
			
				return "Quit"
	
			else
			
				return "Job"
				
			end
			
		elseif ply:Team( ) <= 1 then
		
			if team.NumPlayers( CLASS_FIREMAN ) < #player.GetAll( ) / 5 then 
			
				if ply:GetNWBool("JobCD_" .. tostring( CLASS_FIREMAN ), false) then
				
					return "Quitter"
					
				end
				
				return 2 
				
			else
			
				return "Full"
				
			end 
			
		end
		
		return "Exit" 
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Fire001"].Dialogue[ 2 ] = {

	["Question"] = "Why yes there are, just sign here." ,
	
	["YesAnswer"] = "Alright." ,
	
	["NoAnswer"] = "Woah, I just wanted to help people, not sign anything." , 
	
	["Condition"] = function( ply )
	
		if team.NumPlayers( CLASS_FIREMAN ) >= #player.GetAll( ) / 5 then 
	
			return "Full"
		
		end
	
		return true
	
	end ,

	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Join" )
		
		net.WriteInt( CLASS_FIREMAN , 32 )
		
		net.SendToServer( ) 
		
		return 3
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Fire001"].Dialogue[ 3 ] = {

	["Question"] = "Okay, here is your equipment. Good luck." ,
	
	["YesAnswer"] = "Yea, like I need luck." ,
	
	["NoAnswer"] = "Lets rock." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Fire001"].Dialogue[ 4 ] = {

	["Question"] = "You're running for mayor, you cannot be a fireman." ,
	
	["YesAnswer"] = "Oh, okay. I'll go remove my ballot." ,
	
	["NoAnswer"] = "Well, screw you too!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	FIRE ENGINE SPAWN DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Job_FireEngine01"] = {

	["Dialogue"] = { }
	
}

GM.OCRP_Dialogue["Job_FireEngine01"].Dialogue["Job"] = { 

	["Question"] = "You're not a fireman. Scram." ,
	
	["YesAnswer"] = "Oh, I'll go sign up now." ,
	
	["NoAnswer"] = "And You're a loser!" ,
	
	
	["Condition"] = function( ply )
	
	
		return true
	
	
	end ,
	
	
	["Function"] = function( ply )
	
	
		return "Exit"
	
	
	end ,
	
} 

GM.OCRP_Dialogue["Job_FireEngine01"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking for a fire engine." ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )  
	
		if ply:Team( ) > 1 then

			if ply:Team( ) == CLASS_FIREMAN then
			
				return 2
				
			else
			
				return "Job"
				
			end
			
		else
		
			return "Job"
			
		end
		
		return "Exit" 
		
	end ,

}

GM.OCRP_Dialogue["Job_FireEngine01"].Dialogue[ 2 ] = {

	["Question"] = "Here are the keys, it's parked outside." ,
	
	["YesAnswer"] = "Alright." ,
	
	["NoAnswer"] = "Nice." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )

		net.Start( "OCRP_SpawnFireEngine" )

		net.SendToServer( )

		return "Exit"

	end ,
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	TAXI SERVICE DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Job_Taxi001"] = {

	["Dialogue"] = { } ,
	
	["Condition"] = function( ply )
		
		if ply:Team( ) == CLASS_TAXI then
		
			return "Quit"
			
		end
		
		return 1
		
	end ,
}

GM.OCRP_Dialogue["Job_Taxi001"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking for work as a taxi driver, are there any positions open?" ,
	
	["NoAnswer"] = "Nevermind." ,
	
	["Condition"] = function( ply )  

		if ply:GetNWBool( "InBallot" , false ) then

			return 4

			end

			if ply:Team( ) > 1 then

				if ply:Team( ) == CLASS_TAXI then

					return "Quit"

				else

					return "Job"

				end

			elseif ply:Team( ) <= 1 then

				if team.NumPlayers(CLASS_TAXI) < #player.GetAll( ) / 4 then

					if ply:GetNWBool("JobCD_" .. tostring(CLASS_TAXI), false) then

						return "Quitter"

					end

					return 2

				else

					return "Full"

				end 

			end

			return "Exit" 

		end ,

}

GM.OCRP_Dialogue["Job_Taxi001"].Dialogue["Full"] = { 

	["Question"] = "All our positions are filled, I'm sorry." ,
	
	["YesAnswer"] = "Oh, okay. I'll come back later." ,
	
	["NoAnswer"] = "You jerk!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["Job_Taxi001"].Dialogue["Job"] = { 

	["Question"] = "Quit your current job first, then we can talk." ,
	
	["YesAnswer"] = "Oh okay. I'll go do that." ,
	
	["NoAnswer"] = "But I like this job!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["Job_Taxi001"].Dialogue["Quit"] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm here to quit." ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Quit" )
		
		net.SendToServer( )
		
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Taxi001"].Dialogue["Quitter"] = {

	["Question"] = "You just quit when we needed drivers, get lost." ,
	
	["YesAnswer"] = "Oh sorry, I'll come back later." ,
	
	["NoAnswer"] = "Screw you, I just wanted to help!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_JobTimeString" )
		
		net.WriteInt(CLASS_TAXI, 32) net.SendToServer( ) return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Taxi001"].Dialogue[ 2 ] = {

	["Question"] = "Why yes there are, just sign here." ,
	
	["YesAnswer"] = "Alright." ,
	
	["NoAnswer"] = "Woah, I just wanted to get paid to drive, not sign anything." , 
	
	["Condition"] = function( ply )
	
		if team.NumPlayers(CLASS_TAXI) >= #player.GetAll( ) / 4 then 
	
			return "Full"
		
		end
	
		return true
	
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Join" )
		
		net.WriteInt(CLASS_TAXI, 32)
		
		net.SendToServer( ) 
		
		return 3
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Taxi001"].Dialogue[ 3 ] = {

	["Question"] = "Okay, here is your equipment. Good luck." ,
	
	["YesAnswer"] = "Yea, like I need luck." ,
	
	["NoAnswer"] = "Lets rock." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Taxi001"].Dialogue[ 4 ] = {

	["Question"] = "You're running for mayor, you cannot be a paramedic." ,
	
	["YesAnswer"] = "Oh, okay. I'll go remove my ballot." ,
	
	["NoAnswer"] = "Well, screw you too!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	TAXI SPAWN DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Job_TaxiCar001"] = {

	["Dialogue"] = { }

}

GM.OCRP_Dialogue["Job_TaxiCar001"].Dialogue["Job"] = { 

	["Question"] = "You're not a taxi driver. Scram." ,
	
	["YesAnswer"] = "Oh, I'll go sign up now." ,
	
	["NoAnswer"] = "At least I'm not some immigrant loose change hunter!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["Job_TaxiCar001"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking for a taxi." ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )  
	
		if ply:Team( ) > 1 then

			if ply:Team( ) == CLASS_TAXI then
			
				return 2
				
			else
			
				return "Job"
				
			end
			
		else
		
			return "Job"
			
		end
		
		return "Exit" 
		
	end ,
	
}

GM.OCRP_Dialogue["Job_TaxiCar001"].Dialogue[ 2 ] = {

	["Question"] = "Here are the keys." ,
	
	["YesAnswer"] = "Alright." ,
	
	["NoAnswer"] = "Nice." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_SpawnTaxi" )

		net.SendToServer( )

		return "Exit"

	end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	DOCTOR HEAL GOOD DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Heal"] = {

	["Dialogue"] = { }

}

GM.OCRP_Dialogue["Heal"].Dialogue[ 1 ] = {

	["Question"] = "How can I help you?" ,
	
	["YesAnswer"] = "I need some medical attention!" ,
	
	["NoAnswer"] = "You can't. Bye." ,
	
	["Condition"] = function( ply )

		if ply:Health( ) >= 100 then

			return "FullHealth"

		end

		return 2

	end ,

}

GM.OCRP_Dialogue["Heal"].Dialogue[ 2 ] = {

	["Question"] = "Okay, but that's gonna cost you $2 ,500." ,
	
	["YesAnswer"] = "That's fine. I really need the help." ,
	
	["NoAnswer"] = "Fuck that! I'll go buy some thread and needles from the dollar store!" ,
	
	["Condition"] = function( ply )
	
		return true
	
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_HealPlayer" )
	
		net.SendToServer( )
	
		return "Exit"
	
	end ,

}

GM.OCRP_Dialogue["Heal"].Dialogue["FullHealth"] = {

	["Question"] = "I don't see any injuries on you. Get lost." ,
	
	["YesAnswer"] = "Oh I must have healed on my way here.." ,
	
	["NoAnswer"] = "Well now my feelings need a heal!" ,

	["Condition"] = function( ply )

		return true

	end ,

	["Function"] = function( ply )

		return "Exit" 

	end ,

}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	PARAMEDIC HIRE DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Job_Medic001"] = {

	["Dialogue"] = { } ,
	
	["Condition"] = function( ply )  

		if ply:Team( ) > 1 then
		
			if ply:Team( ) == CLASS_MEDIC then
			
				return "Quit"
				
			end
			
		end
		
		return 1 
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Medic001"].Dialogue["Full"] = { 

	["Question"] = "All our positions are filled, I'm sorry." ,

	["YesAnswer"] = "Oh, okay. I'll come back later." ,

	["NoAnswer"] = "You jerk!" ,

	["Condition"] = function( ply )

		return true

	end ,

	["Function"] = function( ply )

		return "Exit"

	end ,

} 

GM.OCRP_Dialogue["Job_Medic001"].Dialogue["Job"] = { 

	["Question"] = "Quit your current job first, then we can talk." ,
	
	["YesAnswer"] = "Oh okay. I'll go do that." ,
	
	["NoAnswer"] = "But I like this job!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["Job_Medic001"].Dialogue["Quit"] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm here to quit." ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_Job_Quit" )
		
		net.SendToServer( )
		
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Medic001"].Dialogue["Quitter"] = {

	["Question"] = "You just quit while people were dying, get lost." ,
	
	["YesAnswer"] = "Oh sorry, I'll come back later." ,
	
	["NoAnswer"] = "Screw you, I just wanted to help!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_JobTimeString" )
		
		net.WriteInt(CLASS_MEDIC, 32) net.SendToServer( ) return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Medic001"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking for work as a paramedic, are there any positions open?" ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )  
	
		if ply:GetNWBool( "InBallot" , false ) then
		
			return 4
			
		end
		
		if ply:Team( ) > 1 then

			if ply:Team( ) == CLASS_MEDIC then
			
				return "Quit"
	
			else
			
				return "Job"
				
			end
			
		elseif ply:Team( ) <= 1 then
		
			if team.NumPlayers(CLASS_MEDIC) < #player.GetAll( ) / 4 then
			
				if ply:GetNWBool("JobCD_" .. tostring(CLASS_MEDIC), false) then
				
					return "Quitter"
					
				end
				
				return 2
				
			else
			
				return "Full"
				
			end 
			
		end
		
		
		return "Exit" 
		
	end ,

}

GM.OCRP_Dialogue["Job_Medic001"].Dialogue[ 2 ] = {

	["Question"] = "Why yes there are, just sign here." ,
	
	["YesAnswer"] = "Alright." ,
	
	["NoAnswer"] = "Woah, I just wanted to help people, not sign anything." , 
	
	["Condition"] = function( ply )
		
		if team.NumPlayers(CLASS_MEDIC) >= #player.GetAll( ) / 4 then 
		
			return "Full"
			
		end
		
		return true
	
	end ,

	["Function"] = function( ply )
		
		net.Start( "OCRP_Job_Join" )
		
		net.WriteInt(CLASS_MEDIC, 32)
		
		net.SendToServer( ) 
		
		return 3
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Medic001"].Dialogue[ 3 ] = {

	["Question"] = "Okay, here is your equipment. Good luck." ,
	
	["YesAnswer"] = "Yea, like I need luck." ,
	
	["NoAnswer"] = "Lets rock." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Job_Medic001"].Dialogue[ 4 ] = {

	["Question"] = "You're running for mayor, you cannot be a paramedic." ,
	
	["YesAnswer"] = "Oh, okay. I'll go remove my ballot." ,
	
	["NoAnswer"] = "When I'm mayor, first thing I'm doing is cutting your funding!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	PARAMEDIC MEAT WAGON SPAWN DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Job_Ambulance01"] = {

	["Dialogue"] = { }

}

GM.OCRP_Dialogue["Job_Ambulance01"].Dialogue["Job"] = { 

	["Question"] = "You're not a paramedic. Scram." ,
	
	["YesAnswer"] = "Oh, I'll go sign up now." ,
	
	["NoAnswer"] = "And You're a loser!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
	
} 

GM.OCRP_Dialogue["Job_Ambulance01"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking for an ambulance." ,
	
	["NoAnswer"] = "You can't help me." ,
	
	["Condition"] = function( ply )  
	
		if ply:Team( ) > 1 then
		
			if ply:Team( ) == CLASS_MEDIC then
			
				return 2
				
			else
			
				return "Job"
				
			end
			
		else
		
			return "Job"
			
		end
		
		return "Exit" 
		
	end ,

}

GM.OCRP_Dialogue["Job_Ambulance01"].Dialogue[ 2 ] = {

	["Question"] = "Here are the keys." ,
	
	["YesAnswer"] = "Alright." ,
	
	["NoAnswer"] = "Nice." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "OCRP_SpawnAmbo" )

		net.SendToServer( )

		return "Exit"

	end ,
	
}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	MECHANIC REPAIR CAR DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Repair"] = {

	["Dialogue"] = { } ,
	
}

GM.OCRP_Dialogue["Repair"].Dialogue[ 1 ] = {

	["Question"] = "How can I help you?" ,
	
	["YesAnswer"] = "I'm hoping to get my car fixed." ,
	
	["NoAnswer"] = "You can't. Bye." ,
	
	["Condition"] = function( ply )
	
        local car = nil
		
        for k,v in pairs(ents.FindByClass("prop_vehicle_jeep" )) do
		
            if v:GetPos( ):Distance(ply:GetPos( )) < 500 then
			
                if v:GetNWInt("Owner" ) > 0 and v:GetNWInt("Owner" ) == ply:EntIndex( ) then
				
                    car = v
					
                end
				
            end
			
        end
		
        if car and car:IsValid( ) then
		
            local max = GAMEMODE.OCRP_Cars[car:GetNWString("Type" , "" )] and GAMEMODE.OCRP_Cars[car:GetNWString("Type" , "" )].Health or 100
			
            if car:Health( ) < max then
			
                return 2
				
            else
			
                return "NotBroken"
				
            end
			
        else
		
            return "NoCar"
			
       end
	   
    end ,
	
}

GM.OCRP_Dialogue["Repair"].Dialogue[ 2 ] = {

	["FormatRepairPrice"] = true , 
	
	["Question"] = "Okay, that'll cost you $%s!" ,
	
	["YesAnswer"] = "Alright, I can deal with that." ,
	
	["NoAnswer"] = "Woah nevermind, I don't have that kind of cash." ,

	["Condition"] = function( ply )

		return true

	end ,

	["Function"] = function( ply )

		net.Start( "OCRP_Repair_Car" )

		net.SendToServer( )

		return "Exit"

	end ,

}

GM.OCRP_Dialogue["Repair"].Dialogue["NoCar"] = {

	["Question"] = "You don't have a car here to repair, quit wasting my time." ,
	
	["YesAnswer"] = "Oops, I'll go get it" ,
	
	["NoAnswer"] = "Well screw you too!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit" 

	end ,

}

GM.OCRP_Dialogue["Repair"].Dialogue["NotBroken"] = {

	["Question"] = "Your car isn't broken, quit wasting my time." ,

	["YesAnswer"] = "Oh okay, I'll go smash it up!" ,

	["NoAnswer"] = "Yeah... Of course. That's obvious. I totally knew that!" ,

	["Condition"] = function( ply )

		return true

	end ,

	["Function"] = function( ply )

		return "Exit" 

	end ,

}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	HYDRAULICS DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Hydro"] = {

	["Dialogue"] = { } ,
	
}

GM.OCRP_Dialogue["Hydro"].Dialogue["BuyHydro"] = {

	["Question"] = "You can have them, but at a price of $25 ,000" ,
	
	["YesAnswer"] = "I'll take that deal!" ,
	
	["NoAnswer"] = "I don't think I'm ready." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply ) 
	
		RunConsoleCommand("ocrp_no" ) 
		
		return "Exit"
	
	end ,
	
}

GM.OCRP_Dialogue["Hydro"].Dialogue["Already"] = {

	["Question"] = "Yo, you already have Hydraulics on your car." ,
	
	["YesAnswer"] = "Oh, yeah, bye." ,
	
	["NoAnswer"] = "Woops, I brought the wrong car!" ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		return "Exit"
		
	end ,
}

GM.OCRP_Dialogue["Hydro"].Dialogue[ 1 ] = {

	["Question"] = "Hello there, are you looking for Hydraulics?" ,
	
	["YesAnswer"] = "My tiny dick give it away?" ,
	
	["NoAnswer"] = "I'm not a pimp, no, thanks." ,
	
	["Condition"] = function( ply )
		
		for k, v in pairs(ents.FindInSphere( ply:GetPos( ), 400 )) do
		
			if v:GetClass( ) == "prop_vehicle_jeep" then
			
				if v:GetNWInt("Owner" ) == ply:EntIndex( ) then
				
					tehthing = v
					
					if (SERVER) then
					
						if v.Hydros then
						
						else
						
						end
						
					end
					
					break
					
				end
				
			end
			
		end
		
		return false
		
	end ,

}

------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
--	CAR MOD SHOP DIALOGUE
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

GM.OCRP_Dialogue["Skin_001"] = {

	["Dialogue"] = { } ,
	
}

GM.OCRP_Dialogue["Skin_001"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I'm looking to respray my car." ,
	
	["NoAnswer"] = "I want to buy some hydraulics." ,
	
	["SecondYes"] = true ,
	
 	["Condition"] = function( ply )
		
		tehthing = nil
		
		for k, v in pairs(ents.FindInSphere( ply:GetPos( ), 400 )) do
		
			if v:GetClass( ) == "prop_vehicle_jeep" then
			
				if v:GetNWInt("Owner" ) == ply:EntIndex( ) then
				
					tehthing = v
					
					return true
					
				end
				
			end
			
		end
		
		return true
		
	end ,
 
 	["Function"] = function( ply )
		
		if !tehthing then
		
			return "NoCar"
			
		end
		
		net.Start( "CL_ShowSkin" )
		
		net.WriteString(tehthing:GetCarType( ))
		
		net.SendToServer( )
		
        return "Exit" 
		
    end ,
	
 	["Function2"] = function( ply )
		
		if !tehthing then
		
			return "NoCar"
			
		end
		
		return "BuyHydro"
		
	end ,

}
 
GM.OCRP_Dialogue["Skin_001"].Dialogue["NoCar"] = {

	["Question"] = "I can't upgrade your car if it's not here." ,
	
	["YesAnswer"] = "Oh okay, I'll go get it." ,
	
	["NoAnswer"] = "Nevermind then, bye." ,
	
	["Condition"] = function( ply )

		return true
	end ,
	["Function"] = function( ply )
		
		return "Exit"
			
	end ,
	
}

GM.OCRP_Dialogue["Skin_001"].Dialogue["BuyHydro"] = {

	["Question"] = "Okay, those hydraulics will cost you $25 ,000." ,
	
	["YesAnswer"] = "Alright, go for it." ,
	
	["NoAnswer"] = "Woah, no way dude, that's too much." ,
	
	["Condition"] = function( ply )
	
		return true
		
	end ,
	
	["Function"] = function( ply )
	
		net.Start( "ocrp_bhydros" )
		
		net.SendToServer( )
		
		return "Exit"
		
	end ,
	
}

GM.OCRP_Dialogue["Skin_002"] = {

	["Dialogue"] = { } ,
	
}

GM.OCRP_Dialogue["Skin_002"].Dialogue[ 1 ] = {

	["Question"] = "How may I help you today?" ,
	
	["YesAnswer"] = "I want underglow for my car." ,
	
	["NoAnswer"] = "I was hoping to install nitrous on my car." ,
	
	["SecondYes"] = true , 	
	
	["Condition"] = function( ply )
		
		theskin002car = nil
		
		for k,v in pairs(ents.FindInSphere(ply:GetPos( ), 400)) do
		
			if v:GetClass( ) == "prop_vehicle_jeep" then
			
				if v:GetNWInt("Owner" ) == ply:EntIndex( ) then
				
					theskin002car = v
					
					return true
					
				end
				
			end
			
		end
		
		return true
		
	end ,

	["Function"] = function( ply )
		
		if !theskin002car then
		
			return "NoCar"
			
		end
		
		return "BuyUnderglow"
		
	end ,

	["Function2"] = function( ply )
		
		if !theskin002car then
		
			return "NoCar"
			
		end
		
		return "BuyNitrous"
		
	end
	
}

GM.OCRP_Dialogue["Skin_002"].Dialogue["NoCar"] = {
	["Question"] = "I can't upgrade your car if it isn't here." ,
	["YesAnswer"] = "Oh okay, I'll go get it." ,
	["NoAnswer"] = "Nevermind then, bye." ,
	["Condition"] =
	function( ply )
		return true
	end ,
		["Function"] = function( ply )
		return "Exit"
	end ,
}

GM.OCRP_Dialogue["Skin_002"].Dialogue["BuyUnderglow"] = {
	["Question"] = "Okay, underglow is going to cost you $15 ,000." ,
	["YesAnswer"] = "Alright, let me see the color choices." ,
	["NoAnswer"] = "Woah, no way dude, I can't afford that." ,
	["Condition"] =
    function( ply )
        return true
    end ,
    	["Function"] = function( ply )
        ShowColors("Underglow" )
        return "Exit"
    end
}

GM.OCRP_Dialogue["Skin_002"].Dialogue["BuyNitrous"] = {
	["Question"] = "Okay, nitrous is going to put you back $30 ,000." ,
	["YesAnswer"] = "Alright, I can live with that." ,
	["NoAnswer"] = "Wow, nevermind, that's way out of my budget." ,
	["Condition"] =
    function( ply )
        return true
    end ,
    	["Function"] = function( ply )
        net.Start( "OCRP_Buy_Nitrous" )
        net.SendToServer( )
        return "Exit"
    end
}

GM.OCRP_Dialogue["Skin_003"] = {
	["Dialogue"] = { } ,
}

GM.OCRP_Dialogue["Skin_003"].Dialogue[ 1 ] = {
	["Question"] = "How can I help you today?" ,
	["YesAnswer"] = "I want headlights for my car." ,
	["NoAnswer"] = "I'd like to color my headlights." ,
	["SecondYes"] = true ,
	["Condition"] =
	function( ply )
	theskin003car = nil
    for k,v in pairs(ents.FindInSphere(ply:GetPos( ), 400)) do
        if v:GetClass( ) == "prop_vehicle_jeep" then
            if v:GetNWInt("Owner" ) == ply:EntIndex( ) then
                theskin003car = v
                return true
            end
        end
    end
    return true
	end ,
		["Function"] = function( ply )
		if !theskin003car or !theskin003car:IsValid( ) then
			return "NoCar"
		end
		return "BuyHeadlights"
	end ,
		["Function2"] = function( ply )
		if !theskin003car or !theskin003car:IsValid( ) then
			return "NoCar"
		end
		if theskin003car:GetNWString("Headlights" ) == nil or theskin003car:GetNWString("Headlights" ) == "" then
			return "NoHeadlights"
		end
		return "ColorHeadlights"
	end
}

GM.OCRP_Dialogue["Skin_003"].Dialogue["NoHeadlights"] = {
	["Question"] = "You need headlights already installed to change the color." ,
	["YesAnswer"] = "Oh okay, I'll come back after I do that." ,
	["NoAnswer"] = "Nevermind, screw this." ,
	["Condition"] = 
	function( ply )
		return true
	end ,
		["Function"] = function( ply )
		return "Exit"
	end
}

GM.OCRP_Dialogue["Skin_003"].Dialogue["NoCar"] = {
	["Question"] = "I can't work on your headlights if your car isn't here." ,
	["YesAnswer"] = "Oh okay, I'll go get it." ,
	["NoAnswer"] = "Sorry, I forgot." ,
	["Condition"] = 
	function( ply )
		return true
	end ,
		["Function"] = function( ply )
		return "Exit"
	end
}

GM.OCRP_Dialogue["Skin_003"].Dialogue["BuyHeadlights"] = {
	["Question"] = "Okay, that'll be $50 ,000." ,
	["YesAnswer"] = "Alright, go ahead and install them." ,
	["NoAnswer"] = "Whoa, I can't afford that." ,
	["Condition"] =
	function( ply )
		return true
	end ,
		["Function"] = function( ply )
		net.Start( "OCRP_Buy_Headlights" )
		net.WriteString("White" )
		net.SendToServer( )
		return "Exit"
	end
}

GM.OCRP_Dialogue["Skin_003"].Dialogue["ColorHeadlights"] = {
	["Question"] = "Okay, that'll be $50 ,000." ,
	["YesAnswer"] = "Alright, let me see the color choices." ,
	["NoAnswer"] = "Wow, no way I can afford that." ,
	["Condition"] =
	function( ply )
		return true
	end ,
		["Function"] = function( ply )
		ShowColors("Headlight" )
		return "Exit"
	end
}
