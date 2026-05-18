# Determinants
The determinant of a matrix is a scalar value that can be calculated for a square matrix (a matrix with the same number of rows and columns). 

```math
\begin{bmatrix} 1 & 2 & 3 & 4 & 5\\ 6 & 7 & 8 & 9 & 10 \\ 11 & 12 & 13 & 14 & 15 \\ 16 & 17 & 18 & 19 & 20 \\ 21 & 22 & 23 & 24 & 25\end{bmatrix}\\
```

```py
def determinant(matrix):
    n = len(matrix)
    if n == 1:
        return matrix[0][0]
    elif n == 2:
        return matrix[0][0]*matrix[1][1] - (matrix[0][1]*matrix[1][0])
    det = 0
    for col in range(n):
        minor = [
            [matrix[row][c] for c in range(n) if c != col]
            for row in range(1,n)
        ]
        sign = (-1)**col
        det += sign * matrix[0][col] * determinant(minor)
    return det
```