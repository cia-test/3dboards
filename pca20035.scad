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

mounting_holes = [
    [p0x, p0y, 0],
    [p1x, p1y, 0],
    [p2x, p2y, 0],
];

difference() {
    union() {
        baseplate();
        for (i = mounting_holes) {
            translate(i) cylinder(d=6,h=6);
        }
    }
    for (i = mounting_holes) {
        translate(i) cylinder(d=3.2,h=6);
        translate(i) cylinder(d=7.4,h=1.4,$fn=6);
        translate(i) translate([0,0,1.4])
            cylinder(d1=7.4,d2=3.2,h=1.4,$fn=6);
    }
    translate([15, 10, 0]) cube([20, 70, 3]);
    translate([50, 10, 0]) cube([43, 70, 3]);
}

linear_extrude(height=2.4) {
    translate([2,90,0]) text("pca20035", size=8);
}
linear_extrude(height=2.4) {
    translate([60,2,0]) text("v0.1-beta", size=6);
}
