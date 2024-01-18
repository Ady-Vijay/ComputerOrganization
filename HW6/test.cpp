#include <iostream>
#include <iostream>
#include <stdlib.h>
#include <string>
#include <vector>
#include <math.h>
#include <fstream>
#include <sstream>

using namespace std;

int main(int argc, char* argv[])
{
    stringstream parse("3df4");
    unsigned long long int tempadd; 
    parse >> hex >> tempadd;
    cout << tempadd;
}