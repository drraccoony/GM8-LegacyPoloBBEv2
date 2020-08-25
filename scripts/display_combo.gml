global.combo+=1


if global.combo>1
{
global.comalpha=2
global.comscale=1.2
if global.comboslomo=1
{
sound_play(snd_slowmo)
sound_play(snd_comboGlisten)
room_speed=20
global.slomoAlpha=2
}
}

if global.combo=2
{
if global.x2comboDONE=0
global.x2comboDONE=1
global.drawcombo=1
global.hudcombo=2
sound_play(snd_combo2)
sound_play(snd_comboGlisten)
score+=10
}

if global.combo=3
{
global.hudcombo=global.combo
sound_play(snd_combo3)
sound_play(snd_comboGlisten)
score+=20
}

if global.combo=4
{
global.hudcombo=global.combo
sound_play(snd_combo4)
sound_play(snd_comboGlisten)
score+=50
}

if global.combo=5
{
if global.x5comboDONE=0
global.x5comboDONE=1
global.hudcombo=global.combo
sound_play(snd_combo5)
sound_play(snd_comboGlisten)
score+=100
}

if global.combo=6
{
global.hudcombo=global.combo
sound_play(snd_combo6)
sound_play(snd_comboGlisten)
score+=200
}

if global.combo=7
{
global.hudcombo=global.combo
sound_play(snd_combo7)
sound_play(snd_comboGlisten)
score+=400
}

if global.combo=8
{
global.hudcombo=global.combo
sound_play(snd_combo8)
sound_play(snd_comboGlisten)
score+=700
}

if global.combo=9
{
global.hudcombo=global.combo
sound_play(snd_combo9)
sound_play(snd_comboGlisten)
score+=1200
}

if global.combo=10
{
if global.x10comboDONE=0
global.x10comboDONE=1

global.hudcombo=global.combo
if global.player_birthday=0
sound_play(snd_combo10)
sound_play(snd_comboGlisten)
if global.player_birthday=1
sound_play(snd_crowd)
score+=2200
}

if global.combo=11
{
global.hudcombo=global.combo
sound_play(snd_combo10)
sound_play(snd_comboGlisten)
score+=5000
}

if global.combo>11
{
global.hudcombo=global.combo
sound_play(snd_combo10)
sound_play(snd_comboGlisten)
score+=5000
}
