#include "headers/blur.h"
#include "headers/zeros.h"

using namespace std;

// OPTIMIZATION: Pass large variable by reference
vector < vector <float> > blur(vector < vector < float> > &grid, float blurring) {

	// OPTIMIZATION: window, DX and  DY variables have the 
    // same value each time the function is run.
  	// It's very inefficient to recalculate the vectors
    // every time the function runs. 
    // 
    // The const and/or static operator could be useful.
  	// Define and declare window, DX, and DY using the
    // bracket syntax: vector<int> foo = {1, 2, 3, 4} 
    // instead of calculating these vectors with for loops 
    // and push back
	vector < vector <float> > newGrid;
	vector <float> row;
	vector <float> newRow;

	static int height;
	static int width;
	static float center, corner, adjacent;

	height = grid.size();
	width = grid[0].size();

	center = 1.0 - blurring;
	corner = blurring / 12.0;
	adjacent = blurring / 6.0;

  	vector < vector <float> > window = {
                {corner, adjacent, corner},
                {adjacent, center, adjacent},
                {corner, adjacent, corner} };
	
    static int i, j;


	vector <int> DX = {-1, 0, 1};
	vector <int> DY = {-1, 0, 1};

	static int dx, dy, ii, jj, new_i, new_j;
	static float multiplier, newVal;

	// OPTIMIZATION: Use your improved zeros function
    newGrid = zeros(height, width);

	for (i=0; i< height; i++ ) {
		for (j=0; j<width; j++ ) {
			newVal = grid[i][j];
			for (ii=0; ii<3; ii++) {
				dy = DY[ii];
				for (jj=0; jj<3; jj++) {
					dx = DX[jj];
					new_i = (i + dy + height) % height;
					new_j = (j + dx + width) % width;
					multiplier = window[ii][jj];
					newGrid[new_i][new_j] += newVal * multiplier;
				}
			}
		}
	}

	return newGrid;
}
