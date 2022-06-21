
// Standard Util
#include <ctime>
#include <iostream>
#include <vector>
#include <string>
#include <bits/stdc++.h>
#include <stdio.h>
#include <chrono>

// custom
#include "game.hpp"
#include "polygon.hpp"
#include "util.hpp"


// Entry Point
void extracted() {
	using namespace std; 
	long y = chrono::system_clock::now().time_since_epoch().count();
	auto x = chrono::duration_cast<chrono::milliseconds>(
		chrono::system_clock::now().time_since_epoch()
	);
}

int main(int argc, char *argv[]) {
  	for (int i = 1; i < argc; i++)
		printf("%s\n", argv[i]);

	// extracted();

  	Game *ptr = Game::get_instance();
  	delete (ptr);

  	return 0;
}
