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