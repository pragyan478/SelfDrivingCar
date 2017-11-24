### TODO: Assign the vector <5, 10, 2, 6, 1> to the variable v
v = [5,10,2,6,1]


### TODO: Assign the vector <5, 10, 2, 6, 1> to the variable mv
### The difference between a vector and a matrix in Python is that
### a matrix is a list of lists.

### Hint: See the last quiz on the previous page

mv = [[5, 10, 2, 6, 1]]


### TODO: Assign the vector <5, 10, 2, 6, 1> to the variable vT
### vT is a 5x1 matrix
vT = [[5], [10], [2], [6], [1]]


### TODO: Assign the following matrix to the variable m
### 8 7 1 2 3
### 1 5 2 9 0
### 8 2 2 4 1

m = [[8,7,1,2,3],
    [1,5,2,9,0],
    [8,2,2,4,1]]


### TODO: In matrix m, change the value 
###       in the second row last column from 0 to 5
### Hint: You do not need to rewrite the entire matrix
m[1][4] = 5


### SCALAR MULTIPLICATION
### TODO: Use for loops to multiply each matrix element by 5
###       Store the answer in the r variable. This is called scalar
###       multiplication
###
### HINT: First write a for loop that iterates through the rows
###       one row at a time
###
###       Then write another for loop within the for loop that
###       iterates through the columns
###
###       If you used the variable i to represent rows and j
###       to represent columns, then m[i][j] would give you
###       access to each element in the matrix
###
###       Because r is an empty list, you cannot directly assign
###       a value like r[i][j] = m[i][j]. You might have to
###       work on one row at a time and then use r.append(row).
r = []
for i in range(len(m)):
    r.append([])
    for j in range(len(m[0])):
        r[i].append(5*m[i][j])


### PRINT MATRIX
### TODO: Write a function called matrix_print() 
###       that prints out a matrix in
###       a way that is easy to read.
###       Each element in a row should be separated by a tab
###       And each row should have its own line
###       You can test our your results with the m matrix

### HINT: You can use a for loop within a for loop
### In Python, the print() function will be useful
### print(5, '\t', end = '') will print out the integer 5, 
###    then add a tab after the 5. The end = '' makes sure that
###    the print function does not print out a new line if you do
###    not want a new line.

### Your output should look like this
### 8   7   1   2   3    
### 1   5   2   9   5 
### 8   2   2   4   1

def matrix_print(matrix):
    for i in range(len(matrix)):
        for j in range(len(matrix[0])):
            print(str(matrix[i][j]) , "\t" , end = "")
        print("\n")
    return

m = [
    [8, 7, 1, 2, 3],
    [1, 5, 2, 9, 5],
    [8, 2, 2, 4, 1]
]

matrix_print(m)



### You can run these tests to see if you have the expected
### results. If everything is correct, this cell has no output

assert v == [5, 10, 2, 6, 1]
assert mv == [
    [5, 10, 2, 6, 1]
]

assert vT == [
    [5], 
    [10], 
    [2], 
    [6], 
    [1]]

assert m == [
    [8, 7, 1, 2, 3], 
    [1, 5, 2, 9, 5], 
    [8, 2, 2, 4, 1]
]

assert r == [
    [40, 35, 5, 10, 15], 
    [5, 25, 10, 45, 25], 
    [40, 10, 10, 20, 5]
]



### Run this cell to print out your answers
print(v)
print(mv)
print(vT)
print(m)
print(r)





### MATRIX ADDITION
### TODO: Write a function called matrix_addition that 
###     calculate the sum of two matrices
###
### INPUTS:
###    matrix A _ an m x n matrix
###    matrix B _ an m x n matrix
###
### OUPUT:
###   matrixSum _ sum of matrix A + matrix B

def matrix_addition(matrixA, matrixB):

    # initialize matrix to hold the results
    matrixSum = []
    
    # matrix to hold a row for appending sums of each element
    row = []
    
    # TODO: write a for loop within a for loop to iterate over
    # the matrices
    
    # TODO: As you iterate through the matrices, add matching
    # elements and append the sum to the row variable
    
    # TODO: When a row is filled, append the row to matrixSum. 
    # Then reinitialize row as an empty list
    for i in range(len(matrixA)):
        matrixSum.append([])
        for j in range (len(matrixA[0])):
            matrixSum[i].append(matrixA[i][j] + matrixB[i][j])
            
    
    
    return matrixSum

### When you run this code cell, your matrix addition function
### will run on the A and B matrix.

A = [
    [2,5,1], 
    [6,9,7.4], 
    [2,1,1], 
    [8,5,3], 
    [2,1,6], 
    [5,3,1]
]

B = [
    [7, 19, 5.1], 
    [6.5,9.2,7.4], 
    [2.8,1.5,12], 
    [8,5,3], 
    [2,1,6], 
    [2,33,1]
]

matrix_addition(A, B)




"""
Vectors versus Matrices
What happens if you run the cell below? Here you are adding two vectors together. Does your code still work?
"""
## ERROR CODE
# matrix_addition([4, 2, 1], [5, 2, 7])

"""
Why did this error occur? Because your code assumes that a matrix is a two-dimensional grid represented by a list of lists.
But a horizontal vector, which can also be considered a matrix, is a one-dimensional grid represented by a single list.
What happens if you store a vector as a list of lists like [[4, 2, 1]] and [[5, 2, 7]]? 
Does your function work? Run the code cell below to find out.
"""

