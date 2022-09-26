use <base.scad>;
$fn = 30;

y_offset = 10;
x_offset = 7;

p0x = x_offset;
p0y = y_offset;

p1x = p0x;
p1y = 33.8+9.8+y_offset;

p2x = 34.78 + x_offset;
p2y = 33.8 + y_offset;

difference() {
    union() {
        baseplate();
        translate([p0x, p0y, 0]) cylinder(d=6,h=6);
        translate([p1x, p1y, 0]) cylinder(d=4,h=6);
        translate([p2x, p2y, 0]) cylinder(d=6,h=6);
    }
    translate([p0x, p0y, 0]) cylinder(d=3,h=6);
    translate([p0x, p0y, 0]) cylinder(d1=8, d2=3,h=3);
    translate([p2x, p2y, 0]) cylinder(d=3,h=6);
    translate([p2x, p2y, 0]) cylinder(d1=8, d2=3,h=3);

    translate([15,55,0])     cube([70, 30,2]);
    translate([15,15,0])     cube([70, 20,2]);
}



linear_extrude(height=2.2) {
    translate([2,90,0]) text("pca20035", size=8);
}

linear_extrude(height=2.2) {
    #translate([70,2,0]) text("v1.0.0", size=6);
}
