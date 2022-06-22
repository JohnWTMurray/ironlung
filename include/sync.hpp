#pragma once
#include <chrono>

// formated as singleton
class Sync {
	static Sync* pinstance;
	int ticks;
	int tick_rate;
	long time; // in milliseconds since epoch.

	Sync();
	~Sync();


public:
	static Sync* get_instance(); 
	long get_time_now();
};