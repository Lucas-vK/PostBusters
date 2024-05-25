//Bottom Part

difference(){
    cube([15,30,20],true);

    translate([0,0,10])
        cube ([8,31,2],true);
    
    translate([0,0,-11])
        cylinder(h=5, r1=5, r2=5);
    }

//Top Part
union(){
    translate([0,0,13])
        cube([15,30,5],true);
    
     translate([0,0,11])
        cube ([7,30,2],true);
}
