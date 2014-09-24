use <./screw.scad>;

module background(height,width,thickness){
	//define screws position
	module screw1() {
		color([1,0,0]) translate([-width/2+15,-(thickness/2+0.1),0]){
			rotate([-90,0,0]){
				screw(3,50,2.5);
			}
		}
	};

	module screw2() {
		color([1,0,0]) translate([width/2-15,-(thickness/2+0.1),0]){
			rotate([-90,0,0]){
				screw(3,50,2.5);
			}
		}
	};

	//main
	difference(){
		/*
		minkowski(){
			cube([width-10,thickness-2,height-10],true);
			rotate([90,0,0]){
				cylinder(r=5,h=1);
			}
		}
		*/
		cube([width,thickness,height],true);

		screw1();
		screw2();
	}

}

background(40,60,5);