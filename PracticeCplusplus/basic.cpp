// include all libraries needed

#include <iostream>
#include <math.h>

/* 	
*	These are C++ comments. There are two ways to write comments in C++.
*	Using the slash with an asterisk is one way.
*/ 

// Here is another way to write comments in C++

/* In general, C++ code is run from a file called main.cpp
* The implementation goes into a function called main().
* The main() function almost always returns a zero, which provides evidence that 
* the program ran to its end.
*/

// define main function
int main() {
    
    int integer_one;
    integer_one = 5;
    
    // TODO: Define a variable called integer_two and assign a value of 9.
    int integer_two = 9;
    
    // TODO: Calculate the sum of integer_one and integer_two 
    // and assign the result to integer_sum
    int integer_sum;
    integer_sum = integer_one + integer_two;
    
    // outputs the results to standard out
    std::cout << integer_sum << '\n';
    
    // TODO: define two floating point numbers. Assign 12.07 to the
    // first floating point number. Assign 65.102 to the 
    // second floating point number.
    
    float float_one = 12.07;
    float float_two = 65.102;
    // TODO: Calculate the sum of the two floating point variables into
    // the float_sum variable.
    
    float float_sum; 
    float_sum = float_one + float_two;

    std::cout << float_sum << std::endl;
    
    // TODO: Calculate difference between the second and first number
    // output the results to cout. 
    std::cout << fabs(float_one - float_two) << std::endl;
    
    // TODO: Calculate second_float / first_float and output the results
    // to cout.
    std::cout << float_two/float_one << std::endl;
    
    // TODO: Calculate the product of the two numbers and output the results
    // to cout.
    std::cout << float_one*float_two << std::endl;

    return 0;
}

