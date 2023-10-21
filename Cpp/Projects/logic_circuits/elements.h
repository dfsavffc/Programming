#ifndef LOGIC_CIRCUITS_ELEMENTS_H
#define LOGIC_CIRCUITS_ELEMENTS_H
#include <string>
#include <iostream>
#include <vector>
#include <map>
#include <string>
#include <sstream>
#include <fstream>
using namespace std;

class Element {
public:
    string type;
    int value = -1;
    bool input_inverted = false;
};

class Scheme {
    bool signal(const string& name);
    bool and_signal(const string& name);
    bool or_signal(const string& name);
private:
    map<string, Element> map_elements;
    void reading_scheme();
    friend istream& operator >> (istream & is, Scheme& s);
};
bool signal(Element& e);
bool or_signal(Element& e);
bool and_signal(Element& e);

/*
int main() {
    int x = 3;
    vector<int*> v;
    int* y = &x;
    v.push_back(y);
    x = 4;
    cout << *v[0];
}
 */

#endif
