

local OtherCityNames = { 
	"Evo City" ,
	-- "Rockford" ,
	"Ovis City" ,
} 

GM.OCRP_Economy_Events = { } 

-- Dont use spaces in Event_

GM.OCRP_Economy_Events["Event_War01"] = {
	["Name"] = "Conflict with Rival City" ,
	["Desc"] = "Due to the terrible situation with a neighboring city, " .. table.Random( OtherCityNames ) .. ", they have threatened to go to war. This war will damage your economy, seeing as the citizens of the neighboring city have become crazed and will stop at nothing to end this conflict. Your only choice is to pay off some officials of your rivals and this thing will disappear, otherwise you will end up in conflict and your economy will suffer." ,-- The description
	["Choices"] = {
		{
			["Name"] = "Go to war." ,
			["Reward"] = false , -- Does this option have a reward?
			["Ecolose"] = 6 , -- Economy points to lose
			["FailText"] = "Bad Choice! The war was short, but it did hurt your economy. The rival officials were accused of spending city funds on themselves and people revolted. It’s safe to say that those officials won't be seen again." ,
		} ,
		{
			["Name"] = "Buy your way out." ,
			["Reward"] = true , -- Does this option have a reward?
			["Ecogain"] = 0 , -- Economy points to gain
			["Price"] = 300 , -- Cash price to make this decision
			["RewardText"] = "Good Choice! The rival officials decided to back down! The money you sent them got leaked to the public and those officials were voted out of office." ,
		} ,
	} ,
	["Chance"] = false , -- Does this event have a random chance outcome?
	["Ignore"] = false , -- Can this event be ignored?
	}
	
GM.OCRP_Economy_Events["Event_Stock01"] = {
	["Name"] = "New Stock Available" ,
	["Desc"] = "There is some new stock available for a new company that focuses on developing weapons. The company could collapse - but it could also sky-rocket. If it does succeed, then your economy will be boosted any your city will receive a large payoff." ,
	["Choices"] = {
		{
			["Name"] = "Invest in stock." ,
			["Price"] = 150 , -- Cash price to make this decision
			["Ecogain"] = 3 , -- Economy points to gain
			["Ecolose"] = 3 , -- Economy points to lose
			["RewardText"] = "Good Choice! The company began selling, and had a huge breakthrough in the technology of human battle suits. They called one of these suits Bronze Man, and made it a private stock, selling all the older research plans to the military. Either way, you still receive a large payoff for buying stock when it was cheap." ,
			["FailText"] = "Bad Choice! The company plummeted; the only remaining relic of it was the hole it left in your cities budget. Stock prices have dropped." ,
			["MoneyReward"] = 500 , -- Cash reward for success
		} ,
	} ,
	["Ignore"] = true , -- Can this event be ignored?
	["Chance"] = true , -- Does this event have a random chance outcome?
}  
GM.OCRP_Economy_Events["Event_Parade01"] = {
	["Name"] = "Parade Predicament" ,
	["Desc"] = "Due to lack of events throughout your city, your advisory staff has recommended you run an event; in this case it’s a parade. The parade is expected to cost a mere 150 dollars, but the choice ultimately rests upon your shoulders. What will you decide?" ,
	["Choices"] = {
		{
			["Name"] = "don't throw the parade." ,
			["Reward"] = false , -- Does this option have a reward?
			["Ecolose"] = 4 , -- Economy points to lose
			["FailText"] = "Bad Choice! No parade, no reward. It’s that simple. Even worse, people gave you criticism for how lazy you have been." ,
		} ,
		{
			["Name"] = "Perform the parade." ,
			["Price"] = 150 , -- Cash price to make this decision
			["Ecogain"] = 10 , -- Economy points to gain
			["RewardText"] = "Good Choice! The parade was a huge success, tons of people arrived excited for the new parade. Citizens are buying merchandise from the after parade shops, your economy is going to be booming!" ,
			["Reward"] = true , -- Does this option have a reward?
		} ,
	} ,
	["Chance"] = false , -- Does this event have a random chance outcome?
	["Ignore"] = false , -- Can this event be ignored?
 }
 
 
