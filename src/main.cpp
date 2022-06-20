
// Standard Util
#include <ctime>
#include <iostream>
#include <vector>
#include <string>
#include <bits/stdc++.h>
#include <stdio.h>

// custom
#include "game.hpp"
#include "polygon.hpp"

#include <chrono>

// Entry Point
int main(int argc, char *argv[]) {
	for (int i = 1; i < argc; i++)
		printf("%s\n", argv[i]);


	// using namespace std;
	// auto x = chrono::duration_cast<chrono::milliseconds>(
	// 	chrono::system_clock::now().time_since_epoch()
	// );

	// for (;true;) { // there is eno
	// 	auto _t = time(NULL);
	// 	cout << _t << endl;
	// }

	Game* ptr = Game::get_instance();
	delete(ptr); 

	return 0;
}
