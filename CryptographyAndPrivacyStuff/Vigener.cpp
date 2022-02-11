#include <cstring>
#include <iostream>

using namespace std;

int char2Int(char c);


string vEncode(string pT, string key) {
        char pTarr[pT.size()];

        strcpy(pTarr, pT.c_str());

        int ptBytes[pT.size()];

        for (int i = 0; i < pT.size(); i++) {
            ptBytes[i] = (int)pTarr[i];
            ptBytes[i] -= 65;
            cout << ptBytes[i] << endl;
        }

        return "";
}

int char2Int(char c) {
    int i = (int) c;

    if (i >= 65 && i <= 90)
    return i - 65;



    if (i >= 97 && i <= 122)
        return i - 97;

    return 95;
}
