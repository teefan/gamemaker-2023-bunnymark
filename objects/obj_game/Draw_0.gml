/// @desc Draw benchmark

draw_rectangle_color(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, c_ltgrey, c_ltgrey, c_ltgrey, c_ltgrey, false);

for (var _i = 0; _i < global.bunnies_count; _i++)
{
    var _bunny = global.bunnies[_i];
    draw_sprite_ext(spr_wabbit_alpha, 0, _bunny.position_x, _bunny.position_y, 1, 1, 0, _bunny.color, 1);
}

draw_text(10, 10, "FPS = " + string(fps));

draw_text(100, 10, "Bunnies = " + string(global.bunnies_count));

draw_text(500, 10, "Click anywhere to add bunnies.                   F5 - Toggle debug view");
