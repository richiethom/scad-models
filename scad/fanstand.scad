$fn = $preview ? 0 : 100; 
poleDiameter = 39;
poleRadius = poleDiameter/2;
outerDiameter = 55;
outerRadius=outerDiameter/2;
supportRadius=outerRadius*1.2;
supportHeight=37;
supportWidth=26;
baseHeight=10;
difference() {
  union() {
    difference() {
      color("red") cylinder(h=110,r=outerRadius,center=false);
      translate([0,0,-1]) { cylinder(h=120,r=poleRadius,center=false); } 
    };
    color("green") cylinder(h=supportHeight+baseHeight, r=supportRadius);
  }
  union() {
    translate([-(supportWidth/2), -60, -1]) {cube([supportWidth,120,supportHeight]);};
    rotate([0,0,90]) {
        translate([-(supportWidth/2), -60, -1]) {cube([supportWidth,120,supportHeight]);};
    }
  }
}