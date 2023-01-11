use <base.scad>;

$fn=30;

y_offset = 10;
x_offset = -4;

p0x = 13.97 + x_offset;
p0y = 7.62 + y_offset;

p1x = 15.24 + x_offset;
p1y = 55.88 + y_offset;

p2x = 90.17 + x_offset;
p2y = p1y;

p3x = 96.52 + x_offset;
p3y = p0y;

p4x = p1x + 50.8;
p4y = p1y - 15.2;

p5x = p4x;
p5y = p4y - 27.9;

cyl_height = 4;

mounting_holes = [
    [p0x, p0y, 0],
    [p1x, p1y, 0],
    [p2x, p2y, 0],
    [p3x, p3y, 0],
    [p4x, p4y, 0],
    [p5x, p5y, 0],
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
    translate([0,30,0]) cube([54, 23,2]);
}

top_text("Arduino");

bottom_text("v1.0");

