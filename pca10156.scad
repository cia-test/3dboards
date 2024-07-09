use <base.scad>;

$fn=30;

x_offset = 5;
y_offset = 15;

p0x = x_offset;
p0y = y_offset;

p1x = p0x + 36;
p1y = p0y;

p2x = p1x + 62;
p2y = p0y;

p3x = p0x + 4.6;
p3y = p0y + 53.5;

p4x = p3x + 31.4;
p4y = p3y;

p5x = p4x + 69.10;
p5y = p4y;

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
        translate([100,0,0]) cube([20, 100, 2]);
        for (i = mounting_holes) {
            translate(i) main_cylinder(cyl_height);
        }
    }
    for (i = mounting_holes) {
        holes(i, cyl_height);
    }
    translate([12,8,-1]) cube([22, 15,4]);
    //translate([0,13,-1]) rotate([0,0,45]) cube([25,15,4]);
    //translate([-12,63,-1]) rotate([0,0,-45]) cube([32,15,4]);
}

top_text("PCA10156");

bottom_text("v0.1");