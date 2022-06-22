#pragma once
#include <SDL2/SDL_render.h>
#include <iostream>
#include <vector>
#include "util.hpp"


enum EShape {
	line = 2,
	triangle = 3, square = 4,
	pentagon = 5, hexagon = 6,
	heptagon = 7, octogon = 8,
};

class Polygon {
	SDL_Renderer* renderer;
	int radius;
	std::vector<Point> points;
	Colour rgb;
	int angle;
	int shape;

	double asradian(int ang);
	void calculate_end();
	void append_point(Point pt);

public:
	Point end;
	Point core;
	void set_angle();
	void increment_angle(int ang);
	void update_position(int x, int y);
	void click();
	void tick(); // game tick
	void render_self();
	Polygon(EShape sh, SDL_Renderer* rn); // constructor
	~Polygon();
};