#include "polygon.hpp"
#include <SDL2/SDL_mouse.h>
#include <cmath>
#include <iterator>

Polygon::Polygon(EShape sh, SDL_Renderer* rn) {
	radius = 150;
	renderer = rn;
	angle = 0;
	rgb = {0, 254, 0};
	this->shape = sh;

	double inc = (360.0 / this->shape);
	for (int i = 0; i <= 360; i += inc) {
		int ang = i;
		int x = core.x + round(cos(asradian(ang)) * radius);
		int y = core.y + round(sin(asradian(ang)) * radius);
		points.push_back(Point{x, y});
	}
	calculate_end();
}


Polygon::~Polygon() {
 	// do nothing
}

void Polygon::tick() {

}

void Polygon::click() {
	if (this->shape <= 10) {
		this->shape += 1;
	}
	else {
		this->shape = 2;
	}
	points.clear();
	double inc = (360.0 / this->shape);
	for (int i = 0; i <= 360; i += inc) {
		int ang = i;
		int x = core.x + round(cos(asradian(ang)) * radius);
		int y = core.y + round(sin(asradian(ang)) * radius);
		points.push_back(Point{x, y});
	}
	std::cout << points.size() << std::endl;
}

void Polygon::update_position(int x, int y) { // overload.
	core.x = x; core.y = y;
	calculate_end();
}

void Polygon::calculate_end() {
	double inc = (360.0 / this->shape);
	int i = 0;
	for (Point &pnt : points) {
		int ang = this->angle + i;
		int x = core.x + round(cos(asradian(ang)) * radius);
		int y = core.y + round(sin(asradian(ang)) * radius);
		pnt = {x,y};
		i += inc;
	}
}

double Polygon::asradian(int ang) {
	return ang * (M_PI / 180);
}

void Polygon::increment_angle(int ang) {
	this->angle += ang;
	render_self();
}

void Polygon::append_point(Point pt) {
}

// polygons should no longer render themselves, they should be rendered by the camera.
void Polygon::render_self() {
	SDL_SetRenderDrawColor(renderer, rgb.r, rgb.g, rgb.b, SDL_ALPHA_OPAQUE);
	for (int i = 1; i < points.size(); i++) {
		Point start = points[i-1];
		Point end = points[i];
		// SDL_RenderDrawLine(renderer, core.x, core.y, pnt.x, pnt.y);
		SDL_RenderDrawLine(renderer, start.x, start.y, end.x, end.y);
	}
}