GM.OCRP_Economy_Events["Event_Economy01"] = {
	["Name"] = "An Inactive Economy" ,
	["Desc"] = "Lately the city's economy has been at a standstill: nothing has gone up, nothing has gone down. Your advisory council has considered the thought of printing more money in order to stimulate the economy. However if you do this, there is a chance that the money you print could cause inflation. The economy could tank if there is an excess of printed money, but if you print the right amount your economy will receive a significance boost. It is recommended that you leave this issue alone, unless your economy is doing poorly, as this is a desperate attempt at redemption." ,

	["Choices"] = {
		{
			["Name"] = "Print more money." ,
			["Ecogain"] = 12 , -- Economy points to gain
			["Ecolose"] = 12 , -- Economy points to lose
			["RewardText"] = "Good Choice! After printing some more money and distributing it, more and more people began to withdraw from their bank accounts, leading to more spending. The economy has been booming ever since, and your ratings as mayor have sky-rocketed. Congratulations." ,
			["FailText"] = "Bad Choice! The workers at the money printing facility received a false number, and printed too much money – much more than they were supposed to. Some of the workers reported a large number of thefts from the excess supply as well. The media swarmed in order to get a first-hand report of this disaster. Your economy has plummeted, and money has become almost worthless. I'd be watching out for some violent repercussions." ,
		} ,
		{
			["Name"] = "don't print more money." ,
			["Ecogain"] = 12 , -- Economy points to gain
			["Ecolose"] = 12 , -- Economy points to lose
			["RewardText"] = "Good Choice! It’s a miracle! New products sprung out of nowhere and people began purchasing them like mad. The economy has recovered and you’ve been rated as the best mayor this town has had!" ,
			["FailText"] = "Bad Choice! Nothing happened, and the economy stayed inactive. Trouble's a-brewing." ,
		} ,
	} ,
	["Ignore"] = true , -- Can this event be ignored?
	["Chance"] = true , -- Does this event have a random chance outcome?
 }
 
