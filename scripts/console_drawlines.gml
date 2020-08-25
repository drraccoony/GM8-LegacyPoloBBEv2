//
//  Draws the collection of lines at the indicated place
//
{
  var xxx,yyy;
  xxx = argument0;
  yyy = argument1;
  draw_set_font(console_font);
  for (i=0; i<global.maxline; i+=1)
  {
    draw_set_color(global.consolecolor[i]); 
    draw_text(xxx,yyy,global.consoleline[i]);
    yyy += 7;
  }
}
