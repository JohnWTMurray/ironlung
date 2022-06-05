#pragma once
#include <SDL2/SDL_render.h>
#include "util.hpp"


class Rainbow {
private:
    int height; int length;
    int definition;
    SDL_Renderer* renptr;
    Point refpoint;
    void calculations();

public:
    Rainbow(SDL_Renderer* renptr, int definition, Point start, int HEIGHT, int LENGTH);
    void set_definition(int x);
    void render_self();
};