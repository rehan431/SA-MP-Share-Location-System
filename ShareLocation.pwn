//SHARE LOCATION BY INDOKU
//JANGAN DI PERJUALA BELIKAN
//CUKUP UNTUK EDUKASI/PEMBELAJARAN SAJA
if(strcmp(cmd, "/shareloc", true) == 0)
{
    if(IsPlayerConnected(playerid))
    {
        new string2[128];
        new string[128];
        new Float:x,Float:y,Float:z;
        new giveplayer[MAX_PLAYER_NAME];
        new giveplayerid = ReturnUser(inputtext);
        tmp = strtok(cmdtext, idx);
        if(!strlen(tmp))
        {
            SendClientMessage(playerid, COLOR_WHITE, "Gunakan: /shareloc [ID PLAYER]");
            return 1;
        }
        giveplayerid = ReturnUser(tmp);
        if(IsPlayerConnected(giveplayerid))            
        {
            if(giveplayerid != INVALID_PLAYER_ID)
            {
                GetPlayerPos(playerid, x,y,z);
                GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
                format(string, sizeof(string), "[GPS] ANDA NEMBAGIKAN LOKASI KE %s", giveplayer);
                SendClientMessage(playerid, COLOR_LIGHTYELLOW, string);

                SetPlayerCheckpoint(giveplayerid,x,y,z,2.0);
                format(string2, sizeof(string2), "[GPS] %s TELAH BAGIKAN LOKASINYA KE ANDA", PlayerName(playerid));
                SendClientMessage(giveplayerid, COLOR_LIGHTYELLOW, string2);
                return 1;
            }
        }
    }
}
