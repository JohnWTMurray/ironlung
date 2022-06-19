#pragma once
#include "polygon.hpp"
#include <SDL2/SDL_render.h>


// This is formatted as a singleton
class Mouse {
	static Mouse* pinstance;
	Mouse(SDL_Renderer* ren); // constructor is private 
	Polygon* pshape;
	SDL_Renderer* renptr;
	void mouse_move();
	void mouse_click();
	int xpos; int ypos;


public:
	~Mouse();
	void mouse_event(int event);

	void render();
	static Mouse* get_mouse_instance(SDL_Renderer* ren);
	static Mouse* get_mouse_instance();
};