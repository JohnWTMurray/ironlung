#include "sync.hpp"

Sync* Sync::pinstance;

// formatted as singleton
Sync* Sync::get_instance() {
	if (Sync::pinstance)
		Sync::pinstance = new Sync();
	return Sync::pinstance;
}

long Sync::get_time_now() { 
	return std::chrono::duration_cast<std::chrono::milliseconds>(
		std::chrono::system_clock::now().time_since_epoch()
	).count();
}

Sync::Sync() {
	this->tick_rate = 200; // one tick every 200 milliseconds.
}

Sync::~Sync() {
	// it exits
}
