/*
	Custom loading bar example script.
	Dibuat oleh agus syahputra at 24/12/2017 - 12:33.
*/

#include <a_samp>
#include <sscanf2>
#include <zcmd>

#include <loadingbar>

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Loading bar script example - by Agus Syahputra.");
	print("--------------------------------------\n");
	return 1;
}

CMD:loadingbar(playerid, params[])
{
    new time, subject[32];
    if(sscanf(params, "ds[32]", time, subject))
        return SendClientMessage(playerid, -1, "USAGE: /loadingbar [time in second] [subject]");

    StartPlayerLoadingBar(playerid, "loadingbar_test", subject, time, -1429936641);

    /*
		Keterangan:
		* -1429936641 = Untuk warna
		* loadingbar_test = Untuk function yang akan di panggil (respond).
		* subject = Judul yang akan di tampilkan.
		* time = Waktu yang di pakai (Hitungan mundur).
    */
    return 1;
}

//Respond yang di pakai
forward loadingbar_test(playerid);
public loadingbar_test(playerid)
{
	new 
		player_name[MAX_PLAYER_NAME],
		output[36];

	GetPlayerName(playerid, player_name, MAX_PLAYER_NAME);
	format(output, sizeof(output), "This work %s!.", player_name);

    SendClientMessage(playerid, -1, output);
    return 1;
}