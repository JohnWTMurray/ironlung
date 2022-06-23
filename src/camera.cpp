#include "camera.hpp"


Camera::Camera(Point start, std::vector<Polygon*>* pgns) {
	this->anchorpoint = start;
	this->polygons = pgns;
}

Camera::~Camera() {

}

// this one is going to be complicated, when implemented.
void Camera::filter_polygons() {
	
}