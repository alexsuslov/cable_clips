translate([-30,0,0])
    color("blue") linear_extrude(1)  text("10mm",size=5);
rotate([180,0,0]) 
    translate([0,0,-12])
        import("cap.stl");
translate([20,0,0])
    color("red") import("down.stl");
    
translate([0,20,0]){    
    translate([-30,0,0])
       color("blue") linear_extrude(1) text("8mm",size=5);
    rotate([180,0,0]) 
        translate([0,0,-12])
            import("cap8.stl");
    translate([20,0,0])
        color("red") import("down8.stl");
}
   
translate([0,40,0]){    
    translate([-30,0,0])
        color("blue") linear_extrude(1)  text("5mm",size=5);
    rotate([180,0,0]) 
        translate([0,0,-12])
            import("cap5.stl");
    translate([20,0,0])
        color("red") import("down5.stl");
}