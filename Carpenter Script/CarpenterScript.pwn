/* BACA INI!

Script Job Carpenter by LuminouZ

Halo, disini gw sebagai Scripter yang membuat mengizinkan kalian untuk menggunakan Script ini di Server kalian,
Kalian juga boleh me remake/rework Script ini dengan Kreativitas yang kalian miliki

DENGAN CATATAN!

- Tidak menghapus Credits

- Tidak di perjual belikan

Soon gw juga akan me Release Script gua yang lainnya, jadi Staytune aja ya, Thankyou!*/

#include <a_samp>
#include <a_players>
#include <zcmd>
#include <streamer>

//Player Global Variable's
new SedangCarp[MAX_PLAYERS];
new DapatFurn[MAX_PLAYERS];
new tmpobjid;

//Color Definition
#define COLOR_YELLOW 0xFFFF00AA
#define COLOR_TWAQUA 0x00FFFFAA
#define COLOR_WHITE 0xFFFFFFAA

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Carpenter Job System by LuminouZ");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" Carpenter Job System by LuminouZ");
	print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{

	//Mapping Carpenter
	new object_world = -1, object_int = -1;
	tmpobjid = CreateDynamicObject(19437, 2291.376464, -1919.755493, 15.271471, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	tmpobjid = CreateDynamicObject(19482, 2291.473144, -1919.765869, 15.322180, 0.000000, 0.000000, 360.000000, object_world, object_int, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "CARPENTER", 130, "Impact", 60, 1, 0xFFFFFFFF, 0x00000000, 1);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(1814, 2294.165039, -1923.281738, 12.571758, 0.000000, 0.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1814, 2294.165039, -1920.300537, 12.571758, 0.000000, 0.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1814, 2294.165039, -1917.279785, 12.571758, 0.000000, 0.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1453, 2293.650390, -1922.817382, 13.595886, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1453, 2293.650390, -1919.796875, 13.595886, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1453, 2293.650390, -1916.796752, 13.595886, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00);
	
	//3D Text label & Pickup
	CreateDynamic3DTextLabel("{00FFFF}CARPENTER\nGunakan {FFFF00}'/carpenter' {FFFFFF}Untuk membuat Furniture.", COLOR_WHITE, 2294.3201,-1922.8436,13.5469, 5.0);//425.6796,-85.3143,1501.0859
	CreateDynamic3DTextLabel("{00FFFF}CARPENTER\nGunakan {FFFF00}'/carpenter' {FFFFFF}Untuk membuat Furniture.", COLOR_WHITE, 2294.3992,-1919.7083,13.5555, 5.0);//425.6796,-85.3143,1501.0859
	CreateDynamic3DTextLabel("{00FFFF}CARPENTER\nGunakan {FFFF00}'/carpenter' {FFFFFF}Untuk membuat Furniture.", COLOR_WHITE, 2294.3606,-1916.7756,13.5550, 5.0);//425.6796,-85.3143,1501.0859
	CreateDynamic3DTextLabel("{00FFFF}FURNITURE\nGunakan {FFFF00}'/sellfurniture' {FFFFFF}Untuk menjual Furniture.", COLOR_WHITE, 2284.5857,-1930.6522,12.8893, 5.0);//425.6796,-85.3143,1501.0859
	CreateDynamicPickup(1239, 1, 2284.5857,-1930.6522,12.8893);
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	return 1;
}

public OnPlayerConnect(playerid)
{
    DapatFurn[playerid] = 0;
    SedangCarp[playerid] = 0;
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mycommand", cmdtext, true, 10) == 0)
	{
		// Do something here
		return 1;
	}
	return 0;
}
public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}


//Commands

CMD:carpenter(playerid, params[])
{
	if(DapatFurn[playerid] == 1) { SendClientMessage(playerid, COLOR_YELLOW,"EROR : {FFFFFF}Kamu sudah memiliki Furniture!"); return 1; }
    if(SedangCarp[playerid] == 1) { SendClientMessage(playerid, COLOR_YELLOW,"ERROR : {FFFFFF}Kamu sedang membuat Furniture, harap tunggu!!"); return 1; }
	if(IsPlayerInRangeOfPoint(playerid,2.0,2294.3606,-1916.7756,13.5550) || IsPlayerInRangeOfPoint(playerid,2.0,2294.3992,-1919.7083,13.5555) || IsPlayerInRangeOfPoint(playerid,3.0,2294.3201,-1922.8436,13.5469))
	{
		SetTimerEx("TimeCarpenter", 20000, false, "i", playerid);
		GameTextForPlayer(playerid, "~w~Membuat Furniture....", 19000, 3);
		SendClientMessage(playerid, COLOR_TWAQUA,"[CARPENTER] {FFFFFF}Kamu mulai membuat Furniture!");
		SedangCarp[playerid] = 1;
		TogglePlayerControllable(playerid,0);
		ApplyAnimation(playerid,"BASEBALL", "Bat_M",4.1,1,1,1,1,1);
		return 1;
	}
	else
	{
 		SendClientMessage(playerid,COLOR_TWAQUA,"[CARPENTER] Kamu tidak ditempat Carpenter!");
	}
	return 1;
}

CMD:sellfurniture(playerid, params[])
{
	if(DapatFurn[playerid] == 0) { SendClientMessage(playerid, COLOR_WHITE,"Kamu tidak memiliki Furniture untuk dijual!"); return 1; }
	if(!IsPlayerInRangeOfPoint(playerid, 3, 2284.5857,-1930.6522,12.8893))
	{
		SendClientMessage(playerid,COLOR_WHITE,"[ERROR] {FFFFFF}Kamu tidak berada di Furniture Storage!");
		return 1;
	}
	DapatFurn[playerid] = 0;
	SedangCarp[playerid] = 0;
	GivePlayerMoney(playerid, 30);
	SendClientMessage(playerid, COLOR_TWAQUA, "[CARPENTER] {FFFFFF}Kamu mendapatkan $30 dari menjual Furniture!");
	RemovePlayerAttachedObject(playerid, 0);
	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
	return 1;
}


//Functions
forward TimeCarpenter(playerid);
public TimeCarpenter(playerid)
{
	ApplyAnimation(playerid, "BSKTBALL", "null", 4.0, 0, 1, 1, 0, 0, 1);
    ApplyAnimation(playerid, "BSKTBALL", "BBALL_pickup", 4.0, 0, 1, 1, 0, 0, 1);
	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
	SetPlayerAttachedObject( playerid, 0, 2636, 1, 0.178045, 0.407681, -0.025817, 3.533153, 102.484672, 350.146301, 1.000000, 1.000000, 1.000000 );
	TogglePlayerControllable(playerid, 1);
	ClearAnimations(playerid);
	DapatFurn[playerid] = 1;
	SendClientMessage(playerid, COLOR_TWAQUA, "[CARPENTER] {FFFFFF}Sukses membuat Furniture!");
	return 1;
}