GM.OCRP_Economy_Events["Event_Speech01"] = {
	["Name"] = "Public Speech" ,-- The Name
	["Desc"] = "Your advisors are worried that the citizens are unsatisfied, and they want you to give a speech regarding the conditions of the city. Citizens have been wondering about the economy and how city affairs are going. If you do not choose to organize the speech, then citizens are bound to become angry. This will hurt the economy." ,-- The description
	["Choices"] = {
		{	
			["Name"] = "Do not give a speech." ,
			["Ecolose"] = 5 , -- Economy points to lose-- EcoPoints Lost
			["Reward"] = false , -- Does this option have a reward?
			["FailText"] = "Bad Choice! The citizens became unruly at your lack of communication and rioted! Police were able to contain the riot shortly after it started but there was still some damage to local businesses." ,
		} ,
		{
			["Name"] = "Organize the Speech." ,
			["Reward"] = true , -- Does this option have a reward?
			["Price"] = 100 , -- Cash price to make this decision
			["Ecogain"] = 8 , -- Economy points to gain
			["RewardText"] = "Good Choice! Citizens respected what you had to say, and the support for the city has increased." ,
		} ,
	} ,
 }
 
 GM.OCRP_Economy_Events["Event_Economy_ATM"] = {
	["Name"] = "ATM Fraud" ,
	["Desc"] = "Police have just discovered that an ATM machine outside of the bank has been used by criminals to gain the credit card details of almost everyone in the city. This means that many people in the city have just lost thousands of dollars – and will be expecting compensation. This also means that the citizens may also damage the economy by withdrawing all their savings in a run on the bank in an attempt to not lose more money, and will likely not spend this money. You can give citizens a large amount of compensation to make up for the losses and also publicly announce the problem - or you could do nothing and see if citizens won't notice the increase of credit card fraud." ,
	["Choices"] = {
		{
			["Name"] = "Provide compensation and have a conference about the recent fraud." ,
			["Price"] = 400 , -- Cash price to make this decision
			["Ecogain"] = 6 , -- Economy points to gain
			["Ecolose"] = 2 , -- Economy points to lose
			["RewardText"] = "Good Choice! After giving your citizens compensation and announcing the recent fraud and giving out a rather well-scripted speech about the city cracking down on criminal activity, the citizens were happy they had received compensation from their losses and were also influenced by your speech to help crack down on crime. The citizens spend their compensation money on anything in sight and the economy has benefited greatly from this." ,
			["FailText"] = "Bad Choice! Although your citizens have the compensation and trust they needed, they still don't trust the ATMs and keep their money in their sock drawers." ,
		} ,
		{
			["Name"] = "Do nothing." ,
			["Ecogain"] = 2 , -- Economy points to gain
			["Ecolose"] = 6 , -- Economy points to lose
			["RewardText"] = "Good Choice! Seems like your police force is on top of this one, and covered your back. They found the criminals and issued a full refund of all reported theft and frauds." ,
			["FailText"] = "Bad Choice! The citizens are truly pissed off; they now see you as a significant threat to the city due to your dishonesty. The citizens all rushed to the banks and withdrew as much money as they could from their accounts. The banks are suffering from heavy losses and bailing them out will only damage the economy more. You look out of the mayor's office window and all you can see is chaos as the city tears itself apart." ,
		} ,
	} ,
	["Ignore"] = false , -- Can this event be ignored?
	["Chance"] = true , -- Does this event have a random chance outcome?
 }
 
 GM.OCRP_Economy_Events["Event_Power01"] = {
	["Name"] = "City Power Consumption" ,-- The Name
	["Desc"] = "Your advisory council has noticed that the lights in your city consume an excess of power. The advisors and the national power grid want to help you get rid of these high-consumption bulbs and replace them with energy efficient bulbs!" ,
	["Choices"] = {
		{
			["Name"] = "Replace the bulbs." ,
			["Reward"] = true , -- Does this option have a reward?
			["Price"] = 400 , -- Cash price to make this decision
			["Ecogain"] = 6 , -- Economy points to gain
			["RewardText"] = "Good Choice! The latest electric bill states that Power consumption is now at an all-time low, meaning more money can go towards the community!" ,
		} ,
		{
			["Name"] = "Do not replace the bulbs." ,
			["Reward"] = false , -- Does this option have a reward?
			["Ecolose"] = 2 , -- Economy points to lose
			["FailText"] = "Bad Choice! Unfortunately, because you didn't replace the bulbs, power consumption was kept at the same rate, causing more money to be spent on it." ,
		} ,
	} ,
	["Ignore"] = false , -- Can this event be ignored?
	["Chance"] = false , -- Does this event have a random chance outcome?
   }
   
 GM.OCRP_Economy_Events["Event_Electricity01"] = {
	["Name"] = "Blackouts" ,-- The Name
	["Desc"] = "Due to the terrible cabling that runs through the city, businesses and home owners are experiencing blackouts! These blackouts are costing the utility company thousands every time a blackout occurs. You need to upgrade the transformers, and doing this will boost your economy because businesses will no longer struggle from these frequent blackouts." ,
	["Choices"] = {
		{
			["Name"] = "Upgrade generators." ,
			["Reward"] = true , -- Does this option have a reward?
			["Price"] = 100 , -- Cash price to make this decision
			["Ecogain"] = 6 , -- Economy points to gain
			["MoneyReward"] = 100 , -- Cash reward for success
			["RewardText"] = "Good Choice! The transformers have been upgraded, and the blackout problem has been solved." ,
		} ,
		{
			["Name"] = "Don’t upgrade generators." ,
			["Reward"] = false , -- Does this option have a reward?
			["Ecolose"] = 6 , -- Economy points to lose
			["FailText"] = "Looks like I'll have to buy some more candles then. I hope you will see the light one day." ,
		} ,
	} ,
	["Ignore"] = true , -- Can this event be ignored?
    ["Chance"] = false , -- Does this event have a random chance outcome?
   }
   
GM.OCRP_Economy_Events["Event_Government01"] = {
	["Name"] = "Government on Strike" ,
	["Desc"] = "Your government is doing a great job. However, they think that their salary is too low for their risky jobs, and are planning to go on a strike for a higher salary. Are you willing to accept their wishes and increase wages?" ,
	["Choices"] = {
		{
			["Name"] = "Increase wages." ,
			["Reward"] = true , -- Does this option have a reward?
			["Price"] = 200 , -- Cash price to make this decision
			["RewardText"] = "Good Choice! Increasing the salary made them happy, and glad to work again. This might cost you some money, but it keeps your city safe, and your economy stable." ,
			["Ecogain"] = 0 , -- Economy points to gain
		} ,
		{
			["Name"] = "Don’t increase wages." ,
			["Reward"] = false , -- Does this option have a reward?
			["FailText"] = "Bad Choice! You chose not to pay your workers, and this made them go on a strike. The amount of criminals, deaths and fires raised badly since your workers won’t do anything about it. It cost you even more money to fix your city with this failure, and so your economy had to suffer in it as well." ,
			["Ecolose"] = 6 , -- Economy points to lose
		} ,
	} ,
	["Ignore"] = false , -- Can this event be ignored?
	["Chance"] = false , -- Does this event have a random chance outcome?
 }
 
