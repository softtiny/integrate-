# Module: mat2d

Canvas 2D method setTransform(a,b,c,d,tx,ty)


The `mat2d` module is a specialized subset designed specifically for 2D transformations.

- The Math Behind `mat2d`
  In a 2D space, we need to handle rotation, scaling, and translation. While you might think a $2×2$ is enough, it can't handle "translation" (moving) linearly. By using a $3×2$ structure, `glMatrix` stores the values in a flat array of 6 numbers: **[a,b,c,d,tx,ty]**
  Mathematically, it represents this structure:**(row-major)**
  \[
    \begin{bmatrix}
    a & b & 0\\
    c & d & 0 \\
    tx & ty & 1 \\
    \end{bmatrix}=>\begin{bmatrix}
    a & c & tx \\
    b & d & ty \\
    0 & 0 & 1
    \end{bmatrix}
  \]
  **(row-major)**
  \[
    \begin{bmatrix}
    a&b&0
    \end{bmatrix}=>\begin{bmatrix}
    a\\b\\0
    \end{bmatrix}
  \]

  ### Quick reference table (easiest way to remember)

| Full 3×3 form shown in docs | gl-matrix actual 6-element index | Common meaning                     |
|-----------------------------|----------------------------------|------------------------------------|
| a                           | index 0                          | m11 / scaleX × cos(θ)              |
| b                           | index 1                          | m21 / scaleX × sin(θ)              |
| 0                           | (not stored)                     | always 0                           |
| c                           | index 2                          | m12 / –scaleY × sin(θ) (often)     |
| d                           | index 3                          | m22 / scaleY × cos(θ)              |
| 0                           | (not stored)                     | always 0                           |
| tx                          | index 4                          | translation X                      |
| ty                          | index 5                          | translation Y                      |
| 1                           | (not stored)                     | always 1 (homogeneous coordinate)  |

---

### mat2d.add(out, a, b) → `{mat2d}`

### mat2d.determinant(a) → `{Number}`
### mat2d.frob(a) → `{Number}`
### mat2d.fromRotation(out, rad) → `{mat2d}`
### mat2d.fromScaling(out, v) → `{mat2d}`

### mat2d.fromTranslation(out, v) → `{mat2d}`
### mat2d.translate(out, a, v) → `{mat2d}`

Translates the mat2d by the dimensions in the given vec2 

**Mathematical Definition**


A `mat2d ` is stored linearly as an array of 6 values: `[a, b, c, d, tx, ty]` . Mathematically, it represents this structure:
\[
\begin{bmatrix}
a & c  & t_x\\
b & d  & t_y\\
0 & 0  & 1
\end{bmatrix}
\]

When you call `translate`, you are performing matrix multiplication between your current matrix and a translation matrix. The logic essentially boils down to:

- $new_{tx} = a * v[0] + c*v[1] + t_x$
- $new_{ty} = b * v[1] + d*v[1] + t_y$

**Examples:** [link](https://jsfiddle.net/softtiny/48feaqtz/10/)
```js
import {glMatrix,mat2, mat2d,vec2,} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'

// 1. Create an identity matrix (no transformation)
let myMatrix = mat2d.create(); 

// 2. Define the translation vector [x, y]
let movement = vec2.fromValues(50, 100);

console.log(myMatrix.toString())//"1,0,0,1,0,0"
console.log(movement.toString()) //"50,100"
// 3. Apply translation
// We pass 'myMatrix' as both 'out' and 'a' to modify it in-place
mat2d.translate(myMatrix, myMatrix, movement);

console.log(myMatrix.toString()); 
// Output: [1, 0, 0, 1, 50, 100]

let mm = mat2d.fromValues(1,2,3,4,5,6);
console.log(mm.toString());//"1,2,3,4,5,6"
mat2d.translate(mm, mm, movement);
console.log(mm.toString());//"1,2,3,4,355,506"
//new_tx = `a=1` * `v[0]=50` + `c=3` * `v[1]=100` + `tx=5` = 355
//new_tx = `b=2` * `v[0]=50` + `d=4` * `v[1]=100` + `ty=6` = 506

let move2=vec2.fromValues(10,100);
mm = mat2d.fromValues(1,2,3,4,5,6);
console.log(mm.toString());//"1,2,3,4,5,6"
mat2d.translate(mm, mm, move2);
console.log(mm.toString());//"1,2,3,4,315,426"
//new_tx = `a=1` * `v[0]=10` + `c=3` * `v[1]=100` + `tx=5` = 315
//new_tx = `b=2` * `v[0]=10` + `d=4` * `v[1]=100` + `ty=6` = 426
```