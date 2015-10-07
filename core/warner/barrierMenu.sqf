/*
	   Warner's Barrier Menu
		Author: Warnerm14
	http://lathanalife.enjin.com
	  File: barriermenu.sqf
*/
	
				placebarrier =  {  
					_pos = position player;
					_barrier = "RoadBarrier_F" createVehicle ([0,0,0]);
					_dir = getDir player;
					_barrier setpos _pos;
					_barrier setDir _dir;
				};    
			
				placecone =  {  
					_pos = position player;  
					_cone = "RoadCone_F" createVehicle ([0,0,0]);  
					_dir = getDir player;  
					_cone setpos _pos; 
					_cone setDir _dir; 
				}; 
				
				placegate = {
					_pos = position player;
					_gate = "Land_BarGate_F" createVehicle ([0,0,0]);
					_dir = getDir player;
					_gate setpos _pos;
					_gate setDir _dir;
				};
				
				placeblock = {
					_pos = position player;
					_block = "Land_CncBarrier_stripes_F" createVehicle ([0,0,0]);
					_dir = getDir player;  
					_block setpos _pos; 
					_black setDir _dir; 
				};
			
				removebarrier =  {  
					_list = position player nearObjects ["RoadBarrier_F",1.5];
					_barrier = (_list select 0);
					deleteVehicle _barrier;
				}; 
			
				removecone =  {  
					_list = position player nearObjects ["RoadCone_F", 1];
					_cone = (_list select 0);
					deleteVehicle _cone; 
				}; 
				
				removegate =  {  
					_list = position player nearObjects ["Land_BarGate_F",1.5];
					_gate = (_list select 0);
					deleteVehicle _gate;
				};
				
				removegate =  {  
					_list = position player nearObjects ["Land_CncBarrier_stripes_F",1.5];
					_block = (_list select 0);
					deleteVehicle _block;
				};
				
				removebarriers = {
					player removeAction placeCone;
					player removeAction placeBarrier;
					player removeAction placeGate;
					player removeAction placeBlock;
					player removeAction removeCone;
					player removeAction removeBarrier;
					player removeAction removeGate;
					player removeAction removeBlock;
					player removeAction cancelBarrier;
					player removeAction header;
				};
	
	header = player addaction [("<t color=""#FF3300"">" + ("### Barriers ###") +"</t>"),""]; 
	placeCone = player addaction ["Place Road Cone",placecone]; 
	placeBarrier = player addaction ["Place Barrier",placebarrier];
	placeGate = player addaction ["Place Bar Gate",placegate];
	placeBlock = player addaction ["Place Road Block",placeblock];
	removeCone = player addaction ["Remove Road Cone",removecone]; 
	removeBarrier = player addaction ["Remove Barrier",removebarrier]; 
	removeGate = player addaction ["Remove Bar Gate",removegate];
	removeBlock = player addaction ["Remove Road Block",removeblock];
	cancelBarrier = player addaction [("<t color=""#FF3300"">" + ("### Cancel ###") +"</t>"),removebarriers];
		
	player removeAction barrierMain;
