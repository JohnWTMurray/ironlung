
// Standard Util
#include <ctime>
#include <iostream>
#include <vector>
#include <string>
#include <bits/stdc++.h>
#include <stdio.h>
#include <chrono>

/* Multithreading test */
// #include <thread>
// #include <mutex>

// custom
#include "game.hpp"
#include "polygon.hpp"
#include "util.hpp"


// chrono time management tests
void extracted() {
	using namespace std; 
	long y = chrono::system_clock::now().time_since_epoch().count();
	auto x = chrono::duration_cast<chrono::milliseconds>(
		chrono::system_clock::now().time_since_epoch()
	);
}

// multithreading test 
void print_stuff(int n, char c) {
	for (int i = 0; i < n; i += 1)
		printf("%c", c);
	printf("\n");
}

// Entry Point
int main(int argc, char *argv[]) {

  	for (int i = 1; i < argc; i++)
		printf("%s\n", argv[i]);


	// std::thread a(print_stuff, 8, "$");
	// std::thread b(print_stuff, 8, "%");

	// a.join(); b.join();


  	Game *ptr = Game::get_instance();
  	delete (ptr);

  	return 0;
}
