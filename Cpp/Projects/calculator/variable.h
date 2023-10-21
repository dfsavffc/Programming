#ifndef CALCULATOR_VARIABLE_H
#define CALCULATOR_VARIABLE_H

#include "../../lib/std_lib_facilities.h"

class Variable {
public:
    string name;
    double value;
    bool constant;
};

class Symbol_table {
public:
    static double get(string& s);

    static void set(string& s, double d, bool constant);

    static bool is_declared(string& var);

    static double define(string var, double val, bool constant);

    static bool is_const(string& name);

private:
    vector<Variable> var_table;
};

extern Symbol_table st;

#endif
