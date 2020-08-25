//CHECK IF ACHIVEMENT IS UNLOCKED IN REGISTRY
//argument0 = Registy Code (Eg: ACH01, ACH02, etc etc etc)
//Script returns with 0 / 1 (False or True)

//Usage: check_ach(ACH01);

/*
if registry_exists(argument0){
if registry_read_real(argument0)=1
{return(1)}
}else{return(0);}
