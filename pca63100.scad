use <base.scad>;

$fn=100;

y_offset = 5;
x_offset = 5;

p0x = 5 + x_offset;
p0y = 5 + y_offset;

p1x = p0x;
p1y = 74.4 + p0y;

p2x = p0x + 42.78;
p2y = p1y;

p3x = p2x;
p3y = p0y;


cyl_height = 4;

mounting_holes = [
    [p0x, p0y, 0],
    [p1x, p1y, 0],
    [p2x, p2y, 0],
    [p3x, p3y, 0],
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
}

top_text("PPK2");

bottom_text("v1.0");