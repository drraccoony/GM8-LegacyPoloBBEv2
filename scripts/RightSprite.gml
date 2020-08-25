if global.Dolo=0
{
if OnGround=1 and Duck=0
{
 sprite_index=poloright;
}

if OnGround=1 and Duck=1
{
 sprite_index=polorightduck;
 image_speed=0.1;
}

if OnGround=0 and vspeed<0 and DoubleDone=0
{
 sprite_index=polorightup;
}

if OnGround=0 and vspeed>0 and DoubleDone=0
{
 sprite_index=polorightdown;
}

if OnGround=0 and DoubleDone=1
{
 sprite_index=polorightdouble;
 image_speed=0.2
}

if OnGround=0 and DoubleDone=1 and Grip=1
{
 sprite_index=polorightgrip;
 if keyboard_check(global.key_right) { image_speed=0.3;} else {image_speed=0;}
}

if OnGround=0 and vspeed> 0 and global.umbrella=1 and keyboard_check(global.key_umbrella)
{
 sprite_index=polorightdown;
}
}
//////////////////////////////////////////////////////////////////////////////

if global.Dolo=1
{
if OnGround=1 and Duck=0
{
 sprite_index=poloright2;
}

if OnGround=1 and Duck=1
{
 sprite_index=polorightduck2;
 image_speed=0.1;
}

if OnGround=0 and vspeed<0 and DoubleDone=0
{
 sprite_index=polorightup2;
}

if OnGround=0 and vspeed>0 and DoubleDone=0
{
 sprite_index=polorightdown2;
}

if OnGround=0 and DoubleDone=1
{
 sprite_index=polorightdouble2;
 image_speed=0.2
}

if OnGround=0 and DoubleDone=1 and Grip=1
{
 sprite_index=polorightgrip2;
 if keyboard_check(global.key_right) { image_speed=0.3;} else {image_speed=0;}
}

if OnGround=0 and vspeed> 0 and global.umbrella=1 and keyboard_check(global.key_umbrella)
{
 sprite_index=polorightdown2;
}
}

