#define IDC_LIFE_BAR_FOOD 2200
#define IDC_LIFE_BAR_WATER 2201
#define IDC_LIFE_BAR_HEALTH 2202

	class playerHUD
   	{
		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration = 99999999999999999999999999999999999999999999;
	  	fadeout=0;
		name="playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[]={};
		
		class controlsBackground 
		{


			/* Background
			class LIFE_UI_BACK: Life_RscBackground
			{
				colorBackground[] = {0,0,0,0.55};
				x = 0.937656 * safezoneW + safezoneX;
				y = 0.419 * safezoneH + safezoneY;
				w = 0.0625 * safezoneW;
				h = 0.451 * safezoneH;
			};

			/* Progress Bars 

			class LIFE_BAR_HEALTH: Life_RscProgress
			{
				idc = 2202;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.43 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};


			class LIFE_BAR_FOOD: Life_RscProgress
			{
				idc = 2200;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.457 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class LIFE_BAR_WATER: Life_RscProgress
			{
				idc = 2201;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.484 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};



			class LIFE_BAR_FPS: Life_RscProgress
			{
				idc = 2203;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.511 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};

			
			class LIFE_BAR_STAMINA: Life_RscProgress
			{
				idc = 2204;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.538 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};

			class LIFE_BAR_MAGS: Life_RscProgress
			{
				idc = 2205;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.565 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};


			class LIFE_BAR_AMMO: Life_RscProgress
			{
				idc = 2206;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.592 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};


			class LIFE_BAR_SELECT: Life_RscProgress
			{
				idc = 2207;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.619 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};*/

			/*class LIFE_BAR_BATTERY: Life_RscProgress
			{
				idc = 2208;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.646 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};

			class LIFE_BAR_KARMA: Life_RscProgress
			{
				idc = 2209;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.673 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};

			class LIFE_BAR_POOP: Life_RscProgress
			{
				idc = 2210;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.7 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};

			class LIFE_BAR_DIRT: Life_RscProgress
			{
				idc = 2211;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.727 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};

			class LIFE_BAR_PIZZA: Life_RscProgress
			{
				idc = 2212;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.754 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};

			class LIFE_BAR_BRONUT: Life_RscProgress
			{
				idc = 2213;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.781 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};

			class LIFE_BAR_PROSTI: Life_RscProgress
			{
				idc = 2214;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.809 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};

			class LIFE_BAR_RIP: Life_RscProgress
			{
				idc = 2215;
				x = 0.958281 * safezoneW + safezoneX;
				y = 0.836 * safezoneH + safezoneY;
				w = 0.041875 * safezoneW;
				h = 0.022 * safezoneH;
			};*/

			class healthHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\health.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.43 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};


			class foodHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "icons\food.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.457 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};
			
			class waterHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "icons\water.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.484 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};
			
			class fpsIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\fps.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.511 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};


			class moneyHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\stamina.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.538 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			class ammoHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\ammo.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.565 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			class bulletHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\bullets.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.592 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			class selectHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\select.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.619 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			/*class batteryHIcon : life_RscPicture  
			{
				
				idc = -1;
				text = "icons\phone100.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.646 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			class karmaHIcon : life_RscPicture  
			{
				
				idc = -1;
				text = "icons\karma.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.673 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			class poopHIcon : life_RscPicture  
			{
				
				idc = -1;
				text = "icons\poop.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.7 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			class dirtHIcon : life_RscPicture  
			{
				
				idc = -1;
				text = "icons\dirt.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.727 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			class pizzaHIcon : life_RscPicture  
			{
				
				idc = -1;
				text = "icons\pizza.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.754 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			class bronutHIcon : life_RscPicture  
			{
				
				idc = -1;
				text = "icons\bronut.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.781 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};

			class prostiHIcon : life_RscPicture  
			{
				
				idc = -1;
				text = "icons\prosti.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.809 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};
			class ripHIcon : life_RscPicture  
			{
				
				idc = -1;
				text = "icons\rip.paa";
				x = 0.942356 * safezoneW + safezoneX;
				y = 0.836 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};*/
		};
		
		class controls
		{



			class healthtext
			{
				type=0;
				idc=23515;
				style=0;

				x = 0.970906 * safezoneW + safezoneX;
				y = 0.428 * safezoneH + safezoneY;
				w = 0.05; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};





			class foodtext
			{
				type=0;
				idc=23500;
				style=0;

				x = 0.970906 * safezoneW + safezoneX;
				y = 0.455 * safezoneH + safezoneY;
				w = 0.05; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};










			class watertext
			{
				type=0;
				idc=23510;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.482 * safezoneH + safezoneY;
				w = 0.05; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class fpstext
			{
				type=0;
				idc=23495;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.509 * safezoneH + safezoneY;
				w = 0.05; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";			
			};


			class moneytext
			{
				type=0;
				idc=23520;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.536 * safezoneH + safezoneY;
				w = 0.05; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";			
			};


			class ammotext
			{
				type=0;
				idc=23525;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.563 * safezoneH + safezoneY;
				w = 0.05; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};


			class bullettext
			{
				type=0;
				idc=23530;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.590 * safezoneH + safezoneY;
				w = 0.05; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};



						//Display Total Money
			/*class selecttext
			{
				type=0;
				idc=23535;
				style=0;
				x = 0.964 * safezoneW + safezoneX;
				y = 0.617 * safezoneH + safezoneY;
				w = 0.1; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};


			class batterytext              //  Add this area <-----
			{
				type=0;
				idc=23600;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.644 * safezoneH + safezoneY;
				w = 0.05; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};


			class karmatext              //  Add this area <-----
			{
				type=0;
				idc=23605;
				style=0;
				x = 0.964 * safezoneW + safezoneX;
				y = 0.671 * safezoneH + safezoneY;
				w = 0.1; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};			

			class pooptext              //  Add this area <-----
			{
				type=0;
				idc=23610;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.698 * safezoneH + safezoneY;
				w = 0.1; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};		

			class dirttext              //  Add this area <-----
			{
				type=0;
				idc=23615;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.725 * safezoneH + safezoneY;
				w = 0.1; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};	

			class pizzatext              //  Add this area <-----
			{
				type=0;
				idc=23905;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.752 * safezoneH + safezoneY;
				w = 0.1; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};		


			class bronuttext              //  Add this area <-----
			{
				type=0;
				idc=23910;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.779 * safezoneH + safezoneY;
				w = 0.1; 
				h = 0.04;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";

			};		

			class prostitext              //  Add this area <-----
			{
				type=0;
				idc=23915;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.806 * safezoneH + safezoneY;
				w = 0.1; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};		


			class riptext              //  Add this area <-----
			{
				type=0;
				idc=23920;
				style=0;
				x = 0.970906 * safezoneW + safezoneX;
				y = 0.833 * safezoneH + safezoneY;
				w = 0.1; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};		

			class bleedingtext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23570;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.463 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};

			class woundedtext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23575;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.503 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};	
			class fracturetext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23580;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.543 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};	

			class unconcioustext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23585;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.583 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};	


			class diseasetext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23590;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.623 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};

			class tfrchattext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23595;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.753 * safezoneH + safezoneY;
				w = 0.5; 
				h = 0.8;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};	*/
		};   
 	};