#include "calculating.h"
#include "token.h"
#include "const.h"
#include "variable.h"
#include "map_func.h"



// Функция, выводящая руководство по использованию калькуятора

double processing_variable(Token& t) {
    Token tt = ts.get();
    // Переопределяем переменную, если она не константа
    if (st.is_declared(t.name) && !st.is_const(t.name) && tt.kind == '=') {
        cin.putback(tt.kind);
        ts.putback(t);
        return declaration(false);
    }
    // Выводим ошибку, если пытаются изменить константу
    if (st.is_declared(t.name) && st.is_const(t.name) && tt.kind == '=') {
        cin.putback(tt.kind);
        error("Ошибка: переменную нельзя изменить");
    }
    // Возвращаем значение переменной
    if (st.is_declared(t.name)) {
        cin.putback(tt.kind);
        ts.putback(t);
        return fourth_order_expression();
    }
    cin.putback(tt.kind);
    error("Ошибка: переменная не объявлена");
}

void print_help() {
    cout << "Операции, с которыми работает калькулятор - \n";
    cout << "   1. Стандартные арифметически операции:\n";
    cout << "      +  -  *  /  ()  |x|\n";
    cout << "   2. Нестандартные арифметически операции:\n";
    cout << "      %(остаток от деления)  ^(возведение в степень)  !(факториал числа)  &(исключающее или)\n";
    cout << "   3. Триганометрические функции:\n";
    cout << "      sin()  cos()  tg()  ctg()\n";
    cout << "   4. Логарифмические функции:\n";
    cout << "      ln()  lg()\n";
    cout << "Работа с переменными и константами - \n";
    cout << "   let name = 2     -  Создать переменную с именем 'name' и значением '2'\n";
    cout << "   name = 3         -  Присвоить переменной с именем 'name' значение '3'\n";
    cout << "   const name = 4   -  Создать константу с именем 'name' и значением '4'\n";
    cout << "Общие правила ввода выражений - \n";
    cout << "   1. Чтобы вычислить некоторое выражение, введите его и нажмите Enter\n";
    cout << "   2. Чтобы вычислить несколько выражений подряд, введите их в одну строчку, разделяя символом ';'\n";
    cout
            << "   3. Введя переменную или константу, вы можете взимодействовать с ней, как с обычным числом, обращаясь по ее имени\n\n";
    cout << prompt;
}

// Функция, вычисляющая факториал
double factorial(int x) {
    int f = 1;
    for (int i = 0; i < x; ++i) {
        f *= x - i;
    }
    return f;
}

// Функция, объявляющая переменную
double declaration(bool constant) {
    Token t = ts.get();
    if (t.kind != name)
        error("Ошибка: ожидается имя переменной");
    string var_name = t.name;
    Token t2 = ts.get();
    if (t2.kind != '=') {
        cin.putback(t2.kind);
        error("Ошибка: пропущен символ = в объявлении переменной", var_name);
    }
    double d = fourth_order_expression();
    st.define(var_name, d, constant);
    return d;
}

/// Функция, определяющая с каким видом выражения столкнулся калькулятор
double statement() {
    Token t = ts.get();
    switch (t.kind) {
        case name:
            return processing_variable(t);
        case let:
            return declaration(false);
        case clet:
            return declaration(true);
        default:
            ts.putback(t);
            return fourth_order_expression();
    }
}

// Функция вычисляющая выражения первого порядка
double first_order_expression() {
    Token t = ts.get();
    switch (t.kind) {
        case '(': {
            double d = fourth_order_expression();
            t = ts.get();
            if (t.kind != ')') {
                error("Ошибка: некорректное выражение");
            }
            return d;
        }
        case '|': {
            double ab = fourth_order_expression();
            t = ts.get();
            if (t.kind != '|')
                error("Ошибка: некорректное выражение");
            return abs(ab);
        }
        case func:
            return func_map[t.name](first_order_expression());
        case name:
            return st.get(t.name);
        case number:
            return t.value;
        case '-':
            return -first_order_expression();
        default:
            ts.putback(t);
            error("Ошибка: некорректное выражение");
    }
}

// Функция вычисляющая выражения второго порядка
double second_order_expression() {
    double left = first_order_expression();
    Token t = ts.get();
    while (true) {
        switch (t.kind) {
            case '^': {
                double d = first_order_expression();
                if (left == 0 && d == 0)
                    error("Ошибка: возведение 0 в нулевую степень");
                left = pow(left, d);
                if (left != left)
                    error("Ошибка: извлечение корня четной степени из отрицательного числа");
                t = ts.get();
                break;
            }
            case '!': {
                if (left == int(left) && left >= 0) {
                    left = factorial(int(left));
                    t = ts.get();
                    break;
                }
                error("Ошибка: факториал от ненатурального числа");
            }
            default:
                ts.putback(t);
                return left;
        }
    }
}

// Функция вычисляющая выражения третьего порядка
double third_order_expression() {
    double left = second_order_expression();
    Token t = ts.get();
    while (true) {
        switch (t.kind) {
            case '*':
                left *= second_order_expression();
                t = ts.get();
                break;
            case XOR_symbol: {
                double x = second_order_expression();
                if (int(x) != x || int(left) != left)
                    error("Ошибка: XOR от нецелого числа");
                left = int(left) ^ int(x);
                t = ts.get();
                break;
            }
            case '(':
                cin.putback('(');
                left *= second_order_expression();
                t = ts.get();
                break;
            case '/': {
                double d = second_order_expression();
                if (d == 0) {
                    error("Ошибка: деление на нуль");
                }
                left /= d;
                t = ts.get();
                break;
            }
            case '%': {
                double d = second_order_expression();
                if (d == 0) {
                    error("Ошбика: деление на нуль");
                }
                left = fmod(left, d);
                t = ts.get();
                break;
            }
            default:
                ts.putback(t);
                return left;
        }
    }
}

// Функция вычисляющая выражения четвертого порядка
double fourth_order_expression() {
    double left = third_order_expression();
    Token t = ts.get();
    while (true) {
        switch (t.kind) {
            case '+':
                left += third_order_expression();
                t = ts.get();
                break;
            case '-':
                left -= third_order_expression();
                t = ts.get();
                break;
            case number:
                ts.putback(t);
                error("Ошибка: некорректное выражение");
            default:
                ts.putback(t);
                return left;
        }
    }
}

// Функция, удаляющая из потока ввода текущее выражение
void clean_up_mess() {
    ts.ignore(print_word);
}

// Функция вычисляющая выражения
void calculate() {
    cout << prompt;
    while (cin) {
        try {
            Token t = ts.get();
            while (t.kind == enter_word or t.kind == print_word) {
                if (t.kind == enter_word)
                    cout << prompt;
                t = ts.get();
            }
            if (t.kind == quit) {
                keep_window_open();
                return;
            }
            if (t.kind == help) {
                print_help();
            } else {
                ts.putback(t);
                double res = statement();
                cout << result << res << "\n";
            }
        }
        catch (exception &e) {
            cerr << e.what() << "\n";
            clean_up_mess();
        }
    }
}