matrix_addition([[4, 2, 1]], [[5, 2, 7]])


assert matrix_addition([
    [1, 2, 3]], 
    [[4, 5, 6]]) == [[5, 7, 9]]

assert matrix_addition([
    [4]], [
    [5]]) == [[9]]

assert matrix_addition([[1, 2, 3], 
                        [4, 5, 6]], 
                       [[7, 8, 9], 
                        [10, 11, 12]]) == [[8, 10, 12], 
                                           [14, 16, 18]]



## TODO: Run this code cell to load the get_row function
## You do not need to modify this cell

def get_row(matrix, row):
    return matrix[row]

### TODO: Write a function that receives a matrix and a column number.
###       the output should be the column in the form of a list


### Example input:
# matrix = [
#    [5, 9, 11, 2],
#    [3, 2, 99, 3],
#    [7, 1, 8, 2]
# ]
#
# column_number = 1

### Example output:
# [9, 2, 1]
#

def get_column(matrix, column_number):
    column = []
    for i in range(len(matrix)):
        for j in range(len(matrix[0])):
            if j == column_number:
                column.append(matrix[i][j])
    return column


### TODO: Run this code to test your get_column function
assert get_column([[1, 2, 4], 
                   [7, 8, 1], 
                   [5, 2, 1]], 1) == [2, 8, 2]

assert get_column([[5]], 0) == [5]


### DOT PRODUCT OF TWO VECTORS
### TODO: Write a function called dot_product() that
###       has two vectors as inputs and outputs the dot product of the 
###       two vectors. First, you will need to do element-wise
###       multiplication and then sum the results. 

### HINT: You wrote this function previously in the vector coding
###        exercises
def dot_product(vector_one, vector_two):
    
    result = 0
    for i in range(len(vector_one)):
        result += vector_one[i]*vector_two[i]
    return result

### TODO: Run this cell to test your results

assert dot_product([4, 5, 1], [2, 1, 5]) == 18
assert dot_product([6], [7]) == 42





### MATRIX MULTIPLICATION
### TODO: Write a function called matrix_multiplication that takes
###       two matrices,multiplies them together and then returns
###       the results
###       
###       Make sure that your function can handle matrices that contain
###       only one row or one column. For example,
###       multiplying two matrices of size (4x1)x(1x4) should return a
###       4x4 matrix

def matrix_multiplication(matrixA, matrixB):
    # empty list that will hold the product of AxB
    result = []
    
    for i in range(len(matrixA)):
        result.append([])
        for j in range(len(matrixB[0])):
            sum_mat = 0
            for k in range(len(matrixB)):
                sum_mat += matrixA[i][k] * matrixB[k][j]
            result[i].append(sum_mat)
    
    return result




### MATRIX TRANSPOSE
### TODO: Write a function called transpose() that 
###       takes in a matrix and outputs the transpose of the matrix

def transpose(matrix):
    matrix_transpose = []
    for j in range(len(matrix[0])):
        matrix_transpose.append([])
        for i in range(len(matrix)):
            matrix_transpose[j].append(matrix[i][j])
            
    
    return matrix_transpose


    
# IDENTITY MATRIX FOR N==1 OR N==2
# TODO: Write a nested for loop to iterate over the rows and
# columns of the identity matrix. Remember that identity
# matrices are square so they have the same number of rows and columns
# Make sure to assign 1 to the diagonal values and 0 everywhere else
def identity_matrix(n):
    identity = []
    for i in range(n):
        identity.append([])
        for j in range(n):
            if i==j:
                identity[i].append(1)
            else:
                identity.append(0)
    
    return identity



### TODO: Write a function called inverse_matrix() that 
###       receives a matrix and outputs the inverse
###       
###       You are provided with start code that checks
###       if the matrix is square and if not, throws an error
###
###       You will also need to check the size of the matrix.
###       The formula for a 1x1 matrix and 2x2 matrix are different,
###       so your solution will need to take this into account.
###
###       If the user inputs a non-invertible 2x2 matrix or a matrix
###       of size 3 x 3 or greater, the function should raise an
###       error. A non-invertible
###       2x2 matrix has ad-bc = 0 as discussed in the lesson
###
###       Python has various options for raising errors
###       raise RuntimeError('this is the error message')
###       raise NotImplementedError('this functionality is not implemented')
###       raise ValueError('The denominator of a fraction cannot be zero')

def inverse_matrix(matrix):
    
    inverse = []
    
    if len(matrix) != len(matrix[0]):
        raise ValueError('The matrix must be square')
    
    ## TODO: Check if matrix is larger than 2x2.
    ## If matrix is too large, then raise an error
    if len(matrix) > 2:
        raise ValueError('The size cannnot be larger than 2')
    ## TODO: Check if matrix is 1x1 or 2x2.
    ## Depending on the matrix size, the formula for calculating
    ## the inverse is different
    if len(matrix) == 1:
        inverse.append(1/matrix[0][0])
    
    elif len(matrix) == 2:
        det = matrix[0][0]*matrix[1][1] - matrix[0][1]*matrix[1][0]
        inverse.append([matrix[1][1]/det, -matrix[0][1]/det])
        inverse.append([-matrix[1][0]/det, matrix[0][0]])
            
    ## TODO: Calculate the inverse of the square 1x1 or 2x2 matrix.

    print(inverse)
    return inverse
