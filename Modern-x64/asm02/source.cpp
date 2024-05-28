#include <iostream>
using namespace std;

extern "C" int Anotherfunction();
int main() {
	Anotherfunction();
	return 0;
}