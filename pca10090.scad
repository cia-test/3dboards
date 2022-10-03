use <base.scad>;

$fn=25;

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
            translate(i) cylinder(d=6,h=4);
        }
    }
    for (i = mounting_holes) {
        translate(i) cylinder(d=3.2,h=4);
        translate(i) cylinder(d=7.4,h=1.4,$fn=6);
        translate(i) translate([0,0,1.4])
            cylinder(d1=7.4,d2=3.2,h=1.4,$fn=6);
    }
    translate([0,30,0]) cube([54, 23,2]);
}

linear_extrude(height=2.4) {
    translate([2,90,0]) text("arduino", size=8);
}
linear_extrude(height=2.4) {
    translate([60,2,0]) text("v0.1-beta", size=6);
}

