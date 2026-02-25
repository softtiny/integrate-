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