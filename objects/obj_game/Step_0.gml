/// @desc Update bunnies

var _m_left = mouse_check_button(mb_left);
var _m_x = mouse_x;
var _m_y = mouse_y;

if (_m_left)
{
    for (var _i = 0; _i < 100; _i++)
    {
        if (global.bunnies_count < MAX_BUNNIES)
        {
            global.bunnies[global.bunnies_count] = new global.bunny(
                _m_x,
                _m_y,
                irandom_range(-250, 250) / 60.0,
                irandom_range(-250, 250) / 60.0,
                make_colour_rgb(
                    irandom_range(50, 240),
                    irandom_range(80, 240),
                    irandom_range(100, 240)
                )
            );
            global.bunnies_count++;
        }
    }
}

// Mimic some real game computations
var _bunny = global.bunnies[0];
var _bunny_hwidth = 16;
var _bunny_hheight = 16;

for (var _i = 0; _i < global.bunnies_count; _i++)
{
    _bunny = global.bunnies[_i];
    
    _bunny.position_x += _bunny.speed_x;
    _bunny.position_y += _bunny.speed_y;
    
    
    if ((_bunny.position_x + _bunny_hwidth) > SCREEN_WIDTH ||
         (_bunny.position_x + _bunny_hwidth) < 0)
    {
        _bunny.speed_x *= -1;
    }
    if ((_bunny.position_y + _bunny_hheight) > SCREEN_HEIGHT ||
         (_bunny.position_y + _bunny_hheight) < 0)
    {
        _bunny.speed_y *= -1;
    }
}

// Show debug panel - F5
if keyboard_check_pressed(vk_f5)
{
    global.debug = !global.debug;
    show_debug_overlay(global.debug);
}

// Print screen - F9
if keyboard_check_pressed(vk_f9)
{
    screen_save(working_directory + "Screens\Bunnymark_" + string(global.shots++) + ".png")
}
