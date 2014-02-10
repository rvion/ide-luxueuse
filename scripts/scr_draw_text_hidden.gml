
draw_text(x+bord_h, y+bord_w, content_temp);
if (selected) 
{
    draw_sprite(s_line,-1,x+bord_h+string_width(string_copy(content_temp,0,c_1)),y+bord_w);
}
haut = string_height(content_temp) + 2 * bord_h;
larg = string_width(content_temp) + 2 * bord_w;
