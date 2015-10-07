waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					Evo 3 Life V0.1 <br/>
					First Beta Test version for Staff Members<br/><br/>
					
					Evo 3 Life V0.5 <br/>
					Beta Test Open to Donators<br/><br/>
					
					Evo 3 Life V1.0 <br/>
					Open to the Public!
					
				"
		]
	];
	
	
		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				These are considered exploits, and you will not be kicked, but banned.<br/><br/>

				1. Getting out of jail via any method other than via an open door.<br/>
				2. Killing yourself to get out of roleplay. Getting out of being tazed, restrained, arrested, jail, etc. If the log shows you got arrested, then you died, you will be banned.<br/>
				3. Duping items and/or money. If someone sends you an unobtainable amount of money right at the start of the game, report to an admin IMMEDIATELY and transfer said money to an admin. Do this ASAP or an admin could ban you if they see that much on you without question.<br/>
				4. Using clearly hacked items. If a hacker comes in and spawns unobtainable items, you could be banned for using said items. Report the items to the admins immediately and stay away from them.<br/>
				5. Stealing cars within 1 min of the owner getting out of the car. You must give them enough time to lock it.<br/>
				6. Abusing bugs or game mechanics for gain. Is there a replicating gun somewhere? Report it and leave it alone. If an admin catches you abusing the glitch, ban.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					Robbing, or killing in and around these areas is punishable by ban.<br/><br/>
					
					Any Area marked GREEN<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Breaking Rules", 
				"
				If your actions are found to be in breach of any of our rules you will receive a minimum of a 1 DAY BAN. ANY repeat offence of any kind will result in a PERM BAN!<br/>
				If you are permanently banned you must wait 6 months to apply to be unbanned.
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Cop Interaction", 
				"
				Items on this list may result in your removal from the server and a ban.<br/><br/>
				
				1. Civilians can be arrested for looking in cops' backpacks/vehicles. Constantly doing this will result in your removal from the server.<br/>
				2. Civilians can be arrested for following cops in game in order to give away their position.<br/>
				3. Civilians who take up arms to kill cops in town or elsewhere for no RP reason will be considered RDMing. See RDMing section.<br/>
				4. Following and or harassing cops for long periods of time will be considered griefing and/or spamming, and will result in your removal from the server.<br/>
				5. Actively blocking cops from doing their duties can lead to your arrest. Constantly doing this will result in your removal from the server.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boats", 
				"
				Items on this list may result in your removal from the server and a ban.<br/><br/>
				
				1. Repeatedly pushing boats without permission.<br/>
				2. Pushing a boat with the intention of hurting or killing someone. This is not RP, it is just a flaw in the mechanics.<br/>
				3. Purposefully running over swimmers/divers.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Aviation", 
				"
				Items on this list may result in your removal from the server and a ban.<br/><br/>
				
				1. Purposefully ramming a helicopter into anything. Other helicopters, vehicles, buildings.<br/>
				2. Flying below 150m over the city constantly. Once is illegal, more than that you risk crashing into the city, thus against server rules.<br/>
				3. Stealing helicopters without proper warning and significant time for the driver to lock the vehicle. If they land and run away without locking, fine, if they just get out and you get in before they get a chance to lock it, no no.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				Items on this list may result in your removal from the server and a ban.<br/><br/>
				
				1. Purposefully running people over (VDM). There are accidents, and then there is going out of your way to run someone over.<br/>
				2. Purposefully throwing yourself in front of vehicles in order to die/get hurt.<br/>
				3. Ramming into other vehicles in order to cause an explosion.<br/>
				4. Constantly trying to enter vehicles that do not belong to you in order to grief the vehicle owner, and not trying to RP.<br/>
				5. Stealing a vehicle just to crash it or otherwise destroy it.<br/>
				6. Purchasing multiple vehicles for the purpose of doing any of the above.<br/>
				7. The only reason for shooting at a vehicle would be to disable it and/or fire warning shots in a role-play scenario.You are not to deliberately destroy enemies vehicles.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication Rules", 
				"
				Items on this list may result in your removal from the server and a ban.<br/><br/>
				
				1. Text chat is ONLY to be done via cell phone.<br/>
				2. Spamming any chat channel will result in your removal.<br/>
				4. You MUST be in TeamSpeak and have Task Force Radio running to play on this server.<br/>
				5. Civs can steal cop radios to listen in, trolling on the radio will get you banned.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Items on this list may result in your removal from the server and a ban.<br/><br/>
				
				1. Killing anyone without a roleplay cause.<br/>
				2. Declaring a crime scene is not a cause to kill anyone, even cops.<br/>
				3. Cops and civilians can only commence in a shootout if there are reasons relating to a crime.<br/>
				4. If you are killed in the crossfire of a fight, it is not RDM.<br/>
				5. Killing someone in an attempt to protect yourself or others is not RDMing.<br/>
				6. Shooting a player without giving reasonable time to follow demands is considered RDM.<br/><br/>
				
				These are all judged by cops on a case by case basis.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Rule", 
				"
				The New Life Rule applies to police and civilians.<br/><br/>
				
				Items on this list may result in your removal from the server and a ban, based on the admins discretion.<br/><br/>

				1. If you are killed you must wait 15 minutes before returning to the scene of your death.<br/>
				2. If you die during roleplay your past crimes are forgotten, but you also cannot seek revenge.<br/>
				3. If you are RDM'd, it is not a new life.<br/>
				4. If you manually respawn, it is not a new life.<br/>
				5. If you purposefully kill yourself to avoid roleplay, it is not a new life.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Don't Be A Dick!", 
				"
				If an admin has to tell you that you are being a dick, you are doing dickish things.<br/>
				Causing others grief, disrupting roleplay, the list goes on.<br/>
				Just don't be a dick okay?<br/>
				This rule may be invoked at an admin's discretion.<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Hostage Negotiation",
				"
				Hostage Negotiation must be handled by a Sergeant. If one is not available, the person with the next highest rank must handle the situation.<br/><br/>
				
				1. If caught, you will be jailed for hostage taking regardless of whether or not you have any actual hostages.<br/>
				2. Hostage takers can only be given up to $5000 per hostage. <br/>
				3. Police are not to storm the building/area unless<br/>
				A. The hostage taker starts killing hostages.<br/>
				B. The hostage takers start shooting at cops.<br/>
				4. Hostage takers can request a radio for communication with the negotiator.<br/>
				5. Money transfers must be made in person and not via wire transfer.<br/>
				6. Only a Lieutenant or above can authorise vehicle transport. If none are online hostage takers will have to find their own getaway car.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Essex County Bank",
				"
				1. The bank is currently under construction, civs may only enter to talk to the Diamond Dealer.
				2. Helicopters hovering over/near the Bank may be asked to leave and disabled if they refuse.<br/>
				2. If the Diamond Dealer is getting robbed, it is encouraged that all available officers move in to stop it.<br/>
				3. Nearby officers should immediately head to the Bank to assist. Petty crimes can be dropped during a robbery.<br/>
				4. Lethal force on bank robbers may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
				5. Police may not fire blindly into the building.<br/>
				6. The police should evacuate the civilians from the building during a robbery.<br/>
				7. Any civilian who actively makes an attempt to block the police from entering the building may be treated as an accomplice.<br/>
				8. Supervisory officers may hire individuals or contract a group of people to work as security guards for the bank. See 'Contracting' section for more information.<br/>
				9. No weapons are allowed in the bank unless you are Law Enforcement or Security.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				1. No helicopter can land within city limits without authorization from the highest ranking officer online.<br/>
				Small towns: An appropriate location may be chosen. This is to be judged by officers on a case by case basis.<br/><br/>
				
				2. Helicopters may not land on roads.<br/>
				3. Police may temporarily forbid landing at Airport but it cannot remain closed for a long period of time.<br/>
				4. Helicopters cannot fly below 150m over the city without authorization.<br/>
				5. Helicopters cannot hover over the city. Cops may only hover over the city if there is an active police operation going on.<br/>
				6. Helicopters not following orders in a timely manner will be shot down if safe to do so.<br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Areas", 
				"
				1. Gang Hideouts are not considered illegal. Thus a cop may enter without a warrant, but may not restrain or stop anyone inside without probable cause/illegal activity. (being in the building is NOT probable cause/illegal activity.)<br/>
				2. Do not enter an illegal area unless it is part of a raid. See Raiding/Camping.<br/>
				3. If you chase someone into an illegal area/Gang Hideout, call for backup.<br/>
				4. Under no circumstances is an officer allowed to camp any illegal area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				1. Police may patrol the island's roads and towns searching for abandoned vehicles and criminal activity.<br/>
				2. Patrols can be done on foot inside of a town, or in a vehicle when outside.<br/>
				3. Patrols do not include illegal areas. See Raiding/Camping.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Cops are encouraged to setup checkpoints in strategic areas to help combat illegal activity and promote safety on the road.<br/><br/>
				
				1. A checkpoint must consist of 3 or more officers, utilizing 2 or more vehicles. DOC Officers can assist with checkpoints.<br/>
				2. A checkpoint can not be setup within 300m of an illegal area. Basically, you cannot set one up on top of an illegal area.<br/>
				3. Checkpoints may only be setup on roads, but it does not have to be on a crossroad.<br/>
				4. Checkpoints do not have to be marked on the map.<br/><br/>


				Proper Checkpoint Procedure:<br/>
				1. Have the driver stop the vehicle at a safe distance and turn off the engine.<br/>
				2. Ask the driver and any passengers if they have any weapons.<br/>
				3. Ask the driver and any passengers to exit the vehicle. If they have weapons, do not immediately restrain them when they get out, tell them to lower their weapons and given them a reasonable amount of time to do so.<br/>
				4. Ask them where they are headed to and from.<br/>
				5. Ask if they will submit to a search.<br/>
				6. All civs MUST submit to a search at a checkpoint.<br/>
				7. After the search is done, you may allow them to re-enter their vehicle and drive away.<br/>
				8. In case anything illegal is found, the person may be ticketed or arrested depending on the crime.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Vehicles", 
				"
				1. Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/>
				2. Vehicles that look abandoned, broken, with no driver, can be impounded.<br/>
				3. Boats should be parked reasonably on shore.<br/>
				4. Any vehicle that hasn't moved in a significant amount of time may be impounded.<br/>
				5. Impounding is an essential job for a cop, it helps keep the server clean and less laggy.<br/>
				6. If in doubt, always search the vehicle and message the owner(s) before impounding.<br/>
				7. Police speedboats may be used to assist in apprehending criminals. The weapon should be used to disable vehicles, not to blow them up.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Speeding", 
				"
				The following speeds are to be enforced by the Essex County Sheriff's Department for the absolute safety of all citizens.<br/><br/>
				
				Inside town:<br/>
				50km/h<br/>
				Outside town:<br/>
				80km/h<br/><br/>
				Speed limits are clearly marked with signs and enforced with automated cameras.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"City Protocol", 
				"
				1. Officers may patrol anywhere within Essex County<br/>
				2. Officers should stop by the car shops to make sure there are no cars that need to be impounded.<br/>
				3. Officers may not stand around or loiter in the centre of town.<br/>
				4. Officers may close of any area as a crime scene, they must use barriers and man the cordon.<br/>
				5. Martial law may not be declared at any time.<br/>
				6. Sheriff buildings are illegal for civilians to enter without authorization, however it is NOT illegal for civilians to be nearby unless they are causing a nuisance.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Arresting and Ticketing",
				"
				Arresting should be done to criminals who are considered a danger to themselves or others.<br/><br/>

				1. You must tell the suspect why they are being arrested before you arrest them.<br/>
				2. If a civilian is wanted, you may arrest them. Do not kill them, unless the situation falls under the 'Use of Lethal Force' section.<br/><br/>


				Ticketing a civilian is considered a warning for the civilian. If they break a law, but do not pose a threat to anyone, you may ticket a civilian.<br/><br/>

				1. Tickets must be a reasonable price.<br/>
				2. Ticket prices should be based off of the crimes committed.<br/>
				3. Refusal to pay a legit ticket is grounds for arrest.<br/>
				4. Giving a civilian and illegitimate ticket, such as $100k for speeding, etc., is not allowed and will result in your removal from the Sheriff department.<br/><br/>
				
				A complete list of all crimes and the appropriate punishments should be given to officers during training. If in doubt, or if you have not been trained, ask a higher ranking officer what to do.<br/><br/>
				
				The list is available at crime.sealteamsloth.com<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["civrules",
		[
			"Weapons", 
				"
				A cop is NEVER allowed to supply civilians with weapons. This will get you banned from the server and removed from being a cop.<br/><br/>

				Legal Weapons for Civilians to carry with a permit:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/>
				6. Desert Eagle<br/><br/>

				Any other weapon (Including Silencers) are illegal.<br/><br/>

				1. Civilians are not allowed to have a weapon out within the town limits.<br/>
				2. Civilians may have a gun out when they are not in the town. However they should submit to a license search if confronted by an officer and should have the gun lowered (Press Ctrl Twice).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
				At this time the Taser is the only form of Non-Lethal Force.<br/><br/>

				1. Taser should be used to incapacitate non complying civilians in order to restrain them.<br/>
				2. Do not discharge your Taser unless you intend to incapacitate a civilian, randomly discharging your weapon will result in your suspension.<br/>
				3. Only use your Taser in compliance with the laws and the rules, do NOT enforce your will on others.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				Raiding is defined as a squad of police officers invading an area of high criminal activity in order to stop the criminals in illegal acts.<br/><br/>

				1. In order to raid an area, the cops must have at least 4 officers involved, one of which must be a Sergeant or above.<br/>
				2. All civilians in a raid area may be restrained and searched. If nothing illegal is found, you must let them go.<br/>
				3. If illegals are found during a search, you may proceed to arrest or fine as usual.<br/>
				5. Lethal force is only authorized as described under 'Use of Lethal Force'.<br/>
				6. After the area is secure, the officers must leave the area.<br/>
				7. An area cannot be raided again for 20 minutes after a previous raid.<br/>
				8. If the raid is a failure (All officers die), the 20 minute timer still applies to those officers.<br/>
				9. Backup may be called in, but it may not consist of fallen officers (see 'New Life Rule').<br/><br/>

				Camping is defined as the prolong stay of an officer in an area.<br/><br/>

				1. Checkpoints are not considered camping. See Checkpoint section for a definition of proper checkpoint procedures.<br/>
				2. Officers may work undercover with permission from a Lieutenant or above.<br/>
				3. Camping of illegal areas is staying longer than needed after a raid, or if officers do not conduct a raid but continue to watch and take action against civilians entering the area.<br/>
				4. Officers working Under Cover may camp illegal areas as long as they like.<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
				The highest ranking officer on duty is in charge of the police force outside of admins currently online. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

				Police Chain of Command:<br/>
				1. Sheriff (Owners Only) - William call sign <br/>
				2. Colonel (Not in use) - Victor call sign <br/>
				3. Captain - Edward call sign <br/>
				4. Lieutenant - Union call sign <br/>
				5. Sergeant - David call sign <br/>
				6. Sheriff SWAT - Robert call sign <br/>
				8. Sheriff Deputy - King call sign <br/>
				9. Department of Corrections Officer - Adam call sign<br/>
				<br/>
				Example: Dispatch this is 1 Adam, escorting prisoner back to County.
				<br/>

				To find out about training or transferring from the ILPD to the ECSO please contact a sergeant.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Jail Times and Ticket Prices",
				"
				Felony Jail Times<br/><br/>

				Murder - 20 mins + 5 mins per murder<br/>
				Vehicular Manslaughter - 20 mins + 5 mins per murder<br/>
				Attempted Murder - 10 mins<br/>
				Attempted Vehicular Manslaughter - 10 mins<br/>
				Drug Trafficking - 10 mins<br/>
				Armed Robbery - 30 mins<br/>
				Prison Break - 30 mins<br/>
				Kidnapping - 25 mins<br/>
				Attempted Kidnapping - 15 mins<br/>
				Theft of a motor vehicle - 10 mins<br/>
				Attempted Auto Theft - 5 mins<br/>
				Failing/Refusing to pay a ticket - 60 mins<br/>
				Theft of a law enforcement vehicle - 15 mins<br/>
				Failing to stop for over 20 mins - 10 mins<br/>
				Failing to stop under 10 mins - 10 mins<br/>
				Other - 10 mins<br/>
				<br/>
				
				<br/>
				Misdemeanor Ticket Prices
				<br/><br/>
				Drug Possession - 10k<br/>
				Speeding - 5k<br/>
				Driving without a license - 15k<br/>
				Trespassing - 10k<br/>
				Discharging your weapon inside city limits - 25k<br/>
				Illegal firearm possession - 25k<br/>
				Reckless Driving - 5k<br/>
				Damage/Destruction of property - Half value of property<br/>
				Damage/Destruction of Government Property - Full value of property<br/>
				Disturbing the peace - 100<br/>
				Other - 5k<br/><br/>
				If someone is found with known criminals they MAY be given the same punishment<br/>
				"
		]
	];	
	
	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"
				1. Use of Lethal force is only permitted for the protection of your life, another officers life, or a civilians life, if and only if non-lethal force would not be effective.<br/>
				2. Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule will be removed from the server and suspended from the ECSD.<br/>
				3. Failure to follow proper weapons discipline and procedure will get you removed from the server and suspended from the ECSD.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Rule",
				"
				1. All cops must be on Teamspeak and have Task Force Radio enabled at all times!<br/>
				2. Please join Teamspeak BEFORE you spawn in as a cop, heck, join Teamspeak before you even join the server.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	/*player createDiaryRecord ["illegalitems",
		[
			"Rebel Rules",
				"
				A rebel is one who rises in armed resistance against a government. In this case it would be the police. However, due to the small amount of police compared to the possible amount of rebels, do not attack the police without a reason, please be civil and use common sense, and don't take the word rebel literally, but instead how it will make this server fun for all.<br/><br/>
				1. A rebel must first form a gang, and then declare intentions.<br/>
				2. Resistance does not excuse RDMing (See RDMing in General Rules)<br/>
				3. Resistance roleplay should be conducted in more ways than constantly robbing the bank or shooting police officers.<br/>
				4. Resistance must be coordinated.<br/>
				5. A PROPER reason must be behind each and every attack.<br/><br/>
				"
		]
	];*/
	player createDiaryRecord ["illegalitems",
		[
			"Gang Rules",
				"
				1. Being in a gang is not illegal. Only when illegal crimes are committed.<br/>
				2. Being in a gang area is not illegal. Only when partaking in illegal activities.<br/>
				3. Gangs may hold and control gang areas. Other gangs may attack a controlling gang to compete for control of a gang area.<br/>
				4. Gangs may not kill unarmed civilians, unless said civilian is part of a rival gang and in your gangs controlled area or they fail to follow commands in a reasonable time.<br/>
				<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				It is an offence for any civilian to drive a Law Enforcement vehicle without permission.
				"
		]
	];
	/*player createDiaryRecord ["illegalitems",
		[
			"Illegal Weapons",
				"
				A civilian in possession of the following is subject to the consequences as defined in the illegal possession of a firearm law.<br/><br/>

				1. AK47<br/>
				2. Uzi<br/>
				3. M$ SBR<br/>
				4. Taser<br/>
				5. Any explosives<br/><br/>
				"
		]
	];*/
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				The following items are illegal to posses:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/>
				6. Handcuffs<br/>
				7. Handcuff Keys<br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				Left Shift + R: Restrain (Cop Only)<br/>
				Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (as a cop).<br/>
				Left Shift + H: Holster's your pistol<br/>
				"
		]
	];