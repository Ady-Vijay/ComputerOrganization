#include <iostream>
#include <limits.h>

int is_little_endian(void){//2.58
    int x = 1;//the bit value that should store in the lowest spot
    return (int) (* (char *) &x); // calls for the bit value in the lowest spot in little endian and highest in big endian
}

int lsfx(int a, int b){//2.59

    return (a & 0xFF) | (b & ~0xFF); //takes all the bits other than those that overlap with the last 2 of y and the last 2 bits of x

}

int tsub_ovf(int x, int y){//2.74
    if((x & INT_MIN) && !(y & INT_MIN) && !((x-y) & INT_MIN)){//checks for positive overflow
        return 0;
    }
    else if(!(x & INT_MIN) && (y & INT_MIN) && ((x-y) & INT_MIN)){//checks for negative overflow
        return 0;
    }
    else{
        return 1;
    }
}




int main(void){
    int i = is_little_endian();
    std::cout << (i);

    int k = 0x12345678;
    int j = 0xABCDEF12;
    int ans = lsfx(k, j);
    printf("%X\n", ans);

    int a = -10000000000;
    int b = 1000000000;

    std::cout << tsub_ovf(a,b) << std::endl;
    std::cout << ~INT_MIN + ~1100 + 1;
    std:: cout << ~(INT_MIN + 1100);
}