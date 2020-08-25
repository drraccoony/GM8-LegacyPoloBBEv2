damaged=0
create_particles(60)
global.playerlock=1
global.hits=-1
instance_create(x,y,poloDie)
draw=0
sound_play(snd_dead);
alarm[1]=spawntime
global.earthquake=4
global.player_is_dead=1
global.deaths+=1
//HValue=1.2
//Maximum walking speed. Higher the value the faster he walks
//OriginalHValue=HValue
global.break_blocks=0


if global.checkscore=0
score=0

if global.checkscore>0
score=global.checkscore
