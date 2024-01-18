#include <iostream>
#include <stdlib.h>
#include <string>
#include <vector>
#include <math.h>
#include <fstream>
#include <sstream>
#include <algorithm>

using namespace std;

string converter(string current, string change, unsigned long long num){
    string val;
    if(current == "b"){
        unsigned long long int dec = 0 ;
        int exp = 1;
        while(num > 0){
            unsigned long long int temp = num % 10;
            dec = dec + temp*exp;
            exp = exp * 2;
            num = num/10;
        }
        num = dec;
    }

    if(change == "b"){
        unsigned long long int exp = 1;
        while(num > 0){
            unsigned long long int temp = num % 2; //finding each value case for binary
            val = to_string(temp) + val;//finding its position
            exp = exp * 10;//part of positon
            num = num/2;// parsing
        }
        while(val.size()<20){
            val = "0"+val;
        }
        //cout << val << endl;
    }
    else if(change == "d"){
        val = to_string(num);
    }
    else if(change == "h"){
        string dec;
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
        val = dec;
    }
    return val;
}

int main(int argc, char *argv[]){
    int nk;
    int assoc; 
    int blocksize; 
    char *repl;
    int readcntT = 0;
    int writecntT = 0;
    int readcntM = 0;
    int writecntM = 0;

    
    nk = strtol(argv[1], nullptr, 10) * 1024;
    assoc = strtol(argv[2], nullptr, 10);
    //cout << assoc;
    blocksize = strtol(argv[3], nullptr, 10);
    repl = argv[4];
    int set = nk/(blocksize * assoc);
    //cout << set;
    vector<string> A[set];
    ifstream file;
    file.open("401.bzip2-226B.trace.txt");
    while(!file.eof()){
        string temp;
        getline(file, temp);
        stringstream parse(temp);

        string RW; 
        parse >> RW;

        unsigned long long int tempadd; 
        parse >> hex >> tempadd;
        
        string address = converter("d", "b", tempadd);//converts to binary to define addresses easier
        int subhelper = log2(blocksize);
        string indexs = address.substr(address.size()-subhelper-log2(set), log2(set));
        unsigned long long int index = strtol(indexs.data(), nullptr, 2);//index value
        string tag = converter("b", "h", strtol(address.substr(0, address.size()-subhelper+1-log2(set)).data(), nullptr, 10));
        //cout << log2(set) << endl;
        vector<string>::iterator found = find(A[index].begin(), A[index].end(), tag);

        if(RW == "r"){
            if(string(repl) == "l"){

                //cout << "test";
                if(found != A[index].end()){
                    A[index].erase(found);
                }
                else{
                    readcntM++;
                }
                if(A[index].size()>assoc){
                    A[index].erase(A[index].begin());
                }
                A[index].push_back(tag);
                readcntT++;
                
            }
            else{
                cout << repl;
                if(found == A[index].end() && A[index].size() < assoc){
                    A[index].push_back(tag);
                    readcntM++;
                }
                else if(found == A[index].end()){
                    A[index].at(assoc/2) = tag;
                    readcntM++;
                }
                readcntT++;
            }
        }
        else{
            
            if(string(repl) == "l"){
                //cout << "test";
                if(found != A[index].end()){
                    A[index].erase(found);
                }
                else{
                    writecntM++;
                }
                A[index].push_back(tag);
                writecntT++;
                if(A[index].size()>assoc){
                    A[index].erase(A[index].begin());
                }
            }
            else{
                if(found == A[index].end() && A[index].size() < assoc){
                    A[index].push_back(tag);
                    writecntM++;
                }
                else if(found == A[index].end()){
                    A[index].at(assoc/2) = tag;
                    writecntM++;

                }
                writecntT++;
            }
        }
    }
    int tem = (writecntM + readcntM);
    cout << tem << " " << (writecntM * 1.+ readcntM)*100/(writecntT + readcntT)*1. << " "  << readcntM << " " << readcntM * 100/ (readcntT *1.)  << " " << writecntM << " " << writecntM * 100/ (writecntT * 1.) << endl;
    file.close();
}