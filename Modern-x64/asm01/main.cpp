#include <iostream>
using namespace std;

extern "C" int somefunction();
int main() {
	cout << "The result is: " << somefunction() << endl;
	return 0;
}