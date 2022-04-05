//
//  ADFGVX.cpp
//  Cryptography Functional Notes 2
//
//  Created by adam Winebarger on 4/5/22.
//

#include <iostream>

using namespace std;

//string defualtTable[] = {"abcdef", "ghijkl", "mnopqr", "stuvwx", "yz0123", "456789"};

//This one might be easier to do in C# and not in C++
class ADFGVX {
    
    
    
public:
    
    void swapTable(string newTable) {
        if (newTable.length() != 36)
            return;
        
        
    }
    
private:
    
   
    
    bool hasDuplicate(string str) {
        
        for (int i = 0; i < str.length(); i++) {
            
            for (int j = i + 1; j < str.length(); j++) {
                if (str[i] == str[j])
                    return false;
            }
            
        }
        
        return true;
        
    }
    
};
