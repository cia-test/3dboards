module bar () {
    difference() {
        cube([190,20,12]);
        translate([10,2,2])
        for (i=[0:11]) {
            translate([15*i,0,0]) cube([1.5,16,10]);
        }
    }
}

translate([0,0,0]) bar();
translate([0,85,0]) bar();

translate([10,20,0]) cube([10,65,5]);
translate([170,20,0]) cube([10,65,5]);