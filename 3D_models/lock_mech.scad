metalThickness = 2.5;
innerBackPlate = 3;

difference(){
    
    union(){
        //Cross in key hole
        translate([-19/2,-3.8/2,0])
            cube([19,3.8,metalThickness]);
        translate([-3.8/2,-19/2,0])
            cube ([3.8,19,metalThickness]);
       
        //cylinder in key hole
        cylinder(metalThickness, 18/2, 18/2);
        
        //backplate
        translate([0,0,metalThickness*-1])
            cylinder(innerBackPlate, 20, 20);
        
        //outer plug
        //translate([0,0,metalThickness+.4])
            //cylinder(15, 15, 15);
        
        
        //servo right side wall
        translate([(12.5/2)-1,-11,-33])
            cube ([2,24,33]);
        
        //servo bottom side screw block
        translate([-15/2,13,-15])
            cube ([15,5,15]);
            
            
        //servo right side support
        translate([7,0,-33])
            cube ([8,2,33]);
            
    }
    
    //Screw Cutout
    translate([0,0,metalThickness*-1])
        cylinder(10, 2, 2);
    translate([0,0,metalThickness*-1-1])
        cylinder(innerBackPlate, 4.5, 2);
}