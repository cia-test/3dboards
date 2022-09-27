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

difference() {
    union() {
        baseplate();
        translate([p0x, p0y, 0]) cylinder(d=7,h=5);
        translate([p1x, p1y, 0]) cylinder(d=7,h=5);
        translate([p2x, p2y, 0]) cylinder(d=7,h=5);
        translate([p3x, p3y, 0]) cylinder(d=7,h=5);
    }
    translate([p0x, p0y, 0]) cylinder(d=3,h=5);
    translate([p0x, p0y, 0]) cylinder(r=3.2,h=2.1,$fn=6); 
    translate([p1x, p1y, 0]) cylinder(d=3,h=5);
    translate([p1x, p1y, 0]) cylinder(r=3.2,h=2.1,$fn=6); 
    translate([p2x, p2y, 0]) cylinder(d=3,h=5);
    translate([p2x, p2y, 0]) cylinder(r=3.2,h=2.1,$fn=6); 
    translate([p3x, p3y, 0]) cylinder(d=3,h=5);
    translate([p3x, p3y, 0]) cylinder(r=3.2,h=2.1,$fn=6); 
    translate([23,15,0])     cube([55, 70,2]);
}

linear_extrude(height=2.2) {
    translate([2,90,0]) text("pca10090", size=8);
}
