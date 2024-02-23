use <base.scad>;

$fn=30;

y_offset = 20;
x_offset = 10;

p0x = 42.75 + x_offset;
p0y = y_offset;

p1x = x_offset;
p1y = 46.5 + y_offset;


cyl_height = 6;

mounting_holes = [
    [p0x, p0y, 0],
    [p1x, p1y, 0],
];

difference() {
    union() {
        baseplate();
        for (i = mounting_holes) {
            translate(i) main_cylinder(cyl_height);
        }
    }
    for (i = mounting_holes) {
        holes(i, cyl_height);
    }
    translate([20,25, -1]) cube([35, 40,4]);

    translate([65,18, -1]) cube([25, 2,4]);
    translate([65,72, -1]) cube([25, 2,4]);
}

translate([60,20, 2]) cube([35, 2,3]);
translate([60,70, 2]) cube([35, 2,3]);

top_text("Thingy91x");

bottom_text("v0.1");



