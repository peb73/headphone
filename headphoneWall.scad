$fn=100;

/*
radius = 70;
height = 40;
//width = height/1.61;
width = 60;
thickness = 6;
translateR = sqrt((radius+thickness)*(radius+thickness)-(width*width/4))-thickness;


intersection(){
	translate([0,-200,0]){
		cube([width,400,400],false);
	}
	difference(){
		union(){
			difference(){
				cube([width,thickness,height]);
			}
			translate([width/2,thickness,-translateR]){
				rotate([90,0,0]){
					cylinder(40, (radius+thickness),(radius+thickness), false);
				}
			}
		}

		translate([width/2,7,-translateR]){
			rotate([90,0,0]){
				cylinder(48,radius,radius,false);
			}
		}
	}
}
*/