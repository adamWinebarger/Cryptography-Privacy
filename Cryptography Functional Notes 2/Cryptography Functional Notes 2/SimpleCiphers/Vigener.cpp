//
//  Vigener.cpp
//  Cryptography Functional Notes 2
//
//  Created by adam Winebarger on 4/5/22.
//

#include <cstring>
#include <iostream>

using namespace std;

class Vigener {
    
public:
    
    string vEncode(string pt, string key) {
        char pTarr[pt.size()];
        
        strcpy(pTarr, pt.c_str());
        
        int ptBytes[pt.size()];
        
        for (int i = 0; i < pt.size(); i++) {
            ptBytes[i] = (int)pTarr[i];
            ptBytes[i] -= 65;
            cout << ptBytes[i] << endl;
        }
        
        return "";
    }
    
private:
    
    int char2Int(char c) {
        int i = (int) c;
        
        if (i >= 65 && i <= 90)
            return i - 65;
        
        if (i >= 97 && i <= 122)
            return i - 97;
        
        return 95;
    }
    
};

