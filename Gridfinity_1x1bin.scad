// File: Gridfinity_1x1bin.stl
// X size: 41.5
bin_xsize = 41.5;
// Y size: 41.5
bin_ysize = 41.5;
// Z size: 24.8
bin_zsize = 24.799999237060547;
// X position: 1051.0
bin_xposition = 1051.0;
// Y position: 189.0
bin_yposition = 189.0;
// Z position: 7.65
bin_zposition = 7.650000095367432;
NE=1; NW=2; SW=3; SE=4; CTR=5; CTRXY=6;
module bin_obj2origin (where) {
	if (where == NE) {
		bin_objNE ();
	}

	if (where == NW) {
		translate([ -41.5 , 0 , 0 ])
		bin_objNE ();
	}

	if (where == SW) {
		translate([ -41.5 , -41.5 , 0 ])
		bin_objNE ();
	}

	if (where == SE) {
		translate([ 0 , -41.5 , 0 , ])
		bin_objNE ();
	}

	if (where == CTR) {
	translate([ -20.75 , -20.75 , -12.4 ])
		bin_objNE ();
	}

	if (where == CTRXY) {
	translate([ -20.75 , -20.75 , 0 ])
		bin_objNE ();
	}
}

module bin_objNE () {
	translate([ -1051.0 , -189.0 , -7.65 ])
		import("Gridfinity_1x1bin.stl");
}
