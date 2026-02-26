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

the mat2d values for "rotate 45° + scale 1.5 + translate (100,50)"

Values are rounded to 4 decimal places for readability (exact $cos(45°) ≈ 0.7071, sin(45°) ≈ 0.7071 $).

1.  Identity (no transformation)

```js
[1.0000, 0.0000, 0.0000, 1.0000, 0, 0]
```

2. Pure rotation: 45° counterclockwise (around origin)

```js
[ 0.7071,  0.7071,
 -0.7071,  0.7071,
  0,       0     ]
```

3. Pure uniform scale: ×1.5

```js
[1.5000, 0.0000, 0.0000, 1.5000, 0, 0]
```

4. Pure translation: (100, 50)

```js
[1.0000, 0.0000, 0.0000, 1.0000, 100, 50]
```

### 5. Combined: scale 1.5 → rotate 45° → translate (100, 50)

This is the most common order in 2D graphics / games / UI:

- First apply **scale** (local size change)
- Then **rotate** (around origin after scaling)
- Finally **translate** (move to final position)

```js
// ≈ [1.0607, 1.0607, -1.0607, 1.0607, 100, 50]
[ 1.0607,  1.0607,
 -1.0607,  1.0607,
  100,     50    ]
```