if global.Dolo=0
{
if OnGround=1 and Duck=0
{
 sprite_index=pololeft;
}

if OnGround=1 and Duck=1
{
 sprite_index=pololeftduck;
 image_speed=0.1;
}

if OnGround=0 and vspeed<0 and DoubleDone=0
{
 sprite_index=pololeftup;
}

if OnGround=0 and vspeed>0 and DoubleDone=0
{
 sprite_index=pololeftdown;
}

if OnGround=0 and DoubleDone=1
{
 sprite_index=pololeftdouble;
 image_speed=0.2
}

if OnGround=0 and DoubleDone=1 and Grip=1
{
 sprite_index=pololeftgrip;
  if keyboard_check(global.key_left) { image_speed=0.3;} else {image_speed=0;}
}

if OnGround=0 and vspeed>0 and global.umbrella=1 and keyboard_check(global.key_umbrella)
{
 sprite_index=pololeftdown;
}
}
////////////////////////////////////////////////////////////////////
if global.Dolo=1
{
if OnGround=1 and Duck=0
{
 sprite_index=pololeft2;
}

if OnGround=1 and Duck=1
{
 sprite_index=pololeftduck2;
 image_speed=0.1;
}

if OnGround=0 and vspeed<0 and DoubleDone=0
{
 sprite_index=pololeftup2;
}

if OnGround=0 and vspeed>0 and DoubleDone=0
{
 sprite_index=pololeftdown2;
}

if OnGround=0 and DoubleDone=1
{
 sprite_index=pololeftdouble2;
 image_speed=0.2
}

if OnGround=0 and DoubleDone=1 and Grip=1
{
 sprite_index=pololeftgrip2;
  if keyboard_check(global.key_left) { image_speed=0.3;} else {image_speed=0;}
}

if OnGround=0 and vspeed>0 and global.umbrella=1 and keyboard_check(global.key_umbrella)
{
 sprite_index=pololeftdown2;
}
}
