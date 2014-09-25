use <./background.scad>;
use <./front.scad>;

$fn=100;

module headphoneWallHanger(){
	
	radius = 70;
	height = 40;
	//width = height/1.61;
	width = 60;
	thickness = 6;
	translateR = sqrt((radius+thickness)*(radius+thickness)-(width*width/4))-thickness;
	deep = 40;
	intersection(){
		translate([0,0,200]){
			cube([width,400,400],true);
		}
		difference(){
			union(){
				//add background
				translate([0,deep/2-thickness/2,height/2]){
					background(height,width,thickness);
				}
	
				//add cylinder
				translate([0,0,-translateR]){
					rotate([90,0,0]){
						cylinder(40, (radius+thickness),(radius+thickness), true);
					}
				}
	
				//add front
				translate([0,-(deep/2-thickness/2),height/3]){
					front(height/3,width/3,thickness, radius);
				}
			}
	
			translate([0,0,-translateR]){
				rotate([90,0,0]){
					cylinder(50,radius,radius,true);
				}
			}
		}
	}

};

headphoneWallHanger();