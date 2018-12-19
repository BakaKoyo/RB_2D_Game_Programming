/// @description [ Loop ]

switch(enum_DoorState)
{

	case DoorState.NotVisible:
	
	if (global.EnoughKeys) enum_DoorState = DoorState.Visible;
	else visible = false;
	
	break;

	case DoorState.Visible:
	
	visible = true;
	
	break;

}