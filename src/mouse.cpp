#include "mouse.hpp"
#include "polygon.hpp"
#include <SDL2/SDL_mouse.h>
#include <SDL2/SDL_render.h>


// STATIC
Mouse* Mouse::pinstance;


// STATIC
Mouse* Mouse::get_mouse_instance(SDL_Renderer* ren) {
	if (Mouse::pinstance == nullptr) 
		pinstance = new Mouse(ren);
	return Mouse::pinstance;
}

// STATIC
Mouse* Mouse::get_mouse_instance() {
	return (Mouse::pinstance) ? Mouse::pinstance : nullptr;
}

Mouse::Mouse(SDL_Renderer* ren) { // constructor
	renptr = ren;
	pshape = new Polygon(triangle, this->renptr);
}

void Mouse::mouse_event(int event) {
	switch (event) {
	case 1024:
		mouse_move();
		break;
	case 772:
		mouse_click();
		break;
	default:
		break;
	}
}

void Mouse::mouse_move() {
	SDL_GetMouseState(&xpos, &ypos);
}

void Mouse::mouse_click() {
	// do nothing
}

void Mouse::render() {
	pshape->render_self();
}