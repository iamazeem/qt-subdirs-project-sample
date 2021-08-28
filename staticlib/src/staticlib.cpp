#include <iostream>
#include "staticlib.hpp"

staticlib::staticlib()
{
}

void staticlib::print()
{
    std::cout << __func__ << ": Hello World!" << std::endl;
}
