var EVENT_NUMBER = 0;
var EVENT_NAME   = 1;

global.event[0, EVENT_NUMBER] = ev_game_start;
global.event[0, EVENT_NAME]   = "ev_game_start";

global.event[1, EVENT_NUMBER] = ev_game_end;
global.event[1, EVENT_NAME]   = "ev_game_end";

global.event[2, EVENT_NUMBER] = ev_room_start;
global.event[2, EVENT_NAME]   = "ev_room_start";

global.event[3, EVENT_NUMBER] = ev_room_end;
global.event[3, EVENT_NAME]   = "ev_room_end";

global.event[4, EVENT_NUMBER] = ev_create;
global.event[4, EVENT_NAME]   = "ev_create";

global.event[5, EVENT_NUMBER] = ev_step_begin;
global.event[5, EVENT_NAME]   = "ev_step_begin";

global.event[6, EVENT_NUMBER] = ev_step; // draw event is ev_step_normal
global.event[6, EVENT_NAME]   = "ev_step";

global.event[7, EVENT_NUMBER] = ev_step_normal;
global.event[7, EVENT_NAME]   = "ev_step_normal";

global.event[8, EVENT_NUMBER] = ev_step_end;
global.event[8, EVENT_NAME]   = "ev_step_end";

global.event[9, EVENT_NUMBER] = ev_draw_pre;
global.event[9, EVENT_NAME]   = "ev_draw_pre";

global.event[10, EVENT_NUMBER] = ev_draw_begin;
global.event[10, EVENT_NAME]   = "ev_draw_begin";

global.event[11, EVENT_NUMBER] = 0; // draw event is 8 but in reality it is 0
global.event[11, EVENT_NAME]   = "ev_draw";

global.event[12, EVENT_NUMBER] = ev_draw_end;
global.event[12, EVENT_NAME]   = "ev_draw_end";

global.event[13, EVENT_NUMBER] = ev_draw_post;
global.event[13, EVENT_NAME]   = "ev_draw_post";

global.event[14, EVENT_NUMBER] = ev_gui_begin;
global.event[14, EVENT_NAME]   = "ev_gui_begin";

global.event[15, EVENT_NUMBER] = ev_gui;
global.event[15, EVENT_NAME]   = "ev_gui";

global.event[16, EVENT_NUMBER] = ev_gui_end;
global.event[16, EVENT_NAME]   = "ev_gui_end";

global.event[17, EVENT_NUMBER] = ev_destroy;
global.event[17, EVENT_NAME]   = "ev_destroy";

if (!variable_global_exists("__scr_debug_init")) {
    show_debug_message("[DEBUG] INIT");
    global.__scr_debug_init = false;
}

for (var i=0; i < array_height_2d(global.event); i++){
    if (global.event[i, EVENT_NUMBER] == event_number){
        var _local_event = "__"+global.event[i, EVENT_NAME];
        if (!variable_instance_exists(self, _local_event)){
        
            variable_instance_set(self, _local_event, true);
            
            var event_name = global.event[i, EVENT_NAME];
            var obj_name = object_get_name(object_index);
            var prefix = "[DEBUG]------------------------------------------------------> ";
            
            var info = string_upper(
                prefix+"["+string(x)+", "+
                string(y)+"] "+obj_name+
                "              "+
                event_name+
                " "+string(event_number)
            )
            show_debug_message(info);
            return 0;
        }
    }
}
