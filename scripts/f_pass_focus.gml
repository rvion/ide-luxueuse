//  arg0 = ID du bloc
//  arg1 = X relatif du click
//  arg2 = Y relatif du click


// type     = TYPE_LAYOUT;
// layout   = LAYOUT_VER;

var i, length, w, h;
 
if (argument0.layout == LAYOUT_SIMPLE)
{

    f_set_focus(argument0)
    keyboard_string   = ""
    
    // positionnement du curseur
    if (argument0.content_temp != '')
    {
        for(i=0; i<=string_length(argument0.content_temp);i+=1)
        {
            if  string_width(string_copy(argument0.content_temp,0,i)) > argument1
            and string_width(string_copy(argument0.content_temp,0,i)) - string_width(string_char_at(argument0.content_temp,i)) < argument2
            {
                argument0.c_1 = i-1;
                argument0.c_2 = argument0.c_1;
                i = string_length(argument0.content_temp);
            }
        }
    }
}
else
{    
    w = 0;
    h = 0;
    length = ds_list_size(argument0.my_blocs)
    
    // default pass focus
    for (i=0; i<length; i+=1)
    {
        if  (argument1 < (argument0.larg + w))
        and (argument2 < (argument0.haut + h))
        {
            f_pass_focus(ds_list_find_value(argument0.my_blocs,i), argument1 - w, argument2 - h);
            exit;
        }
        else
        {
            if (argument0.layout == LAYOUT_VER) { h += ds_list_find_value(argument0.my_blocs,i).haut; }
            if (argument0.layout == LAYOUT_HOR) { w += ds_list_find_value(argument0.my_blocs,i).larg; }
        }
    }
}
