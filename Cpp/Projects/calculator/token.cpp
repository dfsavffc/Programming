#include "token.h"
#include "const.h"
#include "map_func.h"
// Функция, удаляющая пробелы в конце строки
string strip(string s) {
    while (isspace(s.back())) {
        s.pop_back();
    }
    return s;
}

// Функция, проверяющая является ли строка какой-либо функцией
bool is_func(string& s) {
    if (func_map.count(s) > 0)
        return true;
    return false;
}

Token_stream::Token_stream() : buffer{0} {}

// Функция убирающая из потока ввода символы до символа 'c' или Enter
void Token_stream::ignore(char c) {
    if (full && c == buffer.kind) {
        full = false;
        return;
    }
    full = false;
    char ch = 0;
    while (cin.get(ch)) {
        if (ch == c)
            return;
        else if (ch == enter_word) {
            cin.putback(ch);
            return;
        }
    }
}

// Функция, заполняющая буфер токеном
void Token_stream::putback(Token& t) {
    if (full)
        error("Ошибка: буфер заполнен");
    else if (t.kind != enter_word) {
        buffer = t;
        full = true;
    } else
        cin.putback(t.kind);
}

// Функция, считывающая и возвращающая токен
Token Token_stream::get() {
    if (full) {
        full = false;
        return buffer;
    }
    char ch{};
    cin.get(ch);
    while (cin && ch == ' ') {
        cin.get(ch);
    }
    if (not cin) {
        return Token(quit);
    }
    switch (ch) {
        case print_word:
        case '(':
        case ')':
        case '|':
        case '+':
        case '-':
        case '*':
        case '%':
        case '=':
        case '^':
        case '!':
        case XOR_symbol:
        case '/':
        case enter_word:
            return Token{ch};
        case '.':
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9': {
            cin.putback(ch);
            double val{};
            cin >> val;
            return Token{number, val};
        }
        case '$': {
            string s;
            while (cin.get(ch) && ch != print_word && ch != enter_word) {
                s += ch;
            }
            s = strip(s);
            cin.putback(ch);
            if (s == help_word)
                return Token(help);
            if (s == quit_word)
                return Token(quit);
            error("Ошибка: неизвестная команда");
        }

        default:
            if (isalpha(ch)) {
                string s;
                s += ch;
                while (cin.get(ch) && (isalpha(ch) || isdigit(ch) || ch == '_')) {
                    s += ch;
                }
                cin.putback(ch);
                if (is_func(s)) {
                    return Token{func, s};
                }
                if (s == let_word)
                    return Token{let};
                if (s == const_word)
                    return Token(clet);
                return Token{name, s};
            }
            error("Ошибка: некорректное выражение");
    }
}

Token_stream ts;

