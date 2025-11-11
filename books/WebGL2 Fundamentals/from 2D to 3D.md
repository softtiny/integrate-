#  The Core Idea (What & Why)

| **2D → 3D**                   | What changes                                      | Why it matters                                                                  |
|-------------------------------|---------------------------------------------------|---------------------------------------------------------------------------------|
| **Coordinate system<br><br>** | Add a Z axis (depth)                              | Lets objects be in front/behind each other.                                     |
| **Matrices**                  | 3×3 → 4×4 (homogeneous coordinates)               | Uniform way to combine translation, rotation, scale and perspective projection. |
| **Vertex data**               | (x,y) → (x,y,z) (maybe + w=1)                     | Gives each point a depth value.                                                 |
| **Projection**                | Orthographic (2‑D) → Perspective (or still ortho) | Perspective makes far objects smaller → realistic 3‑D view.                     |
| **Depth buffer**              | Off → Enabled                                     | Prevents back faces from drawing over front faces.                              |
