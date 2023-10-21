#include "elements.h"
#include "elements_declare.h"


//Element& operator >> (Element& e1, Element& e2)
//{
//    e2.input_sources.push_back(&e1);
//    return e2;
//}
//Element& operator ~ (Element& e)
//{
//    e.input_inverted = !e.input_inverted;
//    return e;
//}


istream& operator >> (istream& is, Scheme& s) {
    reading_scheme(s.map_elements);
}

int main() {
    // src1 --> or1 --> and1
    // src2 ----^--------^
}