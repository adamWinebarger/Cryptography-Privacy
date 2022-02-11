#include <iostream>

using namespace std;

void showFactors(int factor) {
    for (int i = 0; i < factor; i++) {
        if (factor % i == 0) {
            cout << i << endl;
        }
    }
}



