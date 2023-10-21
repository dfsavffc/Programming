/*
    Программа иммитирует математическую игру Ним.
    Человек будете играть против очень опасного противника - компьютера, он знает оптимальную стратегию и умело ей пользуется.
    Порядок корректного ввода описывается после начала игры.
    С правилами игры и оптимальной стратегией можно ознакомиться на сайте - https://ru.wikipedia.org/wiki/Ним_(игра)
*/

#include "../../lib/std_lib_facilities.h"


// Объявление функций и переменных
void player_step(vector <int> & stack);
bool game_continue = true;


// Функция, отвечающая за выбор режима игры:
vector<int> game_mode() {
    cout << "Выберите режим игры:\n";
    cout << "'1' - Игровое поле размером (3-4-5)\n";
    cout << "'2' - Игровое поле размером (4-5-6)\n";
    cout << "'3' - Игровое поле размером (3-4-5-6)\n";
    string answer = "";
    while (true) {
        getline(cin, answer);
        if (!cin) {
            throw runtime_error("Игра успешно завершилась");
        }
        if (answer == "1")
            return {3, 4, 5};
        else if (answer == "2")
            return {4, 5, 6};
        else if (answer == "3")
            return {3, 4, 5, 6};
        cout << "Такого варинта нет, попробуйе снова\n";
    }
}

// Функция, отвечающая за начало новой игры
void new_game() {
    while (true) {
        string answer;
        cout << "Начать новую игру? Да / Нет\n";
        getline(cin, answer);
        if (!cin) {
            throw runtime_error("Игра успешно завершилась");
        }
        if (answer == "Да" || answer == "да") {
            break;
        }
        else if (answer == "Нет" || answer == "нет") {
            cout << "Хорошего дня!\n";
            game_continue = false;
            break;
        }
        else {
            cout << "Такого вариант нет, попробуйте снова\n";
        }
    }
}


// Функция, проверяющая закончилась ли игра
bool check_game_over(vector <int> & stack) {
    for (int i = 0; i < stack.size(); ++i) {
        if (stack[i] > 0) {
            return false;
        }
    }
    return true;
}


// Функция, генерирующая один ряд игрового поля
string make_one_row(int i) {
    string row = "";
    for (int j = 0; j < i; ++j) {
        row += "* ";
    }
    return row;
}


// Функция, выводящая все ряды текущего игрового поля
void output_game_status(vector <int> & stack) {
    for (int i = 1; i <= stack.size(); ++i) {
        cout << i << " - " << make_one_row(stack[i-1]) <<"\n";
    }
}


// Функция, отвчающая за ход компьтера
void pc_step(vector <int> & stack) {
    bool found_best_step = false;
    for (int i = 0; i < stack.size(); ++i) {
        if (stack[i] > 0 && !found_best_step) {
            for (int j = 1; j <= stack[i]; ++j) {
                vector<int> stack_copy = stack;
                stack_copy[i] -= j;
                int XOR = stack_copy[0]^stack_copy[1];
                for (int k = 2; k < stack_copy.size(); ++k) {
                    XOR ^= stack_copy[k];
                }
                if (XOR == 0) {
                    found_best_step = true;
                    cout << "Компьютер сделал ход (⌐■_■)\n";
                    stack[i] -= j;
                    if (check_game_over(stack)) {
                        output_game_status(stack);
                        cout << "<<< >>>\n\n";
                        cout << "Игра окончена. Победил компьютер -_- \n\n";
                        new_game();
                        break;
                    }
                    else {
                        output_game_status(stack);
                        cout << "<<< >>>\n\n";
                        player_step(stack);
                        break;
                    }
                }
            }
        }
    }
    if (!found_best_step) {
        for (int i = 0; i < stack.size(); ++i) {
            if (stack[i] > 0) {
                cout << "Компьютер сделал ход 凸(-_-)凸\n";
                stack[i] -= 1;
                output_game_status(stack);
                cout << "<<< >>>\n\n";
                player_step(stack);
                break;
            }
        }
    }
}


// Функция, преобразуюащя входящую строку в массив с введенными числами. Если ввод некорректен - вернет {-1}
vector<int> convert_stoi_stack(string str_input) {
    vector <int> num_stack;
    string num = "";
    for (int i = 0; i < str_input.size(); ++i) {
        if (isdigit(str_input[i])) {
            num += str_input[i];
        }
        if ((str_input[i] == ' ' || i == str_input.size()-1 ) && !num.empty()) {
            num_stack.push_back(stoi(num));
            num = "";
        }
        if (str_input[i] != ' ' && !isdigit(str_input[i])) {
            num_stack.clear();
            num_stack = {-1};
            return num_stack;
        }
    }
    return num_stack;
}


// Функция. отвечающая за ход игрока
void player_step(vector <int> & stack) {
    int count_cheap, row_num;
    string str;
    while (true) {
        cout << "Ваш ход (• ◡•)\n";
        cout << "Введите через пробел номер ряда и кол-во фишек, которое вы хотите убрать: \n";
        getline(cin, str);
        if (!cin) {
            throw runtime_error("Игра успешно завершилась");
        }
        vector<int> player_input_nums = convert_stoi_stack(str);
        // Проверяем колличество и тип введенных данных на корректность
        if (player_input_nums.size() == 2) {
            count_cheap = player_input_nums[1];
            row_num = player_input_nums[0];
            // Проверяем значение введенных данных на корректность
            if (row_num <= stack.size() && row_num >= 1 && count_cheap <= stack[row_num - 1] &&count_cheap > 0) {
                stack[row_num - 1] -= count_cheap;
                cout << "Принято\n";
                break;
            }
        }
        else {
            cout << "Некорректный ход, попробуйте снова\n";
            cout << "<<< >>>\n";
        }
    }
    if (check_game_over(stack)) {
        output_game_status(stack);
        cout << "<<< >>>\n\n";
        cout << "Игра окончена. Вы победили! \n\n";
        new_game();

    } else {
        output_game_status(stack);
        cout << "<<< >>>\n";
        pc_step(stack);
    }
}


int main() {
    try {
        while (game_continue) {
            vector <int> nim = game_mode();
            cout << "\e[1mИгра  nim  начинается: \e\n";
            output_game_status(nim);
            cout << "<<< >>>\n";
            player_step(nim);
        }
    }
    catch(exception & e) {
        cerr << e.what();
        return 0;
    }
}