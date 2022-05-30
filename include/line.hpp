#pragma once
#include <SDL2/SDL_render.h>
#include "util.hpp"

class Line {
	void construct(SDL_Renderer* rn);
	SDL_Renderer* renderer;
	Point start;
	Point end;
	Colour rgb;
public:
	void set_colour(short r, short g, short b);
	void random_colour();
	Line(Point start, Point end, SDL_Renderer* rn); // constructor
	Line(int x1, int y1, int x2, int y2, SDL_Renderer* rn); // constructor override.
	void render_self();
	~Line(); // destructor
};