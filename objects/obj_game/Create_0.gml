/// @desc Init benchmark

#macro MAX_BUNNIES 200000
#macro SCREEN_WIDTH 1280
#macro SCREEN_HEIGHT 720

global.debug = false;
global.shots = 0;
global.is_desktop = os_browser == browser_not_a_browser

global.bunny = function(_x = 0.0, _y = 0.0, _speed_x = 0, _speed_y = 0, _color = c_white) constructor
{
    position_x = _x;
    position_y = _y;
    speed_x = _speed_x;
    speed_y = _speed_y;
    color = _color;
};

global.bunnies = array_create(MAX_BUNNIES, new global.bunny());

global.bunnies_count = 0;
