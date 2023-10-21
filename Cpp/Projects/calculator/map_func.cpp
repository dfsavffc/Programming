#include "map_func.h"

double round_num(double n) {
    return round(n * big_number) / big_number;
}

double sin_calc(double n) {
    return round_num(sin(n));
}

double cos_calc(double n) {
    return round_num(cos(n));
}

double tg_calc(double n) {
    double res = round_num(cos(n));
    if (res != 0) {
        return round_num(sin(n)) / res;
    }
    error("Ошбика: тангенс не определен");
}

double ctg_calc(double n) {
    double res = round_num(sin(n));
    if (res != 0) {
        return round_num(cos(n)) / res;
    }
    error("Ошибка: котангенс не определен");
}

double lg_calc(double n) {
    if (n > 0)
        return log10(n);
    error("Ошибка: логарифм отрицательного числа");
}

double ln_calc(double n) {
    if (n > 0)
        return round_num(log(n));
    error("Ошибка: логарифм отрицательного числа");
}

using Func = double (*)(double);
map<string, Func> func_map{
        {"sin", sin_calc},
        {"cos", cos_calc},
        {"tg",  tg_calc},
        {"ctg", ctg_calc},
        {"ln",  ln_calc},
        {"lg",  lg_calc}
};