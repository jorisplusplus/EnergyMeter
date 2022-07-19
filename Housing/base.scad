base=2;
clearance=2.8;
pchthick=1.6;
cube([60, 60, base]);
translate([3, 3, 0])
union() {
difference() {
cube([54, 54, base+clearance+pchthick]);
translate([2, 2, 0])
cube([50, 50.1, base+clearance+pchthick]);
}
translate([10, 0, 0])
cube([4, 6, base+clearance]);
translate([27, 0, 0])
cube([4, 6, base+clearance]);
translate([42.5, 0, 0])
cube([4, 6, base+clearance]);
translate([12, 37, 0])
cube([30, 6, base+clearance]);
}
