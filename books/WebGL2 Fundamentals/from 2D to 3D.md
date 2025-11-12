#  The Core Idea (What & Why)

| **2D → 3D**                   | What changes                                      | Why it matters                                                                  |
|-------------------------------|---------------------------------------------------|---------------------------------------------------------------------------------|
| **Coordinate system<br><br>** | Add a Z axis (depth)                              | Lets objects be in front/behind each other.                                     |
| **Matrices**                  | 3×3 → 4×4 (homogeneous coordinates)               | Uniform way to combine translation, rotation, scale and perspective projection. |
| **Vertex data**               | (x,y) → (x,y,z) (maybe + w=1)                     | Gives each point a depth value.                                                 |
| **Projection**                | Orthographic (2‑D) → Perspective (or still ortho) | Perspective makes far objects smaller → realistic 3‑D view.                     |
| **Depth buffer**              | Off → Enabled                                     | Prevents back faces from drawing over front faces.                              |


---

# Vertex Data (x,y,z)

```js
const vertices = new Float32Array([
  //   X     Y     Z
   -0.5, -0.5, -0.5,   // cube corner 0
    0.5, -0.5, -0.5,   // 1
    0.5,  0.5, -0.5,   // 2
   -0.5,  0.5, -0.5,   // 3
   -0.5, -0.5,  0.5,   // 4
    0.5, -0.5,  0.5,   // 5
    0.5,  0.5,  0.5,   // 6
   -0.5,  0.5,  0.5,   // 7
]);
```

# Indices (reuse vertices, reduce memory)

```js
const indices = new Uint16Array([
  0,1,2, 0,2,3, // front
  4,5,6, 4,6,7, // back
  0,4,7, 0,7,3, // left
  1,5,6, 1,6,2, // right
  3,2,6, 3,6,7, // top
  0,1,5, 0,5,4  // bottom
]);
```