
haut = string_height(content_temp) + 2 * bord_h;
larg = string_width(content_temp) + 2 * bord_w;

if (selected) 
{
    if (c_1 == c_2) 
        { draw_sprite(s_line,-1,x+bord_h+string_width(string_copy(content_temp,0,c_1)),y+bord_w);}
        
    else   
    { 
        draw_set_alpha(0.2);
        draw_set_color(c_yellow);
        draw_roundrect( x+bord_w+string_width(string_copy(content_temp,0,c_1))
                      , y+1
                      , x+bord_w+string_width(string_copy(content_temp,0,c_2))
                      , y+haut-1,false);
        draw_set_alpha(1);
        draw_set_color(c_black);
    }
}
draw_text(x+bord_h, y+bord_w, content_temp);

