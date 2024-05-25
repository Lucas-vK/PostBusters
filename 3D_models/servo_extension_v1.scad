difference(){
    
    union(){
        //Cross in key hole
        translate([0,0,0])
            cube([12,6,26]);
     
    }
    
    //Screw Cutout
    translate([7,3,-1])
        cylinder(9, 1.85/2, 1.85/2);
}