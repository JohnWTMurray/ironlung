#include <cstdlib>
#include <iostream>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_video.h>
#include <line.hpp>



Line::Line(Point start, Point end, SDL_Renderer* rn) {
	this->start = start; this->end = end;
	construct(rn);
}

Line::Line(int x1, int y1, int x2, int y2, SDL_Renderer* rn) {
	start = Point{x1, y1}; end = Point{x2, y2};
	construct(rn);
}

void Line::construct(SDL_Renderer* rn) {
	renderer = rn; 
	printf("Creating line\n");
	Colour rgb = {255, 255, 255};
}

void Line::render_self() {
	SDL_SetRenderDrawColor(renderer, rgb.r, rgb.g, rgb.b, SDL_ALPHA_OPAQUE);
	SDL_RenderDrawLine(renderer, start.x, start.y, end.x, end.y);
}

void Line::random_colour() {
	rgb = {(short)(rand() % 255), (short)(rand() % 255), (short)(rand() % 255)};
}


void Line::set_colour(short r, short g, short b) {
	rgb = {r,g,b};
	// random_colour();
}

Line::~Line() {
	// Do nothing for the time being.
}