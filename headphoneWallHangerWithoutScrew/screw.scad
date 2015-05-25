module screw(thickness,deep, radius){
	union(){
			cylinder(deep,radius,radius,false);
			cylinder(thickness,2*radius,radius,false);
	}
};

screw(3,10,2.5);