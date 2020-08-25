if global.UseParticle=1
{

//Create particles
repeat(argument0) //Number of particles
instance_create(x,y+6,Particle)

}