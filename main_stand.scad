$fn = 50;

module bar () {
    difference() {
        cube([200,20,12]);
        translate([10,2,2])
            for (i=[0:12]) {
                translate([15*i,0,0]) cube([1.5,16,10]);
                translate([15*i-6.5,0,15.5]) rotate([0,45,0]) cube([10,16,10]);
            }
    }
}

module crossbeam(offs) {
    difference() {
        translate([offs,20,0]) cube([10,65,10]);
        #translate([offs,35,0]) cube([10,30,5]);
    }
    #translate([offs+5,50,4]) cylinder(2.5, 2, 2.5);
}

translate([0,0,0]) bar();
translate([0,85,0]) bar();

crossbeam(10);
crossbeam(180);
