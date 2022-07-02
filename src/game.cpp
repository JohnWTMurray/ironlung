#include "game.hpp"
#include "camera.hpp"
#include "line.hpp"
#include "polygon.hpp"
#include "rainbow.hpp"

#include <SDL2/SDL.h>
#include <SDL2/SDL_events.h>
#include <SDL2/SDL_keyboard.h>
#include <SDL2/SDL_keycode.h>
#include <SDL2/SDL_mouse.h>
#include <SDL2/SDL_pixels.h>
#include <SDL2/SDL_rect.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_surface.h>
#include <SDL2/SDL_timer.h>
#include <SDL2/SDL_video.h>
#include <future>
#include <iterator>
#include <openssl/x509_vfy.h>
#include <type_traits>
#include <unistd.h>


// static variables
Game* Game::pinstance;

// PUBLIC

Game::~Game() { // deconstructor

	for (Polygon* &p : this->polygons) {
		delete(p);
	}

	delete(this->sync);
	delete(this->psurface);
	delete(this->pmouse);
	if (this->rain)
		delete(this->rain);

	SDL_DestroyRenderer(this->prender);
	SDL_DestroyWindow(this->pwindow);
}

// STATIC
Game* Game::get_instance() { // static method
	if (!Game::pinstance)
		Game::pinstance = new Game();
	return Game::pinstance; 
}

// PRIVATE
void Game::render() {
	// SDL_SetRenderDrawColor(prender, 255, 255, 255, 255);  // white bg
	SDL_SetRenderDrawColor(prender, 0, 0, 0, 255); // black bg
	SDL_RenderClear(prender);

	if (lines.size() > 0)
		for (Line &ln : lines)
			ln.render_self();

	if (polygons.size() > 0)
		for (Polygon* p : polygons)
			p->render_self();
	
	if (rain)
		rain->render_self();
	pmouse->render();

	SDL_SetRenderDrawColor(this->prender, 0, 255, 0, SDL_ALPHA_OPAQUE); // lime green
	SDL_RenderFillRect(this->prender, &this->rec);

	SDL_RenderPresent(prender);
}

void Game::loop() {
	// SDL_Delay(10000); // sleeps for 10 seconds
	bool live = true;
	SDL_Event event;
	while (live) {
		// refactor this as a switch statement please
		if (SDL_PollEvent(&event)) {

			if (event.type == SDL_QUIT) {
				live = false;
			}
			if (event.type == SDL_KEYDOWN) {
				SDL_Keycode key = event.key.keysym.sym;
				// key == SDLK_x
				if (key == SDLK_ESCAPE)
					live = false;
			}
			pmouse->mouse_event(event.type);
			render();
		}
	}
	printf("game loop terminated\n");
	SDL_DestroyWindow(pwindow);
	SDL_Quit();
}

Game::Game() { // constructor

	SDL_Init(SDL_INIT_VIDEO);
	HEIGHT = 500; WIDTH = 500;
	pwindow = SDL_CreateWindow("Polygons", // title
		200, 200, // initial position
		HEIGHT, WIDTH, // width & height
		0 // flags
	);

	if (pwindow != nullptr) {
		prender = SDL_CreateRenderer(pwindow, -1, 0);
		if (prender != nullptr) {
			psurface = SDL_CreateRGBSurface(0, WIDTH, HEIGHT, 32, 0, 0, 0, 0);
			rec = SDL_Rect{20, 20, 200, 1};

			sync = Sync::get_instance();
			// rain = new Rainbow(prender, 5, Point{ 20, 40 }, 100, 200);
			pmouse = Mouse::get_mouse_instance(prender);
			cameras.push_back(Camera({0, 0}, &polygons, HEIGHT, WIDTH));
			loop();
		}
		else {
			printf("initilised window, but could not init renderer for some reason\n");
		}
	}
	else {
		printf("could not init window for some reason\n");
	}
}
