#include "variable.h"

// Функция, возвращающая значение переменной по ее имени
double Symbol_table::get(string& s) {
    for (const Variable &v: st.var_table) {
        if (v.name == s)
            return v.value;
    }
    error("Ошибка: переменная не определена", s);
}

// Функция, проверяющая константность переменной
bool Symbol_table::is_const(string& name) {
    for (Variable &v: st.var_table) {
        if (v.name == name && v.constant)
            return true;
    }
    return false;
}

// Функция, перезаписывающая значение переменной
void Symbol_table::set(string& s, double d, bool constant) {
    for (Variable &v: st.var_table) {
        if (v.name == s) {
            if (!v.constant && !constant) {
                v.value = d;
                return;
            } else if (!v.constant && constant) {
                v.value = d;
                v.constant = true;
                return;
            } else
                error("Ошибка: переменную нельзя изменить");
        }
    }
    error("Ошибка: переменная не определена");
}

// Функция, проверяющая, объявлена ли переменная
bool Symbol_table::is_declared(string& var) {
    for (const Variable &v: st.var_table) {
        if (v.name == var)
            return true;
    }
    return false;
}

// Функция, добавляющая переменную в массив данных
double Symbol_table::define(string var, double val, bool constant) {
    if (st.is_declared(var))
        st.set(var, val, constant);
    st.var_table.push_back(Variable{var, val, constant});
    return val;
}

Symbol_table st;