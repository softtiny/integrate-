# Module: mat2



### mat2.add(out, a, b) → {mat2}


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


### mat2.adjoint(out, a) → {mat2}

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

### mat2.clone(a) → {mat2}

method is used to create a deep copy of an existing 2×2 matrix.


**Examples:** [link](https://jsfiddle.net/softtiny/cj3g8hdn/1/)

```js
import {glMatrix,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'

// 1. Create an original matrix
const original = mat2.fromValues(1, 2, 3, 4);
console.log(original.toString());


// 2. Clone it into a new variable
const duplicate = mat2.clone(original);
console.log(duplicate.toString())
```

### mat2.copy(out, a) → {mat2}

method is used to transfer values from one 2×2 matrix to another existing matrix.


**Examples:** [link](https://jsfiddle.net/softtiny/3p8swu9d/)

```js
import {glMatrix,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'


const source = mat2.fromValues(10, 20, 30, 40);
const destination = mat2.create(); // Starts as an identity matrix

// 2. Perform the copy
mat2.copy(destination, source);
console.log(destination.toString())
// 'destination' is now [10, 20, 30, 40]
```



### mat2.determinant(a) → {Number}


The determinant is a scalar value that provides critical information about the matrix, such as whether it can be inverted and how it scales area during a transformation.

**Mathematical Formula**

For a $2×2$ matrix A defined as:
\[
A = \begin{bmatrix}
a & b \\
c & d 
\end{bmatrix}
\]

The determinant is calculated as:
\[
det(A) = (a \times d) - ( b \times c )
\]

**Examples:** [link](https://jsfiddle.net/softtiny/5hry216p/2/)

```js
import {glMatrix,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'


// Create a matrix:
// [1, 2]
// [3, 4]
const myMatrix = mat2.fromValues(1, 2, 3, 4);

// Calculate the determinant
const result = mat2.determinant(myMatrix);

console.log(result); // Output: -2  ((1*4) - (2*3))
```


### mat2.equals(a, b) → {Boolean}

It checks if the corresponding elements of two matrices are "close enough" to each other based on a very small threshold (called an epsilon).

* **Logic:** It returns `true` if .
* **Why use it?** Floating-point math (like ) often results in values like . This method ignores those tiny discrepancies.


**Examples:** [link](https://jsfiddle.net/softtiny/w94g0ukt/1/)

```js
import {glMatrix,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'


const matA = mat2.fromValues(1, 0, 0, 1);
const matB = mat2.fromValues(1.0000001, 0, 0, 1);

const isSame = mat2.equals(matA, matB); 
console.log(isSame); // Returns true (the difference is smaller than glMatrix.EPSILON)
```