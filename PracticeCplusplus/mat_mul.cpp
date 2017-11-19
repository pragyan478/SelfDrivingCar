/*
Write a C++ function that takes in two matrices 
and outputs their product. Your function should 
first check that the two matrices can actually be 
multiplied together; if matrix one is m by n and 
matrix two is w by z, then n must equal w. 
And the resulting matrix will be m by z.i
*/
#include <iostream>
#include <vector>

using namespace std;

int mat_mult(vector< vector<float> > mat1, vector< vector<float> > mat2);
int main(void)
{   
    vector< vector<float> > mat1 (4, vector<float> (3, 0.2));
    vector< vector<float> > mat2 (3, vector<float> (2, 0.4));
    
    mat_mult(mat1, mat2);
    mat_mult(mat1, mat1);

    return 0;
}

int mat_mult(vector< vector<float> > mat1, vector< vector<float> > mat2)
{
    int i, j, k;
    float sum=0.0;
    int a = mat1.size();
    int b = mat2[0].size();
    vector< vector <float> > result (a, vector<float> (b, 0.0));
    if(mat1[0].size() != mat2.size()){
        cout << "ERROR! unble to multiply\n";
        return 0;
    }
    for (i=0 ; i<mat1.size() ; i++){
        for (j=0 ; j<mat2[0].size() ; j++){
            sum = 0;
            for(k=0 ; k<mat2.size() ; k++){
                sum += mat1[i][k] * mat2[k][j];
            result[i][j] = sum;
            }
        }
    }
    for (i=0 ; i<result.size() ; i++){
        for(j=0 ; j<result[0].size() ; j++){
            cout << result[i][j] << "  ";
        }
        cout << endl;
    }
    
    return 0;
    
}
