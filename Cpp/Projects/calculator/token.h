#ifndef CALCULATOR_TOKEN_H
#define CALCULATOR_TOKEN_H

#include "../../lib/std_lib_facilities.h"

string strip(string s);

bool is_func(string& s);

class Token {
public:
    char kind{};
    double value{};
    string name;

    explicit Token(char ch) : kind{ch} {}

    Token(char ch, double val) : kind{ch}, value{val} {}

    Token(char ch, string s) : kind{ch}, name{s} {}
};

class Token_stream {
public:
    Token_stream();

    Token get();

    void putback(Token& t);

    void ignore(char c);

private:
    bool full{false};
    Token buffer;
};

extern Token_stream ts;

#endif
