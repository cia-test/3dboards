$fn = 50;
translate([0,0,0]) cube([5,100+12,25]);
translate([205,0,0]) cube([5,100+12,25]);

translate([0,112,0])cube([210,5,25]);

difference() {
translate([0,0,0]) cube([205,5,25]);
translate([25,0,0]) cube([160,5,25]);

#translate([20,-1,12]) rotate([0,90,90]) cylinder(7,2.6,2.6);
#translate([190,-1,12.5]) rotate([0,90,90]) cylinder(7, 2.6, 2.6);
}