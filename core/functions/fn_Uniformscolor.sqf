#include <macro.h>
/*
	COP UNIFORM SCRIPT
    Edited: by grimzy for better handling of police uniforms
    Created for www.4th-division.com
*/
#define FETCH_CONST(var) (call var)

if(side player == WEST) then {
        // Doc Part 2.
        if (uniform player == "doj_uni" && (FETCH_CONST(life_coplevel) == 2)) then {
                player setObjectTextureGlobal [0, "\uniforms\doc\A3L_DoJ_private.paa"];
        };
        // Doc Part 3 (SWAT).
        if (uniform player == "doj_uni" && (FETCH_CONST(life_coplevel) == 3)) then {
                player setObjectTextureGlobal [0, "\uniforms\doc\A3L_DoJ_corporal.paa"];
        };
		// Doc Part 4 (Sgt).
        if (uniform player == "doj_uni" && (FETCH_CONST(life_coplevel) == 4)) then {
                player setObjectTextureGlobal [0, "\uniforms\doc\A3L_DoJ_sergeant.paa"];
        };
        // Sheriff Part 2.
        if (uniform player == "sheriff_uni2" && (FETCH_CONST(life_coplevel) == 2)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\tan\A3L_deputy2_private.paa"];
		};
        // Sheriff Part 3 (SWAT).
        if (uniform player == "sheriff_uni2" && (FETCH_CONST(life_coplevel) == 3)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\tan\A3L_deputy2_corporal.paa"];
        };
		// Sheriff Part 4 (Sgt).
        if (uniform player == "sheriff_uni2" && (FETCH_CONST(life_coplevel) == 4)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\tan\A3L_deputy2_sergeant.paa"];
		};
        // Sheriff Part 5 (Lt).
        if (uniform player == "sheriff_uni2" && (FETCH_CONST(life_coplevel) == 5)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\tan\A3L_deputy2_lieutenant.paa"];
        };
		// Sheriff Part 6 (Capt).
        if (uniform player == "sheriff_uni2" && (FETCH_CONST(life_coplevel) == 6)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\tan\A3L_deputy2_captain.paa"];
		};
		// Sheriff Part 7 (Owner).
        if (uniform player == "sheriff_uni2" && (FETCH_CONST(life_coplevel) == 7)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\tan\A3L_deputy2_general.paa"];
		};
		// SRU Part 3 (SWAT).
        if (uniform player == "sheriff_uni1" && (FETCH_CONST(life_coplevel) == 3)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\grey\A3L_deputy1_corporal.paa"];
		};
		// SRU Part 4 (Sgt).
        if (uniform player == "sheriff_uni1" && (FETCH_CONST(life_coplevel) == 4)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\grey\A3L_deputy1_sergeant.paa"];
		};
		// SRU Part 5 (Lt).
        if (uniform player == "sheriff_uni1" && (FETCH_CONST(life_coplevel) == 5)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\grey\A3L_deputy1_lieutenant.paa"];
		};
		// SRU Part 6 (Capt).
        if (uniform player == "sheriff_uni1" && (FETCH_CONST(life_coplevel) == 6)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\grey\A3L_deputy1_captain.paa"];
		};
		// SRU Part 7 (Owner).
        if (uniform player == "sheriff_uni1" && (FETCH_CONST(life_coplevel) == 7)) then {
                player setObjectTextureGlobal [0, "\uniforms\sheriff\grey\A3L_deputy1_general.paa"];
		};
		// SWAT Part 3 (SWAT).
        if (uniform player == "sert_uni1" && (FETCH_CONST(life_coplevel) == 3)) then {
                player setObjectTextureGlobal [0, "\uniforms\swat\A3L_SERT1_corporal.paa"];
		};
		// SWAT Part 4 (Sgt).
        if (uniform player == "sert_uni1" && (FETCH_CONST(life_coplevel) == 4)) then {
                player setObjectTextureGlobal [0, "\uniforms\swat\A3L_SERT1_sergeant.paa"];
		};
		// SWAT Part 5 (Lt).
        if (uniform player == "sert_uni1" && (FETCH_CONST(life_coplevel) == 5)) then {
                player setObjectTextureGlobal [0, "\uniforms\swat\A3L_SERT1_lieutenant.paa"];
		};
		// SWAT Part 6 (Capt).
        if (uniform player == "sert_uni1" && (FETCH_CONST(life_coplevel) == 6)) then {
                player setObjectTextureGlobal [0, "\uniforms\swat\A3L_SERT1_captain.paa"];
		};
		// SWAT Part 7 (Owner).
        if (uniform player == "sert_uni1" && (FETCH_CONST(life_coplevel) == 7)) then {
                player setObjectTextureGlobal [0, "\uniforms\swat\A3L_SERT1_general.paa"];
		};
		//Backpack Cop
		if ((backpack player) == "B_Carryall_khk") then {
				backpackContainer player setObjectTextureGlobal [0, "textures\police\copcarryall.paa"];
		};
		// Assault Pack
		if ((backpack player) == "B_Kitbag_mcamo") then {
				backpackContainer player setObjectTextureGlobal [0, "textures\police\Police_Kitbag.paa"];
		};
};