#include <iostream>
using namespace std;

int main() {
	int i = 0;
	_asm {
		mov i, 28398
	}
	cout << "The result is: " << i << endl;
	return 0;
}