//argument0 = Monster number
//argument1 = Monster name
//argument2 = Monster global name
//argument3 = Monster defintion

monsternumber=argument0

if section>monsternumber*-12 and monsternumber<(-section/12)+19
{
if MonsterMenu.y=(monsternumber*12)+(section)
{
draw_set_color(colourshift)

//If the monster is selected but has not been killed
if argument2=0
{
    //draw name
    draw_text(16,section+(monsternumber*12),string(monsternumber)+".  "+"???")

    //draw descriptions
    draw_set_halign(fa_center)
    draw_set_color(c_dkgray)
    draw_text(222,y,"???")
    draw_text(222,y+24,"???")
    draw_text(222,y+72,"Numbers killed: 0")
    draw_set_halign(fa_left)
    draw_set_color(colourshift)
}

//If the monster is selected and has been killed
if argument2>=1
{

    //draw name
    draw_text(16,section+(monsternumber*12),string(monsternumber)+".  "+string(argument1))

    //draw descriptions
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    draw_text(222,y,argument1)
    draw_text(222,y+24,argument3)
    draw_text(222,y+72,"Numbers killed: "+string(argument2))
    draw_sprite(argument4,0,216,y-28)
    draw_set_halign(fa_left)
    draw_set_color(colourshift)
}

}

else

{
draw_set_color(c_white)

if argument2=0
    {
    draw_set_color(c_dkgray)
    draw_text(12,section+(monsternumber*12),string(monsternumber)+".  "+"???")
    }

if argument2>=1
    {
    draw_set_color(c_white)
    draw_text(12,section+(monsternumber*12),string(monsternumber)+".  "+string(argument1))
    }
}
}