GM.OCRP_Economy_Events["Plant_Failure01"] = {
	["Name"] = "Power Plant Failure" ,
	["Desc"] = "The city’s power plant is growing too old to continue working. It may or may not have an extra 5 years on it. We think the main reactor has some cooling problems and it needs new pipes. The backup reactor is too ill-maintained to use." ,
	["Choices"] = {
		{
			["Name"] = "Replace the plant." ,
			["Reward"] = true , -- Does this option have a reward? 
			["Price"] = 300 , -- Cash price to make this decision
			["RewardText"] = "Good Choice! The power plant is running at a normal and safe rate. Looks like you have avoided problems." ,
			["Ecogain"] = 0 , -- Economy points to gain
		} ,
		{
			["Name"] = "Continue running the plant." ,
			["Reward"] = false , -- Does this option have a reward?
			["FailText"] = "Bad Choice! The power plant has been shut down for the safety of the town. There is no power and the city’s economy is failing because businesses can't run without power." ,
			["Ecolose"] = 10 , -- Economy points to lose
		} ,
	} ,
	["Ignore"] = false , -- Can this event be ignored?
	["Chance"] = false , -- Does this event have a random chance outcome?
 }
 
GM.OCRP_Economy_Events["Event_Infection01"] = {
	["Name"] = "Something in the Water" ,-- The Name
	["Desc"] = "In the water distribution system, some experts have run tests, and found that there exists a rare, but deadly parasite in the water which can't be cleaned by the distribution system. It seems that the parasite is living in the drinking water of all civilians, and some of them are already infected and need medical attention. What are you going to do?" ,
	["Choices"] = {
		{
			["Name"] = "Send out warnings." ,
			["Reward"] = true , -- Does this option have a reward?
			["Price"] = 500 , -- Cash price to make this decision
			["Ecogain"] = 20 , -- Economy points to gain
			["Ecolose"] = 15 , -- Economy points to lose
			["RewardText"] = "Good Choice! After warnings were distributed, people began to buy bottled water. The parasite soon died off and the problem was resolved." ,
			["FailText"] = "Bad Choice! Even after the warnings, posters and broadcasts people still drank the contaminated water, more reports of the parasite have come out, and more deaths have been reported." ,
		} ,
		{
			["Name"] = "Upgrade distribution system." ,
			["Reward"] = false , -- Does this option have a reward?
			["Price"] = 300 , -- Cash price to make this decision
			["Ecogain"] = 20 , -- Economy points to gain
			["Ecolose"] = 15 , -- Economy points to lose
			["RewardText"] = "Good Choice! After distributing bottled water, and filtering all parasites from the current system, the city is saved. Call yourself a hero!" ,
			["FailText"] = "Bad Choice! It was too late to upgrade the system, now the parasite has spread to lakes and rivers. The only way for people to drink is through bottled water. The economy has suffered due to wasted funds on the system and the expenses of safe water." ,
		} ,
		{
			["Name"] = "Say that the expert is lying." ,
			["Reward"] = false , -- Does this option have a reward?
			["Ecogain"] = 20 , -- Economy points to gain
			["Ecolose"] = 15 , -- Economy points to lose
			["RewardText"] = "Good Choice! Turns out the expert was lying, and after a thorough investigation the police found out that he had forged documents in order to clear a shipment of 'contaminated' liquid explosives! Bomb threat solved, and so is the ‘parasite’ issue." ,
			["FailText"] = "Bad Choice! Turns out the parasites are no joke, and the death toll is rising. Because of your inability to act, the federal government has stepped in and cut your cities budget." ,
		} ,
	} ,
    ["Ignore"] = false , -- Can this event be ignored?
    ["Chance"] = true , -- Does this event have a random chance outcome?
   }
  
