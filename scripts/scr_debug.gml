if (!variable_global_exists("__scr_debug_init")) {
    
    var i = 0; // event other
    var ev = ds_map_create();
    ev[? "event_number"] = ev_game_start;
    ev[? "event_name"]   = "ev_game_start";
    global.EVENT[ev_other, i++] = ev;
    
    ev = ds_map_create();
    ev[? "event_number"] = ev_game_end;
    ev[? "event_name"]   = "ev_game_end";
    global.EVENT[ev_other, i++] = ev;
    
    ev = ds_map_create();
    ev[? "event_number"] = ev_room_start;
    ev[? "event_name"]   = "ev_room_start";
    global.EVENT[ev_other, i++] = ev;
    
    ev = ds_map_create();
    ev[? "event_number"] = ev_room_end;
    ev[? "event_name"]   = "ev_room_end";
    global.EVENT[ev_other, i++] = ev;
    
    i = 0; // event create
    ev = ds_map_create();
    ev[? "event_number"] = 0;
    ev[? "event_name"]   = "ev_create";
    global.EVENT[ev_create, i++] = ev;
    
    i = 0; // event step
    ev = ds_map_create();
    ev[? "event_number"] = ev_step_normal;
    ev[? "event_name"]   = "ev_step_normal";
    global.EVENT[ev_step, i++] = ev;

    ev = ds_map_create();    
    ev[? "event_number"] = ev_step_begin;
    ev[? "event_name"]   = "ev_step_begin";
    global.EVENT[ev_step, i++] = ev;

    ev = ds_map_create();
    ev[? "event_number"] = ev_step_end;
    ev[? "event_name"]   = "ev_step_end";
    global.EVENT[ev_step, i++] = ev;  
    
    i = 0; // event draw
    ev = ds_map_create();
    ev[? "event_number"] = ev_draw_pre;
    ev[? "event_name"]   = "ev_draw_pre";
    global.EVENT[ev_draw, i++] = ev;

    ev = ds_map_create();    
    ev[? "event_number"] = ev_draw_begin;
    ev[? "event_name"]   = "ev_draw_begin";
    global.EVENT[ev_draw, i++] = ev;

    ev = ds_map_create();
    ev[? "event_number"] = 0;
    ev[? "event_name"]   = "ev_draw";
    global.EVENT[ev_draw, i++] = ev;

    ev = ds_map_create();
    ev[? "event_number"] = ev_draw_end;
    ev[? "event_name"]   = "ev_draw_end";
    global.EVENT[ev_draw, i++] = ev;
    
    ev = ds_map_create();
    ev[? "event_number"] = ev_draw_post;
    ev[? "event_name"]   = "ev_draw_post";
    global.EVENT[ev_draw, i++] = ev;

    ev = ds_map_create();
    ev[? "event_number"] = ev_gui_begin;
    ev[? "event_name"]   = "ev_gui_begin";
    global.EVENT[ev_draw, i++] = ev;

    ev = ds_map_create();
    ev[? "event_number"] = ev_gui;
    ev[? "event_name"]   = "ev_gui";
    global.EVENT[ev_draw, i++] = ev;
    
    ev = ds_map_create();
    ev[? "event_number"] = ev_gui_end;
    ev[? "event_name"]   = "ev_gui_end";
    global.EVENT[ev_draw, i++] = ev;

    show_debug_message("[DEBUG] INIT");
    global.__scr_debug_init = false;
}

for (var i=0; i < array_length_2d(global.EVENT, event_type); i++){
    var ev = global.EVENT[event_type, i];
    if (ev[? "event_number"] != event_number) continue;
    
    var _local_event = sprintf("__{0}", ev[? "event_name"]);
    if (!variable_instance_exists(self, _local_event)){
    
        variable_instance_set(self, _local_event, true);
        
        var event_name = ev[? "event_name"];
        var obj_name = object_get_name(object_index);
        var prefix = "[DEBUG]-------------------------->";
        
        var info = string_upper(
                        sprintf(
                            "{0} [{1}, {2}]{3}    [{4}, {5}]{6}",
                            prefix,
                            x,
                            y,
                            obj_name,
                            event_type,
                            event_number,
                            event_name
                        )
        );
        show_debug_message(info);
        return 0;
    }
}
