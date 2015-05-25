$fn=100;

module front(height,width,thickness,radius){

translateR = sqrt(radius*radius-width*width/4);
	intersection(){
		translate([0,0,(radius)/2]){
			cube([width,thickness,height+radius],true);
		}
		union(){
			cube([width,thickness,height],true);
			translate([0,0,-translateR+height/2]){
				rotate([90,0,0]){
					cylinder(thickness,radius,radius,true);
				}
			}
		}
	}
}

front(60,50,5,70);