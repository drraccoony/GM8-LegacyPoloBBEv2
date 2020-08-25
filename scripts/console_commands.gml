if command='help'{
console_addline("------------------------------------",c_white);
console_addline("Safe Commands:",c_lime);
console_addline("Status             End Game",c_aqua);
console_addline("Restart Game       Factorytest",c_aqua);
console_addline("end game           stop music",c_aqua);
console_addline("end                clear",c_aqua);
console_addline("kill",c_aqua);
console_addline("Highscore disabling Commands:",c_red);
console_addline("Coin Refresh       impulse 101",c_aqua);
console_addline("Skip               Moonmode",c_aqua);
console_addline("jetpack            give duck",c_aqua);
console_addline("give doublejump    give umbrella",c_aqua);
console_addline("give coin          reset chest",c_aqua);
console_addline("------------------------------------",c_white);
exit}

if command='kill'{
with(polo){PoloDeath();}
console_addline("Polo killed.",c_red);
exit}

if command='restart game'{
game_restart();
exit}
if command='factorytest'{
room_goto(rmFactory1);
exit}
if command='end game'{
game_end();
exit}
if command='stop music'{
console_addline("All Music stopped.",c_red);
music_stop_all();
exit}
if command='end'{
game_end();
exit}
if command='status'{
console_addline("FPS: "+string(fps),c_aqua);
console_addline("Instances: "+string(instance_count),c_aqua);
console_addline("Mplay: "+string(global.mplay),c_aqua);
exit
}

if command='clear'{
repeat(32){console_addline("",c_white);}
exit
}


//COMMANDS PAST THIS POINT WILL DISABLE HIGH SCORE!!!!
global.enablehighscore=0
//!!!!!!!!!!!!!

if command='coin refresh 1'{
global.coinrefresh=1
console_addline("Coin Refresh Enabled.",c_aqua);
global.enablehighscore=0
exit}

if command='reset chest'{
console_addline("All Coin chests reset!",c_aqua);
old_chest.image_single=0
exit
}


if command='get upgrades' or command='impulse 101'{
global.doublejump=1
global.umbrella=1
global.duck=1
global.enablehighscore=0
console_addline("All upgrades unlocked.",c_aqua);
exit}

if command='coin refresh 0'{
global.coinrefresh=1
console_addline("Coin Refresh Disabled.",c_aqua);
exit}

if command='skip level'{
console_addline("Room \# "+string(room)+" skiped.",c_aqua);
script_skiplevel();
show=0
exit}
if command='skip'{
console_addline("Room \# "+string(room)+" skiped.",c_aqua);
script_skiplevel();
show=0
exit}

if command='moonmode 1'{
console_addline("Moonmode Enabled",c_aqua);
global.moonmode=1
exit
}
if command='moonmode 0'{
console_addline("Moonmode Disabled",c_aqua);
global.moonmode=0
exit
}
if command='jetpack 1'{
console_addline("Jetpack Enabled",c_aqua);
global.jetpackmode=1
exit
}
if command='jetpack 0'{
console_addline("Jetpack Disabled",c_aqua);
global.jetpackmode=0
exit
}
if command='give duck'{
console_addline("Duck Enabled",c_aqua);
global.duck=1
exit
}
if command='give doublejump'{
console_addline("Double Jump Enabled",c_aqua);
global.doublejump=1
exit
}
if command='give umbrella'{
console_addline("Umbrella Enabled",c_aqua);
global.umbrella=1
exit
}
if command='give coin'{
console_addline("You have been given a coin",c_aqua);
global.coin_number+=1
exit
}
if command='reset ach'{
console_addline("Achivements Reset!",c_aqua);
ach_reset();
exit
}

console_addline("Syntax Error: Command '"+string(command)+"' does not exist.",c_red);
