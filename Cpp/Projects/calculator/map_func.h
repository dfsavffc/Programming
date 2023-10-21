#ifndef CALCULATOR_MAP_FUNC_H
#define CALCULATOR_MAP_FUNC_H

#include <cmath>
#include <map>
#include "../../lib/std_lib_facilities.h"
#include "const.h"

double sin_calc(double n);

double cos_calc(double n);

double tg_calc(double n);

double ctg_calc(double n);

double lg_calc(double n);

double ln_calc(double n);

double round_num(double n);

using Func = double (*)(double);
extern map<string, Func> func_map;

#endif
