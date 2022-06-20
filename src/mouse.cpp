#include "mouse.hpp"
#include "polygon.hpp"
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
	Mouse::static_count = 0;
	last_click = 0;
	cooldown_ms = 1000;
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

// this seems to always evaluate to true?
bool Mouse::cooldown_calc() {
	return std::chrono::system_clock::now().time_since_epoch().count() >= (long)(last_click + cooldown_ms);
}

void Mouse::mouse_move() {
	SDL_GetMouseState(&xpos, &ypos);
	pshape->update_position(xpos, ypos);
}

void Mouse::mouse_click() {
	if (cooldown_calc()) {
		printf("%d static\n", Mouse::static_count);
		Mouse::static_count += 1;
	}
	else {
		printf("cooldown...\n");
	}
	last_click = std::chrono::system_clock::now().time_since_epoch().count();
}

void Mouse::render() {
	pshape->render_self();
}