#include <iostream>
#include <stdlib.h>

using namespace std;

int main(){
    string current;
    cin >> current;

    string change;
    cin >> change;

    int num; 
    if(current == "h"){
        cin  >> hex >> num;
        string dec; //storing unit
        int temporary = num; //temp variable to not change num which we need
        while(temporary > 0){
            int temp = temporary % 16;//19 to 27 converts the numbers from decimal to hex
            if(temp < 10){
                dec = char(temp+48) + dec;//adding 48 to change it into a char that goes into a string
            }
            else{
                dec = char(temp + 55) + dec;//adding 55 to change it into a char that goes into a string
            }
            temporary = temporary/16;//parsing
        }
        cout << "hexadecimal " << dec;

    }
    else{
        cin >> num;
    }
    if ( current == "d"){
        cout << "decimal " << num;
    }

    

    if(current == "b"){
        cout << "binary " << num;
        int dec = 0 ;
        int exp = 1;
        while(num > 0){
            int temp = num % 10;
            dec = dec + temp*exp;
            exp = exp * 2;
            num = num/10;
        }
        num = dec;
    }

    if(change == "b"){
        int dec = 0 ;
        int exp = 1;
        while(num > 0){
            int temp = num % 2; //finding each value case for binary
            dec = dec + temp*exp;//finding its position
            exp = exp * 10;//part of positon
            num = num/2;// parsing
        }
        num = dec;
        cout << " is binary " << num << endl;
    }
    else if(change == "d"){
        cout << " is decimal " << num << endl;
    }
    else if(change == "h"){
        string dec;
        int exp = 1;
        while(num > 0){
            int temp = num % 16;
            if(temp < 10){
                dec = char(temp+48) + dec;
            }
            else{
                dec = char(temp + 55) + dec;
            }
            num = num/16;
        }
        cout << " is hexadecimal " << dec << endl;
    }
    else{
        cout << "Usage: ./hex [ h | d | b ] [ h | d | b]" << endl;
    }
}
 