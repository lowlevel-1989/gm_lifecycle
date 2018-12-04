### BUGS IN HTML5

1. [HTML5: "event_type" and "event_number" return incorrect values](https://bugs.yoyogames.com/view.php?id=30164)

~~~
                                OUTPUT IN WINDOWS WITH VM RUNTINE

[DEBUG] INIT         X      Y   OBJECT        EVENT_TYPE EVENT_NUMBER   EVENT_NAME
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [0,        0]             EV_CREATE
[DEBUG]-----------> [160, 160]  OBJ_BLUE      [0,        0]             EV_CREATE
[DEBUG]-----------> [224, 160]  OBJ_RED       [0,        0]             EV_CREATE
[DEBUG]-----------> [288, 160]  OBJ_YELLOW    [0,        0]             EV_CREATE
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [7,        2]             EV_GAME_START
[DEBUG]----------->             ROOM                                    CREATION CODE
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [7,        4]             EV_ROOM_START
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [3,        1]             EV_STEP_BEGIN
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [3,        0]             EV_STEP_NORMAL
[DEBUG]-----------> [160, 160]  OBJ_BLUE      [3,        0]             EV_STEP_NORMAL
[DEBUG]-----------> [224, 160]  OBJ_RED       [3,        0]             EV_STEP_NORMAL
[DEBUG]-----------> [288, 160]  OBJ_YELLOW    [3,        0]             EV_STEP_NORMAL
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [3,        2]             EV_STEP_END
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [8,       76]             EV_DRAW_PRE
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [8,       72]             EV_DRAW_BEGIN
[DEBUG]-----------> [288, 160]  OBJ_YELLOW    [8,        0]             EV_DRAW
[DEBUG]-----------> [224, 160]  OBJ_RED       [8,        0]             EV_DRAW
[DEBUG]-----------> [160, 160]  OBJ_BLUE      [8,        0]             EV_DRAW
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [8,        0]             EV_DRAW
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [8,       73]             EV_DRAW_END
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [8,       77]             EV_DRAW_POST
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [8,       74]             EV_GUI_BEGIN
[DEBUG]-----------> [288, 160]  OBJ_YELLOW    [8,       64]             EV_GUI
[DEBUG]-----------> [224, 160]  OBJ_RED       [8,       64]             EV_GUI
[DEBUG]-----------> [160, 160]  OBJ_BLUE      [8,       64]             EV_GUI
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [8,       64]             EV_GUI
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [8,       75]             EV_GUI_END
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [7,        5]             EV_ROOM_END
[DEBUG]-----------> [32,   32]  OBJ_CONTROL   [7,        3]             EV_GAME_END
~~~
