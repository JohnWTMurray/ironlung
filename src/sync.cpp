#include "sync.hpp"

Sync* Sync::pinstance;

// formatted as singleton
Sync* Sync::get_instance() {
	if (Sync::pinstance)
		Sync::pinstance = new Sync();
	return Sync::pinstance;
}

long Sync::get_time_now() {
	using namespace std;
	return chrono::duration_cast<chrono::milliseconds>(
		chrono::system_clock::now().time_since_epoch()
	).count();
}