rm = argument0;

if (rm == rm_overworld) {
	return 0;
} else if (rm == rm_cave) {
	return 1;
}

if (rm == 0) {
	return rm_overworld;
} else if (rm == 1) {
	return rm_cave;
}