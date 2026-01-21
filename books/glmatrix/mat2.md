# Module: mat2



### add(out, a, b) → {mat2}


*   **Purpose**: Adds two `mat2` matrices.
*   **Parameters**:
    *   `out`: A `mat2` object where the result of the addition will be stored. This matrix is modified in place.
    *   `a`: A `ReadonlyMat2` object representing the first matrix operand.
    *   `b`: A `ReadonlyMat2` object representing the second matrix operand.



**Example:** [link](https://jsfiddle.net/softtiny/qd3gja8n/4/)

```js
import {glMatrix,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'



// Create two 2x2 matrices
// Matrix A:
// | 1  2 |
// | 3  4 |
const a = mat2.fromValues(
    1, 2, // Column 0: [1, 2]
    3, 4  // Column 1: [3, 4]
);


// Matrix B:
// | 5  6 |
// | 7  8 |
const b = mat2.fromValues(
    5, 6, // Column 0: [5, 6]
    7, 8  // Column 1: [7, 8]
);

// Create an output matrix to store the result
const out = mat2.create(); // Initializes to an identity matrix by default

console.log("Matrix A:", mat2.str(a));
console.log("Matrix B:", mat2.str(b));

// Add matrix A and matrix B, storing the result in 'out'
mat2.add(out, a, b);

// Expected result:
// | 1+5  3+7 |   | 6  10 |
// | 2+6  4+8 | = | 8  12 |
// Note: glMatrix stores in column-major order, so the internal array would be [6, 8, 10, 12]

console.log("Result of A + B:", mat2.str(out));

// You can also add a matrix to itself
mat2.add(out, a, a);
// Expected result:
// | 1+1  3+3 |   | 2  6 |
// | 2+2  4+4 | = | 4  8 |
console.log("Result of A + A:", mat2.str(out));

```


### adjoint(out, a) → {mat2}

For a $2×2$ matrix, the adjoint is essentially the transpose of its cofactor matrix. In practical terms, this involves swapping the diagonal elements and negating the off-diagonal elements.


**Mathematical Definition**

If you have a matrix $A$:
\[
A = \begin{bmatrix}
a & b \\
c & d 
\end{bmatrix}
\]

The adjoint of $A$, denoted as $adj(A)$, is:

\[
adj(A) = \begin{bmatrix}
d & -b \\
-c & a
\end{bmatrix}
\]


**Examples:** [link](https://jsfiddle.net/softtiny/ezhkps0a/2/)

```js
import {glMatrix,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'

// Create a matrix: [1, 2, 3, 4] 
// (Represents: [1 2]
//              [3 4])
let a = mat2.fromValues(1, 2, 3, 4);
let out = mat2.create();

mat2.adjoint(out, a);
console.log(out.toString())
// 'out' will now be [4, -2, -3, 1]
// (Represents: [4 -2]
//              [-3 1])
```