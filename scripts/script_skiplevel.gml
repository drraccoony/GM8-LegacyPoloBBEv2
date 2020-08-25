room_persistent=0
sound_play(snd_level_end)
sound_play(snd_level_end_boom)

global.combo=0

if global.mplay=1{
   if (global.master){ //If Player 1 Send this
    if room_caption=global.p2_location{
    mplay_message_send(0,2,0);
    mplay_message_send(0,3,0);}
    }

    if (!global.master){ //If Player 2 Send this
     if room_caption=global.p1_location{
     mplay_message_send(0,4,0);
     mplay_message_send(0,5,0);}
    }
mplay_message_send(0,18,string(global.mplay_name)+" finished "+string(room_caption)+".");}

global.checkscore=0

//This makes the pause system invisible
//MenuPause.visible=0

instance_create(0,0,GameDisableMenu);

//Remove the screenshot
//GameSystem.sprite_index=CtrlImportant
//GameSystem.visible=0
//Make sure to turn persistence off in the room 1 frame later
GameSystem.alarm[0]=1
GameSystem.alarm[2]=2
//GameSystem.alarm[6]=280

global.levelcomplete=1

//Medals//////////////////////
global.lvl_complete=1

if lvlCoins.solid=1 //If the amount of coins is 0
global.lvl_coins=1

if global.monster_number=0
global.lvl_monster=1

if Timer.time>0
global.lvl_time=1

Timer.stop=1 // Stop timer
///////////////////////////
