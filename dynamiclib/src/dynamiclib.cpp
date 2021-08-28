#include <iostream>
#include "dynamiclib.hpp"

dynamiclib::dynamiclib()
{
}

void dynamiclib::print()
{
    std::cout << __func__ << ": Hello World!" << std::endl;
}
