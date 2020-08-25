// Show message box aposed to GM Default Message Box
// argument0 - Message Title
// argument1 - Message Body
// argument2 - MSG Box Type. (0 - Close next step     1 - Close after spacebar key pressed)

// EXAMPLE:
// script_dialog('Congrats!','You found the trinket of a thousand#memories!',1);

msg_box=instance_create(0,0,msg_show)
msg_box.title=argument0
msg_box.body=argument1
msg_box.pressspace=argument2