GM.OCRP_Economy_Events["Boost_Tourism01"] = {
	["Name"] = "Boosting Tourism" ,
	["Desc"] = "The town is pretty nice but nothing new and exciting has been built to attract more tourists. There are a couple of ideas you have for funding to build." ,
	["Choices"] = {
		{
			["Name"] = "Build a park." ,
			["Reward"] = true , -- Does this option have a reward?
			["Price"] = 300 , -- Cash price to make this decision
			["RewardText"] = "Good Choice! People love your park and want to come by every weekend to have fun and relax. Even in the winter time, people still love to walk through what they call ‘A Winter Wonderland!’ You have received donations for the city." ,
			["FailText"] = "Bad Choice! The park was popular on opening day but quickly became a Org hideout for the local Org called the Tunnel Cakes." ,
			["Ecogain"] = 15 , -- Economy points to gain
			["Ecolose"] = 15 , -- Economy points to lose
			["MoneyReward"] = 450 , -- Cash reward for success
		} ,
		{
			["Name"] = "Build a community center." ,
			["Reward"] = true , -- Does this option have a reward?
			["Price"] = 500 , -- Cash price to make this decision
			["RewardText"] = "Good Choice! The center’s first concert was the internationally acclaimed rock band Tesla/Edison brought in record sales through tickets and merchandise. The success of this band has brought in many other bands such as the Great Great Tossbones, and the Flyingkick Smurfys." ,
			["FailText"] = "Bad Choice! The center was popular for the first two weeks but it eventually became deserted with only a few visitors a day. No band wanted to play there due to the lack of interest. Luckily the center made enough money to pay off all debts caused by the center, which helped maintain your economy." ,
			["Ecogain"] = 30 , -- Economy points to gain
			["Ecolose"] = 15 , -- Economy points to lose
			["MoneyReward"] = 500 , -- Cash reward for success
		} ,
	} ,
	["Ignore"] = true , -- Can this event be ignored?
	["Chance"] = true , -- Does this event have a random chance outcome?
 }  
 
GM.OCRP_Economy_Events["Event_Drought01"] = {
   ["Name"] = "Serious Drought" ,
   ["Desc"] = "Due to a heat wave the soil is so dry that no crop will grow. Without crops the paycheck of the farmers will drop significantly. The mayor cannot afford this to happen." ,
   ["Choices"] = {
	   {
		   ["Name"] = "Install desalinization plant." ,
		   ["Reward"] = true , -- Does this option have a reward?
		   ["Price"] = 300 , -- Cash price to make this decision
		   ["Ecogain"] = 12 , -- Economy points to gain
		   ["Ecolose"] = 15 , -- Economy points to lose
		   ["RewardText"] = "You have chosen to install huge pump installations that will pump water out of the sea, get all the salt out and then pump it to the fields to give the crops water. This will make sure the crops of this year will not fail and the farmers will vote for you again." ,
		   ["FailText"] = "Bad Choice! It rained on the day the plant opened, making the plant’s expenses unnecessary." ,
	   } ,
	   
	   {
			["Name"] = "Wait for natural rain" ,
			["Reward"] = true , -- Does this option have a reward?
			["Ecogain"] = 12 , -- Economy points to gain
			["Ecolose"] = 10 , -- Economy points to lose
			["RewardText"] = "Good Choice! You have chosen to do nothing. Luckily, it rained a few days after this decision. The crops are saved." ,
			["FailText"] = "Bad Choice! It’s been three more weeks without a drop of rain. The local fields are nothing but dead crops, and the farmers have requests bailouts." ,
	   } ,
   } ,
   ["Ignore"] = false , -- Can this event be ignored?
   ["Chance"] = true , -- Does this event have a random chance outcome?
 }
 
GM.OCRP_Economy_Events["Event_Economy2001"] = {
   ["Name"] = "Traffic Accident" ,
   ["Desc"] = "There's been a large traffic accident just outside of town. Some activists are calling for strict new safety regulations, which would cost precious funds to implement." ,
   ["Choices"] = {
	   {
			["Name"] = "Initiate new safety regulations" ,
			["Reward"] = false , -- Does this option have a reward?
			["Price"] = 50 , -- Cash price to make this decision
			["FailText"] = "Bad Choice! Your new safety regulations are in place. But because it was only one incident, it was a wasted effort." ,
			["Ecolose"] = 1 , -- Economy points to lose
	   } ,
	   {
			["Name"] = "Ignore the incident." ,
			["Reward"] = true , -- Does this option have a reward?
			["RewardText"] = "Good Choice! You didn't need to concern yourself - it was just one incident. Good thinking." ,
			["Ecogain"] = 1 , -- Economy points to gain
	   } ,
   } ,
   ["Ignore"] = false , -- Can this event be ignored?
   ["Chance"] = false , -- Does this event have a random chance outcome?
 }
 
