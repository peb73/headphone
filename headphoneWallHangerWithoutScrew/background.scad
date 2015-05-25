use <./screw.scad>;

module background(height,width,thickness){
	cube([width,thickness,height],true);
}

background(40,60,5);