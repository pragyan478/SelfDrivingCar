#include "blur_factor_improved.hpp"

using namespace std;

vector < vector <float> > blur_factor_improved() {

    // 2D vector reprenting the blur filter
    vector < vector <float> > window;
    window.reserve(3);
    vector <float> row;
    row.reserve(3);

    // calculate blur factors
    static float blurring = .12;
    static float center = 1.0 - blurring;
    static float corner = blurring / 12.0;
    static float adjacent = blurring / 6.0;

    int i, j;
    float val;

    for (j=0; j<3; j++) {
        switch (j) {
            case 0:
                val = corner;
                break;

            case 1:
                val = adjacent;
                break;

            case 2:
                val = corner;
                break;
        }
        row.push_back(val);
    } 
    window.push_back(row);

    row.clear();
    for (j=0; j<3; j++) {
        switch (j) {
            case 0:
                val = adjacent;
                break;

            case 1:
                val = center;
                break;

            case 2:
                val = adjacent;
                break;
        }
        row.push_back(val);
    }
    window.push_back(row);
    row.clear();

    for(j=0 ; j<3 ; j++){
        switch(j) {
            case 0:
                val = corner;
                break;

            case 1:
                val = adjacent;
                break;

            case 2:
                val = corner;
                break;
        }
        row.push_back(val);
    }
    window.push_back(row);
    return window;
}