GM.OCRP_Economy_Events["Event_computermeltdown01"] = {
   ["Name"] = "WannaDie Virus" ,
   ["Desc"] = "A virus has infected the computers in the city and now they're bricked! Without computers, there will be no day trading, and the economy will drop. The accountant's office has ordered fresh computers from Japan, but you can buy more expensive ones right now from a neighboring city." ,
   ["Choices"] = {
	   {
			["Name"] = "Buy computers from neighboring city." ,
			["Reward"] = true , -- Does this option have a reward?
			["Price"] = 500 , -- Cash price to make this decision
			["RewardText"] = "Good Choice! You decided to pull some money out of your pocket, and amazingly the number of day traders went up - raising the economy dramatically!" ,
			["FailText"] = "Bad Choice! You waited but the computers never showed up! You called customer service, and they said they never got an order! The new computers from Japan showed up 3 weeks later." ,
			["Ecogain"] = 8 , -- Economy points to gain
			["Ecolose"] = 0 , -- Economy points to lose
		} ,
   } ,
   ["Ignore"] = true , -- Can this event be ignored?
   ["Chance"] = false , -- Does this event have a random chance outcome?
  }
  
GM.OCRP_Economy_Events["Event_EconomyBank01"] = {
    ["Name"] = "Better Banking" ,
    ["Desc"] = "Due to recent corruption in the police department, some officers have robbed some city funds. The safest place to leave your money would be the bank vault, but the vault can be robbed." ,
	["Choices"] = {
	   {
		   ["Name"] = "Put money in a vault." ,
		   ["Ecogain"] = 4 , -- Economy points to gain
		   ["Ecolose"] = 4 , -- Economy points to lose
		   ["RewardText"] = "Good Choice! After pressing charges against the corrupt officers and storing your money in the vault, things have gone smoothly." ,
		   ["FailText"] = "Bad Choice! After pressing charges against the corrupt officers, and then storing your money in the vault, things were going pretty smoothly - that is until the robbers came. Like a swarm of locusts robber after robber hit the vault plundering the money the city had in the vault." ,
		   ["MoneyReward"] = 100 , -- Cash reward for success
	   } ,
	   {
		   ["Name"] = "Do nothing." ,
		   ["Ecogain"] = 4 , -- Economy points to gain
		   ["Ecolose"] = 4 , -- Economy points to lose
		   ["RewardText"] = "Good Choice! Nothing was done, and the problems seemed to be handled well by the police chief." ,
		   ["FailText"] = "Bad Choice! Attempts to reduce corruption were proposed, but because you decided to do nothing the corruption continued. " ,
		   ["MoneyReward"] = 100 , -- Cash reward for success
	   } ,
	} ,
    ["Ignore"] = true , -- Can this event be ignored?
    ["Chance"] = true
}

GM.OCRP_Economy_Events["Event_Vandalism"] = {
   ["Name"] = "Vandalism on the Streets" ,
   ["Desc"] = "Due to lack of law enforcement, vandalism has reached an all-time high. Criminals with spray paint have been tagging walls and breaking into properties - destroying the economy!" ,
   ["Choices"] = {
	   {
		   ["Name"] = "Hire more law enforcement." ,
		   ["Reward"] = true , -- Does this option have a reward? 
		   ["RewardText"] = "Good Choice! Hiring more officers to crack down on vandalism did the trick, and now many of the vandals are behind bars." ,
		   ["Price"] = 100 , -- Cash price to make this decision
		   ["Ecogain"] = 5 , -- Economy points to gain
	   } ,
	   {
		   ["Name"] = "Ignore the vandals." ,
		   ["FailText"] = "Bad Choice! These vandals are going to continue destroying the streets!" ,
		   ["Reward"] = false , -- Does this option have a reward?
		   ["Ecolose"] = 3 , -- Economy points to lose
	   } ,
   } ,
   ["Ignore"] = false , -- Can this event be ignored?
   ["Chance"] = false , -- Does this event have a random chance outcome?
 }

