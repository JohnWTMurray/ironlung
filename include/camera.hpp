#pragma once
#include "polygon.hpp"
#include "util.hpp"
#include <vector>


class Camera {
	static std::vector<int> stat_camids;
	std::vector<Polygon*>* polygons;
	std::vector<Polygon*> visible_polygons;
	Point anchorpoint;
	int magnification; // we're not worrying about this just yet.
	int HEIGHT;
	int WIDTH;
	int cam_id;

	void generate_id();


	// Identifies which polygons are within view of the camera.
	void filter_polygons(); 
	
public:
 	int get_id();
	Camera(Point start, std::vector<Polygon*>* pgns, int hpara, int wpara);
	~Camera();
};
