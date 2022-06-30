#include "camera.hpp"


Camera::Camera(Point start, std::vector<Polygon*>* pgns, int hpara, int wpara) {
	this->anchorpoint = start;
	this->polygons = pgns;

	HEIGHT = hpara; WIDTH = wpara;
}

Camera::~Camera() {
	// do nothing for now
}

// this one is going to be complicated, when implemented.
void Camera::filter_polygons() {
	
}