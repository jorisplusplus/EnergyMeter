height=27;
clearance=2.8;
pcbthick=1.6;

module textext(strt,h=1) {
    linear_extrude(h) {
    text(strt,4,font="Open Sans:style=Bold");
    }
}

difference() {
union() {
difference() {
cube([60, 60, height]);
translate([2.9, 2.9, 0])
cube([60-2.9*2, 60-2.9*2, height-2]);
translate([6.75, 0, 2.8+1.6])
cube([16.5, 5, 13.7]);
translate([34.5+5-29/2, 0, 2.8+1.6])
cube([29, 5, 13.2]);       
}
translate([0, 30, clearance+pcbthick])
cube([5, 30, height-(clearance+pcbthick)]);

}
translate([0, 31, 0])
cube([3, 27, 8.5+3]);
translate([0, 55-1.3-9.3, clearance+pcbthick-0.1])
cube([10, 9.3, 3.4]);
translate([0, 28+5, clearance+pcbthick-0.1])
cube([10, 9.3, 5.2]);
translate([10, 3, height-0.95])
textext("ETH");
translate([27, 3, height-0.95])
textext("P1");
translate([38, 3, height-0.95])
textext("RS485");
}



