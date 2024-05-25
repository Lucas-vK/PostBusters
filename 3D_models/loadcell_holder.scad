//Bottom
difference(){
    cube([70,250,5],true);

    translate([0,33,-5])
        cylinder(h=10, r1=5, r2=5);
    
    translate([0,33,0])
        cylinder(h=4, r1=5, r2=10);
    }
