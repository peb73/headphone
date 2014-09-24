module vis(thickness,deep, radius){
	union(){
			cylinder(deep,radius,radius,false);
			cylinder(thickness,2*radius,radius,false);
	}
};

vis(3,10,2.5);