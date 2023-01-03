module cap(D=10, T=1, fn=6){
    H=D;
    r=D/2+T;
    difference(){
        translate([0,0,T])
        minkowski(){
            cylinder(H,r=r+T, $fn=fn);
            sphere(1.5, $fn=36);
        }
        minkowski(){
            cylinder(H,r=r+0.1, $fn=6);
            sphere(1,$fn=36);
        }

        // cable
        L=D*3;
        translate([-L/2,0,0])
            color("red")  hull(){
                translate([0,0,T+D/2])
                    rotate([0,90,0])
                        cylinder(L, r=D/2, $fn=36);
                rotate([0,90,0])
                    cylinder(L, r=D/2);
            }
    }
    translate([0,-r-T/2,T*2])
        sphere(d=2*T,$fn=36);
    translate([0,r+T/2,T*2])
        sphere(d=2*T,$fn=36);
}

cap(10,1, fn=36);
