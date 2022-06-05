// CPR
#include "cpr/api.h"
#include "cpr/auth.h"
#include "cpr/cprtypes.h"
#include "cpr/response.h"


// Standard Util
#include <iostream>
#include <vector>
#include <string>
#include <bits/stdc++.h>
#include <cpr/cpr.h>
#include <stdio.h>

// custom
#include "game.hpp"
#include "polygon.hpp"

// Entry Point
int main(int argc, char *argv[]) { 
	for (int i = 1; i < argc; i++)
		printf("%s\n", argv[i]);

	Game* ptr = Game::get_instance();
	delete(ptr); 

	return 0;
}
