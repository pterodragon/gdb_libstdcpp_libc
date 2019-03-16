#include <sstream>
#include <string>
#include <iostream>

using namespace std;

int main() {
    string input{"hello\nabcdef"};
    istringstream iss{input};
    string out;
    iss >> out;
    cout << out << '\n';
}
