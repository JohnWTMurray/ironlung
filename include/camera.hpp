#pragma once
#include "polygon.hpp"
#include "util.hpp"
#include <vector>


class Camera {
	std::vector<Polygon*>* polygons;
	std::vector<Polygon*> visible_polygons;
	Point anchorpoint;
	int magnification;


	// Identifies which polygons are within view of the camera.
	void filter_polygons(); 
	
public:
	Camera();
	~Camera();
};
