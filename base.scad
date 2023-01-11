

module baseplate() {
    cube([100,100,2]);
    translate([0, -10, 0])  cube([15,10,1]);
    translate([85, -10, 0]) cube([15,10,1]);
    translate([0, 100, 0])  cube([15,10,1]);
    translate([85, 100, 0]) cube([15,10,1]);
}

module peg(){
    translate([0,0,0]) cylinder(h=2,d=2);
    translate([0,0,2]) sphere(d=2);
    
}

module raised_peg(h=0) {
    translate([0,0,h]) cylinder(h=4,d=4);
    translate([0,0,h+4]) peg();
}

module clip(height) {
    cube([10,1,height]);
    translate([0,1,height-sqrt(2)]) rotate([45,0,0]) cube([10,1,1]);
}

module clip_on_cube (h1, h2) {
    cube([10, h1, 4]);
    translate([0, 0,h1]) clip(h2);
}

module main_cylinder(cyl_height) {
    cylinder(d=6,h=cyl_height);
}

module holes(i, cyl_height) {
    translate(i) cylinder(d=3.2,h=cyl_height);
    translate(i) cylinder(d=6.8,h=1.4,$fn=6);
    translate(i) translate([0,0,1.4]) cylinder(d1=6.8,d2=3.2,h=1.4,$fn=6);
}

module top_text(txt) {
    linear_extrude(height=2.4) {
        translate([2,90,0]) text(txt, size=8);
    }
}

module bottom_text(txt) {
    linear_extrude(height=2.4) {
        translate([60,2,0]) text(txt, size=6);
    }
}