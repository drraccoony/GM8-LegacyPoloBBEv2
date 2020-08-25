//
//  Adds a line to the display
// argument0 = the test, argument1 = the color
//
{
  for (i=0; i<global.maxline-1; i+=1)
  {
    global.consoleline[i] = global.consoleline[i+1];
    global.consolecolor[i] = global.consolecolor[i+1];
  }
    global.consoleline[global.maxline-1] = argument0;
    global.consolecolor[global.maxline-1] = argument1;
}
