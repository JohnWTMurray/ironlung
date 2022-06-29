#pragma once
#include "polygon.hpp"
#include "rainbow.hpp"
#include <chrono>
#include <SDL2/SDL_render.h>


// This is formatted as a singleton
class Mouse {
	static Mouse* pinstance;
	static int static_count;
	Mouse(SDL_Renderer* ren, Rainbow* rain); // constructor is private 
	Polygon* pshape;
	SDL_Renderer* renptr;
	void mouse_move();
	void mouse_click();
	int xpos; int ypos;

	int cooldown_ms; 
	long last_click;
	Rainbow* rainptr;

	bool cooldown_calc();
	long ms_since_epoch();


public:
	~Mouse();
	void mouse_event(int event);

	void render();
	static Mouse* get_mouse_instance(SDL_Renderer* ren, Rainbow* rainptr);
	static Mouse* get_mouse_instance();
};
