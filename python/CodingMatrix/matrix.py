import math
from math import sqrt
import numbers

def zeroes(height, width):
        """
        Creates a matrix of zeroes.
        """
        g = [[0.0 for _ in range(width)] for __ in range(height)]
        return Matrix(g)

def identity(n):
        """
        Creates a n x n identity matrix.
        """
        I = zeroes(n, n)
        for i in range(n):
            I.g[i][i] = 1.0
        return I

class Matrix(object):

    # Constructor
    def __init__(self, grid):
        self.g = grid
        self.h = len(grid)
        self.w = len(grid[0])

    #
    # Primary matrix math methods
    #############################
 
    def determinant(self):
        """
        Calculates the determinant of a 1x1 or 2x2 matrix.
        """
        if not self.is_square():
            raise(ValueError, "Cannot calculate determinant of non-square matrix.")
        if self.h > 2:
            raise(NotImplementedError, "Calculating determinant not implemented for matrices largerer than 2x2.")
        
        # TODO - your code here
        if self.h == 1:
            return self[0][0]
        if self.h == 2:
            return self[0][0]*self[1][1] - self[0][1]*self[1][0]
        

    def trace(self):
        """
        Calculates the trace of a matrix (sum of diagonal entries).
        """
        if not self.is_square():
            raise(ValueError, "Cannot calculate the trace of a non-square matrix.")
        tot = 0;
        # TODO - your code here
        for i in range(self.h):
            tot += self[i][i]
        return tot

    def inverse(self):
        """
        Calculates the inverse of a 1x1 or 2x2 Matrix.
        """
        if not self.is_square():
            raise(ValueError, "Non-square Matrix does not have an inverse.")
        if self.h > 2:
            raise(NotImplementedError, "inversion not implemented for matrices larger than 2x2.")

        # TODO - your code here
        det = self.determinant()
        if self.h == 1 :
            return 1/self[0][0]
        if self.h == 2 :
            #return [[self[1][1]/det, -self[0][1]/det], [-self[1][0]/det, self[0][0]/det]]
            return 1/self.determinant() * (self.trace()*identity(2) - self)
         

    def T(self):
        """
        Returns a transposed copy of this Matrix.
        """
        
        # TODO - your code here
        mat_trans = []
        for i in range(self.w):
            mat_trans.append([])
            for j in range(self.h):
                mat_trans[i].append(self[j][i])
        return Matrix(mat_trans)
        
        

    def is_square(self):
        return self.h == self.w

    #
    # Begin Operator Overloading
    ############################
    def __getitem__(self,idx):
        """
        Defines the behavior of using square brackets [] on instances
        of this class.

        Example:

        > my_matrix = Matrix([ [1, 2], [3, 4] ])
        > my_matrix[0]
          [1, 2]

        > my_matrix[0][0]
          1
        """
        return self.g[idx]

    def __repr__(self):
        """
        Defines the behavior of calling print on an instance of this class.
        """
        s = ""
        for row in self.g:
            s += " ".join(["{} ".format(x) for x in row])
            s += "\n"
        return s

    def __add__(self,other):
        """
        Defines the behavior of the + operator
        """
        if self.h != other.h or self.w != other.w:
            raise(ValueError, "Matrices can only be added if the dimensions are the same") 
        #   
        # TODO - your code here
        #
        mat_add = []
        for i in range(self.h):
            mat_add.append([])
            for j in range(self.w):
                mat_add[i].append(self[i][j]+other[i][j])
        return Matrix(mat_add)  
        
        

    def __neg__(self):
        """
        Defines the behavior of - operator (NOT subtraction)

        Example:

        > my_matrix = Matrix([ [1, 2], [3, 4] ])
        > negative  = -my_matrix
        > print(negative)
          -1.0  -2.0
          -3.0  -4.0
        """
        #   
        # TODO - your code here
        #
        mat_neg = []
        for i in range(self.h):
            mat_neg.append([])
            for j in range(self.w):
                mat_neg[i].append(-self[i][j])
        return Matrix(mat_neg)

    def __sub__(self, other):
        """
        Defines the behavior of - operator (as subtraction)
        """
        #   
        # TODO - your code here
        #
        mat_sub = []
        for i in range(self.h):
            mat_sub.append([])
            for j in range(self.w):
                mat_sub[i].append(self[i][j] - other[i][j])
        return Matrix(mat_sub)
                
        
        

    def __mul__(self, other):
        """
        Defines the behavior of * operator (matrix multiplication)
        """
        #   
        # TODO - your code here
        #
        
        #if other is not matrix
        if isinstance(other, numbers.Number):
            mat_rmul=[]
            for i in range(self.h):
                mat_rmul.append([])
                for j in range(self.w):
                    mat_rmul[i].append(other*self[i][j])
            return Matrix(mat_rmul)  
            
            
        #if slef and other are both matrices
        mat_mul = []
        for i in range(self.h):
            mat_mul.append([])
            for j in range(other.w):
                tot = 0
                for k in range(self.w):
                    tot += self[i][k]*other[k][j]
                mat_mul[i].append(tot)
        return Matrix(mat_mul)
        

    def __rmul__(self, other):
        """
        Called when the thing on the left of the * is not a matrix.

        Example:

        > identity = Matrix([ [1,0], [0,1] ])
        > doubled  = 2 * identity
        > print(doubled)
          2.0  0.0
          0.0  2.0
        """
        if isinstance(other, numbers.Number):
            pass
            #   
            # TODO - your code here
            #
            mat_rmul=[]
            for i in range(self.h):
                mat_rmul.append([])
                for j in range(self.w):
                    mat_rmul[i].append(other*self[i][j])

        return Matrix(mat_rmul)  


            
