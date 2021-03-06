#include "mouse.hpp"
#include "polygon.hpp"
#include "rainbow.hpp"
#include <SDL2/SDL_mouse.h>
#include <SDL2/SDL_render.h>
#include <chrono>
#include <cstdio>


// STATIC
Mouse* Mouse::pinstance;
int Mouse::static_count;


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
	Mouse::static_count = 1;
	last_click = 0;
	cooldown_ms = 1000; // 1 second
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

bool Mouse::cooldown_calc() {
	return this->ms_since_epoch() >= (last_click + (long)cooldown_ms);
}

void Mouse::mouse_move() {
	SDL_GetMouseState(&xpos, &ypos);
	pshape->update_position(xpos, ypos);
}

// total number of milliseconds that have elapsed since the unix epoch
// at the very instance in which the method is called.
long Mouse::ms_since_epoch() {
	return std::chrono::duration_cast<std::chrono::milliseconds>(
		std::chrono::system_clock::now().time_since_epoch()
	).count();
}

void Mouse::mouse_click() {
	if (this->cooldown_calc()) {
		Mouse::static_count += 1;
		last_click = this->ms_since_epoch();
		pshape->increment_angle(30);
	}
}

void Mouse::render() {
	pshape->render_self();
}

Mouse::~Mouse() {
	delete this->pshape;
	// delete Mouse::pinstance; // I think this could be an infinite loop...
}
