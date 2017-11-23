#include "matrix.h"

Matrix::Matrix() {
    std::vector <std:: vector <float> > initial_grid (10, std::vector <float>(5, 0.5));
    grid = initial_grid;
    rows = initial_grid.size();
    cols = initial_grid[0].size();

}

Matrix::Matrix(std::vector <std:: vector <float> > initial_grid) {
    grid = initial_grid;
    rows = initial_grid.size();
    cols = initial_grid[0].size();
}


void Matrix::setGrid(std::vector< std::vector<float> > new_grid) {
    grid = new_grid;
    rows = new_grid.size();
    cols = new_grid[0].size();
}

std::vector< std::vector<float> > Matrix::getGrid() {
    return grid;
}

std::vector<int>::size_type Matrix::getRows() {
    return rows;
}

std::vector<int>::size_type Matrix::getCols() {
    return cols;
}

/* TODO: Define a matrix_addition function
**   INPUT: a matrix
**   OUPUT: the sum of the grid variable and the input matrix
**
** STEPS:
**  1. check that the matrix in the grid variable
**     and the input matrix have the same size
**
**     if not, throw an error like
**         throw std::invalid_argument("matrices are not the same size");
**
** 2. add the matrices together and return
**       the result as a Matrix. You can do this part
**       with nested for loops. If you use an intermediate
**       vector to store a row, the vector.clear() 
**       method might be useful.
**
*/
Matrix Matrix::matrix_addition(Matrix others){
    //check if possible to add
    if(rows != others.getRows() || cols != others.getCols())
        throw std::invalid_argument("matrices are not the same size");

    std::vector< std::vector<float> > added_grid;
    added_grid = others.getGrid();
    
    for(int i=0 ; i<rows ; i++)
        for(int j=0 ; j<cols ; j++)
            added_grid[i][j] += grid[i][j]; 
     
    return(added_grid);
}


/* TODO: Define a matrix_print function
** This function has no inputs and no outputs
** The purpose of the function is to display the matrix in
** the terminal using std::cout. 
**
**
** The output should look something like:
** 4    9   1   10
** 5    11  6   17
** 8    4   15  2
*/
void Matrix::matrix_print(){
    for(int i=0 ; i<rows ; i++){
        for(int j=0 ; j<cols ; j++)
            std::cout << grid[i][j] << "  ";
    
        std::cout << std::endl;
    }
    std::cout << std::endl;
    std::cout << std::endl;
}



