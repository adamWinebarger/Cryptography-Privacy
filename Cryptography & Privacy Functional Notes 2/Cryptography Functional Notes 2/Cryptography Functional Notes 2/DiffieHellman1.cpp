//
//  DiffieHellman1.cpp
//  Cryptography Functional Notes 2
//
//  Created by adam Winebarger on 4/5/22.
//

#include <stdio.h>


//When looking for squares to add, we want to make sure that the out is greater than or equal to the base
//i.e. 8^4 % 29 == 7 so we wouldn't include that
//but 8^8 %29 is 20 which is greater than 8
// We can also add the sum of 2^x to find which exponents would fire and which wouldn't

class DiffieHellman1 {
    
public:
    
    unsigned long long exponentiation(int base, int exponent, int n) {
        if (exponent == 0)
            return 1;
        if (exponent == 1)
            return base % n;
        
        long long t = exponentiation(base, exponent/ 2, n);
        t = (t * t) % n;
        
        //if exponent is een value
        if (exponent % 2 == 0)
            return t;
        
        //If it's odd
        else
            return ((base % n) * t) % n;
    }
    
    unsigned long long exp2(int base, int exponent, int n) {
        
        long t = 1L;
        
        while (exponent > 0) {
            
            //case where exponent is not an even value
            if (exponent % 2 != 0)
                t = (t * base) % n;
            
            base = (base * bas) % n;
            return t % n;
            
        }
        
    }
    
};
