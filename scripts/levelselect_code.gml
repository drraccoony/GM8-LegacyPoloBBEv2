// Is the player in the same position as the level? If not fuck it
if x>other.x-1 and x<other.x+1 and y>other.y-1 and y<other.y+1 and moving=0
{
selecting=1  //Do it!
speed=0
x=other.x
y=other.y
image_speed=0
image_single=0
}
else
{
selecting=0 // <<<Fuck it
}

if moving=1 //Entering the level button
moving=0


/////////////////////////////////////////////////////




//Enter the level if the key is pressed and if the player isn't locked
if (keyboard_check(vk_space) or keyboard_check(vk_enter)) and locked=0
{
if global.mplay=1{
if (global.master){ //If Player 1
global.p1overallscore=global.overallscore}
if (!global.master){ //If Player 2
global.p2overallscore=global.overallscore}}
locked=1 //Lock the player so he doesn't move while shit's going on

    if other.coins_got=1{global.dontbother_coins=1}
    if other.time_got=1{global.dontbother_time=1}
    if other.monster_got=1{global.dontbother_monster=1}
    if other.coins_got=0{global.dontbother_coins=0}
    if other.time_got=0{global.dontbother_time=0}
    if other.monster_got=0{global.dontbother_monster=0}

instance_create(x,y,WMpJumpInto) //Create the jumping Polo
visible=0 //Make it invisible
alarm[1]=120 //Time until room changes
global.levelnumber=1 //For the pause menu
global.worldnumber=1
global.monster_number=0

goto_room=other.goto_room //Take data from level pad
}

//If the game system tells the world that a level has been completed
//and the level pad hasn't been completed then you might as well
//set the pad to completed!
if global.levelcomplete=1 and other.completed=0
{
other.completed=1
global.levelcomplete=0
global.levels_complete+=1
}

//Alternatively, if the games system tells the world that a level has been
//completed but the game pad we're on has already been completed then tell
//the game system to forget about it
if global.levelcomplete=1 and other.completed=1
{
    global.levelcomplete=0
}

//Get the coin medal
if global.lvl_coins=1
   {
   global.lvl_coins=0
                     if other.coins_got=0
                     {
                     other.coins_got=1
                     global.coinBadges+=1
                     }
   }
//Get the time medal
if global.lvl_time=1
{
global.lvl_time=0
if other.time_got=0
other.time_got=1
}

if global.lvl_monster=1
{
global.lvl_monster=0
if other.monster_got=0
other.monster_got=1
global.monsterBadges+=1
}

if score>0
{
if other.lvl_score<score
other.lvl_score=score

score=0
}
