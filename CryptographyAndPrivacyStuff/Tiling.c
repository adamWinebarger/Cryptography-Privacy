

int findLargestSquareTile(int length, int width) {

if (length == width)
    return length;

if (length > width) {
    int temporary = length;
    length = width;
    width = temporary;
}

int a = width, b = length, q = a / b, r = a % b;

while (r != 0) {

    a -= b;

    if (b > a) {
        int temp = b;
        b = a;
        a = temp;
    }

    q = a / b; //This might not even be necessary
    r = a % b;
}

return b;

}
