#include <iostream>
#include <vector>

using namespace std;

int main() {

    vector<float> example;
    
    //Here is a program that initializes a vector and then uses a for loop to
    //populate the vector with values. Then another for loop reads out the vector values.
    for (int i = 0; i < 5; i++) {
        example.push_back(i*5.231);
    }

    for (int i = 0; i < example.size(); i++) {
        cout << example[i] << endl;
    }


    // assign 5 floats with value 10
    example.assign(5,10.0);

    // print out the vector
    for (int i = 0; i < example.size(); i++) {
        cout << example[i] << endl;
    }

    // blank line outputted to terminal
    cout << endl;

    //multiply each value in the vector by 20
    for (int i = 0; i < example.size(); i++) {
        example[i] = 20 * example[i];
    }

    // print out the vector
    for (int i = 0; i < example.size(); i++) {
        cout << example[i] << endl;
    }


    return 0;
}
