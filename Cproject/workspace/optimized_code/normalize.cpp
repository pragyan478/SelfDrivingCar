#include "headers/normalize.h"
using namespace std;

// OPTIMIZATION: Pass variable by reference
vector< vector<float> > normalize(vector< vector <float> > &grid) {

  	// OPTIMIZATION: Avoid declaring and defining 				
    // intermediate variables that are not needed.
	static float total = 0.0;
	static int i, j;
	static float oldProb;
    static int height = grid.size();
    static int width = grid[0].size();
	for (i = 0; i < height; i++)
	{
		for (j=0; j< width; j++)
		{
			oldProb = grid[i][j];
			total += oldProb;
		}
	}
	vector< vector<float> > newGrid;
    newGrid.reserve(height);
    vector <float> newRow;
    newRow.reserve(width);
	for (i = 0; i < height; i++) {
		newRow.clear();
		for (j=0; j< width; j++) {
			newRow.push_back(grid[i][j] / total);
		}
		newGrid.push_back(newRow);
	}

	return newGrid;
}
