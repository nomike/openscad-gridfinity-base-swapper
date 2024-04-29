
include<gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

module single_base(magnet_hole_type=0) {
    difference() {
        translate([l_grid / 2, l_grid / 2, 0]) gridfinityBase(1, 1, 42, 0, 0, magnet_hole_type);
    }
}

module base_grid(grid_x, grid_y, magnet_hole_type=0, x=0, y=0) {
    if (x + 1 < grid_x) {
        base_grid(grid_x, grid_y, magnet_hole_type, x + 1, y);
    }
    if (y + 1 < grid_y) {
        base_grid(grid_x, grid_y, magnet_hole_type, 0, y + 1);
    }
    translate([l_grid * x, l_grid * y, 0]) single_base(magnet_hole_type);
}
