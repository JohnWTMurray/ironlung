#pragma once
#include "polygon.hpp"
#include "util.hpp"
#include <vector>


class Camera {
	std::vector<Polygon*>* polygons;
	std::vector<Polygon*> visible_polygons;
	Point anchorpoint;
	int magnification; // we're not worrying about this just yet.


	// Identifies which polygons are within view of the camera.
	void filter_polygons(); 
	
public:
	Camera(Point start, std::vector<Polygon*>* pgns);
	~Camera();
};
