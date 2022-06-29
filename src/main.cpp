
// Standard Util
#include <ctime>
#include <iostream>
#include <vector>
#include <string>
#include <bits/stdc++.h>
#include <stdio.h>
#include <chrono>
#include <functional>

/* Multithreading test */
#include <thread>
#include <mutex>

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
		std::cout << c;
}

int function_delta(int x, char c) {
	printf("fornite: %d %c\n", x, c);
	return (int)(x / 2);
}

// getting the concept of using function pointers as callbacks.
void function_alpha(int (*handler)(int x, char c)) {
	std::cout << "Calling function\n";
	printf("res: %d\n", handler(100, 's'));
}

// Entry Point
int main(int argc, char *argv[]) {

  	for (int i = 1; i < argc; i++)
		printf("%s\n", argv[i]); 

	// std::thread a(print_stuff, 50, '$');
	// std::thread b(print_stuff, 50, '%');
	// b.join(); a.join();

	// function_alpha(&function_delta);

  	Game *ptr = Game::get_instance();
  	delete (ptr);


  	return 0;
}
