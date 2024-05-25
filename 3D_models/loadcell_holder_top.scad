//Bottom
difference(){
    cube([70,250,5],true);

    translate([0,33,-5])
        cylinder(h=10, r1=4.2, r2=4.2);
    
    translate([0,33,0])
        cylinder(h=4, r1=4.2, r2=8);
    }
