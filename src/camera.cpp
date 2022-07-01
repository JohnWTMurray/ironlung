#include "camera.hpp"


// static std::vector<int> stat_camids;
std::vector<int> Camera::stat_camids; // static PRIVATE

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

void Camera::generate_id() {
}

int Camera::get_id() {
	return 0;
}