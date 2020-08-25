//   draw_ach(1,"I CAN SWIM","Die by drowning",1,global.death_by_waterDONE)
//
//argument0 = Achievment number
//argument1 = Achievment name
//argument2 = Monster global name
//argument3 = Monster defintioz

achievenumber=argument0

if section>achievenumber*-12 and achievenumber<(-section/12)+19
{
if AchMenu.y=(achievenumber*12)+(section)
{
draw_set_color(colourshift)

//If the monster is selected but has not been killed
if argument4=0
{
    //draw name
    draw_text(16,section+(achievenumber*12),string(achievenumber)+".  "+string(argument1))

    //draw descriptions
    draw_set_halign(fa_center)
    draw_set_color(c_dkgray)
    draw_set_font(font0)
    draw_text(222,y,argument1)
    draw_set_font(font1)
    draw_text(222,y+24,argument5)
    draw_set_halign(fa_left)
    draw_set_color(colourshift)
}

//If the monster is selected and has been killed
if argument4>=1
{

    //draw name
    draw_text(16,section+(achievenumber*12),string(achievenumber)+".  "+string(argument1))

    //draw descriptions
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    draw_sprite(sprAch,argument3,222,y-48)
    draw_set_font(font0)
    draw_text(222,y,argument1)
    draw_set_font(font1)
    draw_text(222,y+24,argument2)
    draw_set_halign(fa_left)
    draw_set_color(colourshift)
}

}

else

{
draw_set_color(c_white)

if argument4=0
    {
    draw_set_color(c_dkgray)
    draw_text(12,section+(achievenumber*12),string(achievenumber)+".  "+string(argument1))
    }

if argument4>=1
    {
    draw_set_color(c_white)
    draw_text(12,section+(achievenumber*12),string(achievenumber)+".  "+string(argument1))
    }
}
}


