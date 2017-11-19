//TODO Practice writing switch statements
// Don't forget an include statement if you want to use std::cout
#include <iostream>
int main() {
    
    // TODO: write a program that outputs whether a vehicle is a motorcycle,
    // 2-door coupe, 4-door car or a 5-door mini-van. 
    // You should create a variable that holds the number of doors in the vehicle
    // A motorcycle would have doors = 0 for example. 
    // Then use a switch statement to output to the terminal the kind of vehicle
    // you have
    int door = 2;
    switch(door) {
        case 0 :
            std::cout << "motorcycle\n";
            break;
        case 2:
            std::cout << "2-door coupe\n";
            break;
        case 4:
            std::cout << "4-door car\n";
            break;
        case 5:
            std::cout << "5-door mini-van\n";
            break;
        default :
            std::cout << "don't know\n";
            break;
    }
    return 0;
}
