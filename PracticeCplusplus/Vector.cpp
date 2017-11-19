#include <iostream>
#include <vector>

using namespace std;

int main() {

    vector<float> example;
    /*part 1*/
    //Here is a program that initializes a vector and then uses a for loop to
    //populate the vector with values. Then another for loop reads out the vector values.
    for (int i = 0; i < 5; i++) {
        example.push_back(i*5.231);
    }

    for (int i = 0; i < example.size(); i++) {
        cout << example[i] << endl;
    }

    /*part2*/
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
    
    
    /*part 3*/
    vector<int> exampleone (5);
    vector<int> exampletwo (5);
    vector<int> examplesum (5);

    exampleone[0] = 2;
    exampleone[1] = 6;
    exampleone[2] = 25;
    exampleone[3] = 1;
    exampleone[4] = 18;

    exampletwo[0] = 3;
    exampletwo[1] = 19;
    exampletwo[2] = 8;
    exampletwo[3] = 12;
    exampletwo[4] = 191;

    cout << "vector one ";

    // print out the first vector
    for (int i = 0; i < exampleone.size(); i++) {
        cout << exampleone[i] << " ";
    }

    // create a new line in the terminal
    cout << endl;

    cout << "vector two ";

    // print out the second vector
    for (int i = 0; i < exampletwo.size(); i++) {
        cout << exampletwo[i] << " ";
    }

    // create a new line in the terminal
    cout << endl;

    cout << "vector sum ";

    //add the vectors together
    for (int i = 0; i < exampleone.size(); i++) {
        examplesum[i] = exampleone[i] + exampletwo[i];
    }

    // print out the vector
    for (int i = 0; i < examplesum.size(); i++) {
        cout << examplesum[i] << " ";
    }

    // create a new line in the terminal
    cout << endl;

    
    /*part 4*/
    //Assigning Vector Values Using an Array
    // declare array and assign values
    static const float array1[] = {17.0, 10.0, 31.0, 5.0, 7.0};

    // declare vector and assign values from the array
    vector<float> vector1 (array1, array1 + sizeof(array1) / sizeof(array1[0]));

    // print out the vector
    for (int i = 0; i < vector1.size(); i++) {
        cout << vector1[i] << " ";
    }

    return 0;
}
