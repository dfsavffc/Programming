#include "elements.h"
void Scheme::reading_scheme() {
    string name, type, input;
    char inp_sym;
    ifstream ist{"scheme.txt"};
    string str;
    while (getline(ist, str)) {
        Element e;
        stringstream ss(str);
        ss >> name;
        ss >> type;
        if (type == "on")
            e = {"src", 1};
        if (type == "of")
            e = {"src", 1};
        ss >> inp_sym;
        if (ss){
            while (ss >> input)
                e.input_sources.push_back(input);
        }
        map_elements[name] = e;
    }
}



bool Scheme::or_signal(const std::string &name) {
    bool output;
    Element e = map_elements[name];
    if (e.value != -1)
        return e.value;
    output = signal(map_elements);
    for (int i = 1; i < e.input_sources.size(); ++i) {
        output = output or !signal(*(e.input_sources[i]));
    }
}

bool and_signal(Element &e) {
    bool output;
    if (e.value != -1)
        return e.value;
    if (!e.input_inverted) {
        output = signal(*(e.input_sources[0]));
        for (int i = 1; i < e.input_sources.size(); ++i) {
            output = output and signal(*(e.input_sources[i]));
        }
    }
    else {
        output = !signal(*(e.input_sources[0]));
        for (int i = 1; i < e.input_sources.size(); ++i) {
            output = output and !signal(*(e.input_sources[i]));
        }
    }
    return output;
}

bool Scheme::signal(const string& name) {
    Element e = map_elements[name];
    if (e.type == "src")
        return e.value;
    else if (e.type == "or")
        return or_signal(name);
    else if (e.type == "and")
        return and_signal(name);
}