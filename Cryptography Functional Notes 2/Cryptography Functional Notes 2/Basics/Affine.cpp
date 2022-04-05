//
//  Affine.cpp
//  Cryptography Functional Notes 2
//
//  Created by adam Winebarger on 4/5/22.
//

//#include <bits/stdc++.h>
#include <iostream>
#include <cctype>

using namespace std;

class Affine {
    
public:
    
    //function for "encrypting" a message using affine shift
    //Although technically, I'd say this is more closer to encoding
    
    string affineEncryption(string m, int a, int b) {
        string cipher = ""; //this needs to be initialized but empty for this to work
        string msg = "";
        
        for (int i =0; i < m.length(); i++) {
            if (m[i] != ' ')
                msg += toupper(m[i]);
            else
                msg += m[i];    //I guess we didn't design this to handle punctuation
        }
        
        for (int j = 0; j < msg.length(); j++) {
            
            //catchment to ensure we don't accientally shift a space
            if (msg[j] != ' ') {
                //We're multiplying by a here so that our letter shift won't be perfectly linear
                char c = a * (msg[j] - 'A'); // the - 'A' subtracts 65 from the char which allows us to get numeric values for the letters (A = 0, B = 1, etc.)
                c += b; //shift the letter further, by b
                c += 'A';   //Returns the new character to its ascii value
                
                cipher += c; //Adds the new char to the encrypted message
            } else
                cipher += msg[j];
        }
        
        return cipher;
    }
    
    string affineDecrypt(string cipher, int a, int b) {
        string msg = ""; //Again, inititialized but empty
        
        //These will be needed to find multiplicative inverse of a within our group of integers mod m
        int aInverse = 0, flag = 0;
        
        for (int i = 0; i < 26; i++) {
            flag = (a * i) % 26;
            
            //check to see if a * i mod 26 to 1
            //this will determine if i is the multi-inverse of a
            if (flag == 1)
                aInverse = i;
            
        }
        
        for (int j = 0; j < cipher.length(); j++) {
            if (cipher[j] != ' ') {
                
                //Again, we need to add 'A' (65) in order to make these values equivelent to their ascii vals
                char c = aInverse * (cipher[j] + 'A' -b); //this might be fucked up
                c = c % 26;
                c += 'A';
                msg += c;
            } else
                msg += cipher[j];
        }
        
        return msg;
        
    }
        
    
    
    
    
};
