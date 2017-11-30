#include "headers/initialize_beliefs.h"

using namespace std;

// OPTIMIZATION: pass large variables by reference
vector< vector <float> > initialize_beliefs(vector< vector <char> > &grid) {

    // OPTIMIZATION: Which of these variables are necessary?
    // OPTIMIZATION: Reserve space in memory for vectors
    vector< vector <float> > newGrid;
    vector<float> newRow;
    static int i, j, height, width;
    static float total, prob_per_cell;

    height = grid.size();
    width = grid[0].size();

    prob_per_cell = 1.0 / ( (float) height*width) ;

    // OPTIMIZATION: Is there a way to get the same results 	
    // without nested for loops?
    for (j=0; j<grid[0].size(); j++) {
        newRow.push_back(prob_per_cell);
    }
    for (i=0; i<grid.size(); i++) {
        newGrid.push_back(newRow);
    }
    return newGrid;
}
