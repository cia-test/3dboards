

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
    translate([0,0,h+4])peg(h);
}

module clip(height) {
    cube([10,1,height]);
    translate([0,1,height-sqrt(2)]) rotate([45,0,0]) cube([10,1,1]);
}

module clip_on_cube (h1, h2) {
    cube([10, h1, 4]);
    translate([0, 0,h1]) clip(h2);
}
