/// @desc Draw benchmark

for (var _i = 0; _i < global.bunnies_count; _i++)
{
    var _bunny = global.bunnies[_i];
    draw_sprite_ext(spr_wabbit_alpha, 0, _bunny.position_x, _bunny.position_y, 1, 1, 0, _bunny.color, 1);
}

draw_rectangle_color(0, 0, SCREEN_WIDTH, 40, c_black, c_black, c_black, c_black, false);

draw_text(10, 10, "FPS = " + string(fps));

draw_text(100, 10, "Bunnies = " + string(global.bunnies_count) + " / 200000");

draw_text(400, 10, "GameMaker Bunnymark - Click anywhere to add bunnies.");

if global.is_desktop
{
    draw_text(1000, 10, "F5 - Toggle debug view");    
}
