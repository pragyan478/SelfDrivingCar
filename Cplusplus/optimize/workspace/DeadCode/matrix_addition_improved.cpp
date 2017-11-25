#include "matrix_addition_improved.h"

using namespace std;

vector < vector <int> > matrix_addition_improved (vector < vector <int> > matrixa, vector < vector <int> > matrixb) {
   
    int row_a = matrixa.size();
    int row_b = matrixb.size();
    int col_a = matrixa[0].size();
    int col_b = matrixb[0].size();
    // if both matrices have the same size, calculate and return the sum
    // otherwise check if the number of rows and columns are not equal and return a matrix of zero
    if (row_a == row_b && col_a == col_b) {
    
        for (int i = 0; i < row_a; i++) {
            for (int j = 0; j < col_a; j++) {
                matrixa[i][j] += matrixb[i][j];
            }
        }
        return matrixa;
    }
    else {
        vector <vector<int> > default_vector(matrixa.size(), vector<int> (matrixa[0].size()));
        return default_vector;
    }
    
}
