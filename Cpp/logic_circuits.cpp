#include "lib/std_lib_facilities.h"

int main() {
    int x = 3;
    vector<int> v;
    int& y = x;
    v.push_back(y);
    x = 4;
    cout << v[0];
}