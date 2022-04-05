//
//  PlayfairCipher.cpp
//  Cryptography Functional Notes 2
//
//  Created by adam Winebarger on 4/5/22.
//

#include <iostream>
#include <algorithm>

using namespace std;

class PlayfairCipher {
    
public:
    
    //function to generate 5x5 key square
    void generateKeyTable(char key[], int ks, char keyT[5][5], char x) {
        {
            
            int i, j, k, flag = 0, *dicty;
            
            //26 character hashmap
            //to store count of the alphabet
            dicty = (int*)calloc(26, sizeof(int));
            
            for (i = 0; i < ks; i++)
                if (key[i] != x)
                    dicty[key[i] - 97] = 2;
            
            dicty[x - 97] = 1;
            
            i = 0;
            j = 0;
            
            for (k = 0; k < ks; k++) {
                if (dicty[key[k] - 97] == 2) {
                    dicty[key[k] - 97] -= 1;
                    keyT[i][j] = key[k];
                    j++;
                    if (j == 5) {
                        i++;
                        j = 0;
                    }
                }
            }
        }
    }
    
    //Function to search for characters of the digraph in the key square and return position
    void search(char keyT[5][5], char a, char b, int arr[]);
    
    

private:
    
    //function to convert pt to lowercase
    string toLowerCase(string plain) {
        string ct = plain;
        
        for (int i = 0; i < plain.size(); i++)
            ct[i] = ascii2Lower(plain[i]);
        
        return ct;
    }
    
    string removeSpaces(string str) {
        str.erase(remove(str.begin(), str.end(), ' '), str.end());
        return str;
    }
    
    char ascii2Lower(char in) {
        if (in <= 'Z' && in >= 'A')
            return in - ('Z' - 'z');
        return in;
    }
    
};
