
module paz(D=3){
	sphere(d=D,$fn=36);
	translate([0,0,-2*D])
		cylinder(D*2,d=D,$fn=36);
}

module down(D=10, T=1){

	H=D;
	r=D/2+T;

	difference(){
		difference(){
			minkowski(){
				cylinder(H,r=r, $fn=6);
				sphere(1,$fn=36);
			}
			translate([-10,0,0])
			color("red")  hull(){
				translate([0,0,15])
				    rotate([0,90,0])
				        cylinder(20, r=D/2, $fn=36);
				translate([0,0,D/2+1])
				    rotate([0,90,0])
				        cylinder(20, r=D/2, $fn=36);
			}
		}
		color("blue") translate([0,0,-1]){
			cylinder(2, 1.5, 3, $fn=36);
			translate([0,0,2])
				cylinder(10, 3, 3, $fn=36);
		}
		translate([0,-r-T/2,2])
			paz(2*T);

		translate([0,r+T/2,2])
			paz(2*T);
	}
}

down(10,1);

