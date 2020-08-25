    if keyboard_check(global.key_up)
    {
    direction=point_direction(x,y,other.go_up.x,other.go_up.y)
    speed=move_speed
    moving=2
    alarm[0]=20 //To make sure the player can only press buttons when moving is 0 it temporaly needs to be 2
    // It later changes to 1 so upon entering a new level detections work
    }
