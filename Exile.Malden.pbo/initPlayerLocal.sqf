/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 31 NPCs
private _npcs = [
["Exile_Trader_Boat", ["HubSittingChairUA_move1"], "Exile_Trader_Boat", "WhiteHead_17", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Combat",[],["","","","","",""]], [939.595, 667.002, 2.03141], [-0.449143, 0.89346, 0], [0, 0, 1]],
["Exile_Trader_Diving", ["HubSittingChairUA_idle2"], "Exile_Trader_Diving", "WhiteHead_06", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [936.387, 670.029, 2.03141], [-0.128442, -0.991717, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubSittingChairC_idle3"], "Exile_Trader_BoatCustoms", "WhiteHead_08", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [936.887, 666.966, 2.0348], [0.695684, 0.718347, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubSittingChairUA_move1"], "Exile_Trader_Boat", "WhiteHead_12", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Clear",[],["","","","","",""]], [5490.45, 11688.7, 3.41124], [-0.779146, 0.626842, 0], [0, 0, 1]],
["Exile_Trader_Diving", ["HubSittingChairUA_idle2"], "Exile_Trader_Diving", "WhiteHead_04", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [5486.28, 11690.2, 3.28105], [0.294276, -0.95572, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubSittingChairC_idle3"], "Exile_Trader_BoatCustoms", "WhiteHead_08", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Black",[],["","","","","",""]], [5488, 11687.6, 3.38834], [0.335255, 0.942127, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["inbasemoves_table1"], "Exile_Trader_SpecialOperations", "WhiteHead_03", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [2211.12, 3527.83, 182.013], [-0.773101, 0.634283, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubSittingChairA_idle2"], "Exile_Trader_SpecialOperations", "WhiteHead_06", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],[],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [8552.26, 7679.47, 114.802], [-0.98777, -0.155917, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["hubfixingvehicleprone_idle1"], "Exile_Trader_AircraftCustoms", "WhiteHead_15", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","",[],["","","","","",""]], [7896.32, 10970.3, 30.1853], [0.945441, -0.325794, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["inbasemoves_repairvehicleknl"], "Exile_Trader_Aircraft", "GreekHead_A3_05", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Clear",[],["","","","","",""]], [7894.36, 10962.8, 29.8681], [0.0486843, -0.998814, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["HubSittingChairA_idle2"], "Exile_Trader_Armory", "GreekHead_A3_09", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [3784.61, 4955.06, 69.0733], [0.218431, 0.975852, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["HubSittingChairB_move1"], "Exile_Trader_Equipment", "WhiteHead_11", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [3790.56, 4958.86, 69.1109], [-0.987083, 0.160208, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubStandingUA_idle2"], "Exile_Trader_Food", "WhiteHead_11", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [3778.81, 4947.11, 69.453], [0.888625, 0.458634, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubSittingHighB_idle1"], "Exile_Trader_Hardware", "WhiteHead_11", [[],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",9],[],""],["U_I_C_Soldier_Bandit_2_F",[["9Rnd_45ACP_Mag",3,9]]],["V_Rangemaster_belt",[]],[],"H_Cap_blk_CMMG","",[],["","","","","",""]], [3785.41, 4953.22, 72.9662], [0.999714, 0.0239236, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubSittingChairUC_idle1"], "Exile_Trader_Office", "AfricanHead_01", [[],[],[],["U_Marshal",[]],[],[],"H_Hat_checker","G_Squares_Tinted",[],["","","","","",""]], [3778.29, 4947.81, 73.3961], [0.22744, 0.973792, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["hubfixingvehicleprone_idle1"], "Exile_Trader_VehicleCustoms", "WhiteHead_14", [[],[],[],["U_BG_Guerilla2_3",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [3786.69, 4919.68, 68.8359], [-0.862927, 0.505328, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["inbasemoves_lean1"], "Exile_Trader_Vehicle", "WhiteHead_06", [[],[],[],["U_C_Man_casual_3_F",[]],[],[],"H_StrawHat","G_Squares_Tinted",[],["","","","","",""]], [3797.37, 4919.55, 68.4582], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubSittingHighA_idle1"], "Exile_Trader_WasteDump", "WhiteHead_11", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [3769.63, 4951.6, 69.9238], [0.595079, 0.803668, 0], [0, 0, 1]],
["Exile_Guard_01", ["inbasemoves_patrolling2"], "", "AfricanHead_03", [["srifle_DMR_03_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","G_Combat",[],["","","","","",""]], [3809.11, 4949.93, 86.7041], [-0.534515, 0.845159, 0], [0, 0, 1]],
["Exile_Guard_02", ["inbasemoves_patrolling1"], "", "WhiteHead_10", [["arifle_Mk20_GL_F","","","",[],[],""],[],[],["U_BG_Guerilla1_1",[]],["V_PlateCarrierIA2_dgtl",[]],[],"H_Hat_camo","G_Combat",[],["","","","","",""]], [3810.73, 4948.56, 86.7047], [0.992267, 0.124121, 0], [0, 0, 1]],
["Exile_Guard_01", ["inbasemoves_patrolling1"], "", "WhiteHead_17", [["srifle_DMR_03_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","G_Tactical_Clear",[],["","","","","",""]], [3808.89, 4902.45, 85.9482], [-0.914339, 0.40495, 0], [0, 0, 1]],
["Exile_Guard_01", ["inbasemoves_patrolling2"], "", "WhiteHead_01", [["srifle_DMR_03_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","G_Combat",[],["","","","","",""]], [3812.63, 4892.41, 86.0458], [-0.115232, -0.993339, 0], [0, 0, 1]],
["Exile_Guard_01", ["inbasemoves_patrolling1"], "", "WhiteHead_09", [["srifle_DMR_03_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","",[],["","","","","",""]], [3817.27, 4898.25, 86.045], [0.999808, 0.0196163, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["HubSittingChairA_move1"], "Exile_Trader_Armory", "GreekHead_A3_09", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [5971.87, 10054, 177.076], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["HubSittingChairA_idle2"], "Exile_Trader_Equipment", "WhiteHead_18", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [5970.13, 10054.5, 176.953], [0.559237, 0.829008, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubSittingHighB_idle2"], "Exile_Trader_Food", "WhiteHead_10", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Aviator",[],["","","","","",""]], [5970, 10054.2, 174.37], [-0.0109259, 0.99994, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubSittingChairC_idle2"], "Exile_Trader_Hardware", "GreekHead_A3_09", [[],[],[],["U_BG_Guerilla3_1",[]],[],[],"Exile_Headgear_SafetyHelmet","",[],["","","","","",""]], [5966.42, 10056.3, 174.219], [0.987744, -0.15608, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubSittingChairC_idle1"], "Exile_Trader_Office", "WhiteHead_08", [[],[],["hgun_P07_F","muzzle_snds_L","","",["16Rnd_9x21_Mag",16],[],""],["U_I_C_Soldier_Bandit_3_F",[["16Rnd_9x21_Mag",1,16]]],[],[],"","G_Sport_Blackred",["Laserdesignator_02","","","",[],[],""],["ItemMap","","","","",""]], [5964.32, 10045.5, 174.123], [0.924219, 0.381863, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["hubfixingvehicleprone_idle1"], "Exile_Trader_VehicleCustoms", "GreekHead_A3_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Shades_Red",[],["","","","","",""]], [5962.67, 10030.9, 173.672], [0.994918, -0.100694, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["inbasemoves_repairvehicleknl"], "Exile_Trader_Vehicle", "WhiteHead_18", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [5962.45, 10032.8, 173.787], [-0.463148, -0.886281, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["inbasemoves_lean1"], "Exile_Trader_WasteDump", "WhiteHead_09", [["Exile_Weapon_AKS_Gold","","","",["Exile_Magazine_30Rnd_762x39_AK",30],[],""],[],[],["U_I_G_resistanceLeader_F",[["Exile_Magazine_30Rnd_762x39_AK",1,30]]],[],[],"H_Hat_brown","G_Aviator",[],["","","","","",""]], [5981.16, 10067, 174.325], [-0.764697, 0.64439, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;