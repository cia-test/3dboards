use <base.scad>;

$fn = 30;

y_offset = 20;
x_offset = 7;

p0x = x_offset;
p0y = y_offset;

p1x = p0x;
p1y = 33.8+9.8+y_offset;

p2x = 34.78 + x_offset;
p2y = 33.8 + y_offset;

cyl_height = 6;

mounting_holes = [
    [p0x, p0y, 0],
    [p1x, p1y, 0],
    [p2x, p2y, 0],
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
    translate([15, 10, 0]) cube([20, 70, 3]);
    translate([50, 10, 0]) cube([43, 70, 3]);
}

top_text("pca20035");

bottom_text("v1.0");