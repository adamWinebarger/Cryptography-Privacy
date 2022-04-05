//
//  Basics.cpp
//  Cryptography Functional Notes 2
//
//  Created by adam Winebarger on 4/5/22.
//

/*
 * Not really sure what to put here. Maybe something on encoding vs encryption
 * but even that is a pretty basic concept. So maybe I'll demo it or something... idk
 */
#include <iostream>


class Basics {
    
public:
    
    //Gotta see if there's a way to have this as a non-null return-type
    void showFactors(int factor) {
        for (int i = 0; i <= factor; i++)
            if (factor % i == 0)
                std::cout << i << std::endl;
    }
    
    //non-null one maybe
    int *showFactors2(int factor) {
        
        int offset = 0;
        int *factors = nullptr;
        
        for (int i = 0; i <= factor; i++)
            if (factor % i == 0) {
                *(factors+offset) = i;
                offset++;
            }
        
        *(factors+offset) = '\0';
        
        return factors;
        
    }
    
    
};
