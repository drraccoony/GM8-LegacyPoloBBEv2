surf=surface_create(0,0)
if surface_exists(surf)
surface_free(surf)

if room=rmOpeningMenu{
game_end();}
else
{
room_goto(rmUploadScore);
}