GM.OCRP_Economy_Events["Event_Investment01"] = {
   ["Name"] = "New Business Plan" ,
   ["Desc"] = "There is a new and controversial form of fueling power plants, but it may be a good investment. For a small price the creators are willing to give you a test run of their new system." ,
   ["MoneyReward"] = 500 , -- Cash reward for success
   ["Ecogain"] = 5 , -- Economy points to gain
   ["Ecolose"] = 3 , -- Economy points to lose
   ["Choices"] = {
	   {
			["Name"] = "Test run the system." ,
		    ["MoneyReward"] = 500 , -- Cash reward for success
			["RewardText"] = "Good Choice! The test run was a huge success, and with this new system your city cuts its electric bill in half!" ,
			["FailText"] = "Bad Choice! The test run caused all circuits to blow throughout the city, and the terms you agreed to put the blame on the city, not the developers." ,
			["Ecogain"] = 8 , -- Economy points to gain
			["Ecolose"] = 6 , -- Economy points to lose	
			["Price"] = 100 , -- Cash price to make this decision
	   } ,
	   {
			["Name"] = "don't test run." ,
			["RewardText"] = "Good Choice! A neighboring city, " .. table.Random( OtherCityNames ) .. " had just tested this system - it fried all their circuits and wrecked their electric system! Looks like you made the right call." ,
			["FailText"] = "Bad Choice! After another city, " .. table.Random( OtherCityNames ) .. " tested this new system, it became clear that your choice was a mistake. They saved thousands of dollars within the first month of testing." ,
			["Ecogain"] = 2 , -- Economy points to gain
			["Ecolose"] = 3 , -- Economy points to lose
	   } ,
   } ,
   ["Ignore"] = true , -- Can this event be ignored?
   ["Chance"] = true , -- Does this event have a random chance outcome?
 }
 
GM.OCRP_Economy_Events["Event_Boredom01"] = {
	["Name"] = "No New News" ,
	["Desc"] = "The city hasn't had any sort of major event since the 2009 petrol station fiasco.  The news stations haven’t had anything to report and the pages have practically been filled with farm animals and wet carrots.  You need to compensate for the lack of events, by hosting one yourself, be it a car show, merchant gathering or a public speech.  However, do not make your event too extravagant, the townspeople may be used to their animals and wet carrots!" ,
	["Choices"] = {
		{
			["Name"] = "Host the event which you have created within your imagination." ,
			["Price"] = 200 , -- Cash price to make this decision
			["Ecogain"] = 4 , -- Economy points to gain
			["Ecolose"] = 4 , -- Economy points to lose
			["RewardText"] = "Good Choice! You gave the news something to report! The town will no longer be seen as the boredom capital." ,
			["FailText"] = "Bad Choice! Unfortunately, the townspeople thought your event was too extravagant, didn't join in, and instead watched a donkey eating a wet carrot." ,
		}
	} ,
    ["Ignore"] = true , -- Can this event be ignored?
    ["Chance"] = true , -- Does this event have a random chance outcome?
   }
GM.OCRP_Economy_Events["Event_OilSpill"] = {
	["Name"] = "Fuel Crisis" ,
	["Desc"] = "After a pipe underneath a river beyond the city exploded, fuel has been leaking and is now unavailable from the petrol stations. Car users have been left stranded and fuel is high in demand." ,
	["Choices"] = {
		{
			["Name"] = "Find another supplier of fuel." ,
			["Price"] = 250 , -- Cash price to make this decision
			["Reward"] = false , -- Does this option have a reward?
			["Ecolose"] = 2 , -- Economy points to lose
			["FailText"] = "Bad Choice! Due to you not having the correct money, the government had to fork out a loan in an attempt to solve the crisis, putting you in debt." ,
		} ,
		{
			["Name"] = "Take out a loan to find new supplier." ,
			["RewardText"] = "Good Choice! After the finding another supplier for the fuel, vehicle drivers rejoice!" ,
			["Reward"] = true , -- Does this option have a reward?
			["Ecogain"] = 4 , -- Economy points to gain
		} ,
   } ,
   ["Ignore"] = false , -- Can this event be ignored?
   ["Chance"] = false , -- Does this event have a random chance outcome?
 }
