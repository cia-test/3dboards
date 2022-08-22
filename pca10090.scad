use <base.scad>;

$fn=25;

p0x = 12;
p0y = 15;

p1x = p0x + 1.4;
p1y = p0y + 49;

p2x = p1x + 75;
p2y = p1y;

p3x = p1x + 82;
p3y = p0y;

difference() {
    union() {
        baseplate();
        translate([p0x, p0y, 0]) cylinder(d=6,h=5);
        translate([p1x, p1y, 0]) cylinder(d=6,h=5);
        translate([p2x, p2y, 0]) cylinder(d=6,h=5);
        translate([p3x, p3y, 0]) cylinder(d=6,h=5);
    }
    translate([p0x, p0y, 0]) cylinder(d=3,h=5);
    translate([p0x, p0y, 0]) cylinder(d1=8, d2=3,h=3);
    translate([p1x, p1y, 0]) cylinder(d=3,h=5);
    translate([p1x, p1y, 0]) cylinder(d1=8, d2=3,h=3);
    translate([p2x, p2y, 0]) cylinder(d=3,h=5);
    translate([p2x, p2y, 0]) cylinder(d1=8, d2=3,h=3);
    translate([p3x, p3y, 0]) cylinder(d=3,h=5);
    translate([p3x, p3y, 0]) cylinder(d1=8, d2=3,h=3);
    translate([17,15,0])     cube([65, 70,2]);
}



linear_extrude(height=2.2) {
    translate([2,90,0]) text("pca10090", size=8);
}
