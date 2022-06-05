// Util
#include <iostream>
#include <openssl/pkcs7.h>
#include <string>
#include <vector>

// Graphics
#include <SDL2/SDL_rect.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_surface.h>
#include <SDL2/SDL_video.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_events.h>
#include <SDL2/SDL_keycode.h>
#include <SDL2/SDL_opengl.h>

#include "line.hpp"
#include "polygon.hpp"
#include "rainbow.hpp"

struct {
	int x;
	int y;
} typedef Cursor;


// this should be configured as a singleton
class Game {
	static Game* pinstance;
	SDL_Window* pwindow;
	SDL_Renderer* prender;
	SDL_Surface* psurface;
	SDL_Rect rec;

	Cursor cursor;
	std::vector<Line> lines;
	std::vector<Polygon*> polygons;
	Polygon* po;
	Rainbow* rain;

	void gameloop();
	void render();

	Game(); // Constructor 
	Game(const Game&); // makes the instance non copyable
	Game& operator=(const Game&); // makes the instance non copyable
public:
	static Game* get_instance();
	~Game(); // destructor
	int HEIGHT, WIDTH;
};
