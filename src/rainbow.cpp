#include "rainbow.hpp"
#include <SDL2/SDL_pixels.h>
#include <SDL2/SDL_rect.h>
#include <SDL2/SDL_render.h>
#include <cmath>
#include <iostream>
#include <cstdio>


// constructor
Rainbow::Rainbow(SDL_Renderer* renptr, int definition, Point start, int HEIGHT, int LENGTH) {
    this->renptr = renptr;
    this->definition = definition;
    this->height = HEIGHT; this->length = LENGTH;
    this->refpoint = start;
}

void Rainbow::calculations() {
    // does nothing for now.
}

void Rainbow::render_self() {
    int inc = (int)floor(length / definition);
    int cr = 0;
    int cb = 255;

    for (int i = refpoint.x; i < (refpoint.x + length); i += inc)
    {
        int height_offset = refpoint.y - height;
        SDL_Rect rec = { // x, y, w, h
            i, height_offset,
            inc, height_offset
        };
        SDL_SetRenderDrawColor(renptr, cb, 0, cr, SDL_ALPHA_OPAQUE);
        SDL_RenderFillRect(renptr, &rec);

        cr += (int)floor(255 / this->definition);
        cb -= (int)floor(255 / definition);
    }
}

void Rainbow::set_definition(int x) {
    if (x > 0 && x <= 255) {
        definition = x;
    }
    else {
        printf("definition must be greater than 0 and less than 255\n");
    }
}