#include "game.hpp"
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
	// do nothing.
}

// STATIC
Game* Game::get_instance() { // static method
	if (!pinstance) {
		Game::pinstance = new Game();
	}
	return Game::pinstance;
}

// PRIVATE

void Game::render() {
	// SDL_SetRenderDrawColor(prender, 255, 255, 255, 255);  // white bg
	SDL_SetRenderDrawColor(prender, 0, 0, 0, 255); // black bg
	SDL_RenderClear(prender);

	if (lines.size() > 0) {
		for (Line ln : lines)
			ln.render_self();
	}
	
	rain->render_self();
	pmouse->render();

	SDL_SetRenderDrawColor(this->prender, 0, 255, 0, SDL_ALPHA_OPAQUE); // lime green
	SDL_RenderFillRect(this->prender, &this->rec);

	SDL_RenderPresent(prender);
}

void Game::gameloop() {
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
			rec = SDL_Rect{20, 20, 50, 50};
			cursor = {0, 0};
			pmouse = Mouse::get_mouse_instance(prender);
			rain = new Rainbow(prender, 50, Point{HEIGHT / 3, WIDTH / 3}, 100, 200);
			gameloop();
		}
		else {
			printf("initilised window, but could not init renderer for some reason\n");
		}
	}
	else {
		printf("Could not init window for some reason\n");
	}
}
