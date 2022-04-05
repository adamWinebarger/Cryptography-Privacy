//
//  ThreePass.cpp
//  Cryptography Functional Notes 2
//
//  Created by adam Winebarger on 4/5/22.
//

#include <iostream>
#include <math.h>

using namespace std;

class ThreePass {
    
public:
    
    unsigned long long mod(int a, int b, int n) {
        return (unsigned long long)pow(a,b) % n;
    }
    
    void threePass(int range) {
        
        for (int i = 1; i < range; i++) {
            cout << i << ": ";
            
            for (int j = 1; j < range; j++)
                cout << mod(i, j, range) << " ";
            cout << endl;
        }
        
    }
};
