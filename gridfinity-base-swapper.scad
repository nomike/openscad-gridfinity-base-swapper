l_grid = 41.5; 
include<gridfinity-base-swapper-lib.scad>
$fn = 44;
magnet_hole_type = 4;

include<Gridfinity_1x1bin.scad>;

grid_x = round(bin_xsize / 42);
grid_y = round(bin_ysize / 42);

union() {
    difference() {
        bin_obj2origin(NE);
        cube([bin_xsize, bin_ysize, h_base]);
    }
    base_grid(grid_x, grid_y, magnet_hole_type=magnet_hole_type);
}
