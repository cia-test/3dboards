use <base.scad>;

baseplate();
translate([3, 18, 2]) raised_peg();
translate([3, 18+43.5, 2]) raised_peg();
translate([3+34, 18+34, 2]) raised_peg();
translate([35, 14.5,2]) clip_on_cube(4,3);
translate([10+16, 18+43.5+3.5 ,2]) rotate([0,0,180]) clip_on_cube(4,3);