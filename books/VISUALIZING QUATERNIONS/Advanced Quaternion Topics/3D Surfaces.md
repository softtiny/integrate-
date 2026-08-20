

## 3D Surfaces — Overview



**Section breakdown:**

- **Introduction to 3D Surfaces** — sets up the problem, then covers:
  - *Classical Gauss Map* — the traditional idea of mapping each surface point to its normal direction on the unit sphere.
  - *Surface Frame Evolution* — how a full coordinate frame (not just the normal) changes as you move across a surface.
  - *Examples of Surface Framings* — worked illustrations.

- **Quaternion Weingarten Equations** — the mathematical core of the chapter:
  - *Quaternion Frame Equations*
  - *Quaternion Surface Equations (Weingarten Equations)* — Hanson's quaternion reformulation of the classical Weingarten equations from differential geometry, which normally describe how a surface's normal and tangent directions change (encoding curvature).

- **Quaternion Gauss Map** — Hanson's own proposed extension of the classical Gauss map. Instead of mapping surface points to just a *normal vector* on the ordinary 2-sphere, the quaternion Gauss map assigns each surface point a full orientation *frame*, represented as a point on the hypersphere S³. This is one of the more original contributions of the book — as he explains in the preface, ordinary Euler angles can't consistently represent surface frame fields, but the quaternion approach handles this cleanly and exposes genuine geometric features (like the fact that no sphere can have a perfectly smooth global frame field).

- **Example: The Sphere** — works through the sphere as a concrete case:
  - *Quaternion Maps of Alternative Sphere Frames*
  - *Covering the Sphere and the Geodesic Reference Frame South Pole Singularity* — showing how certain frame choices inevitably run into a singularity (analogous to gimbal lock, but for surfaces).

- **Examples: Minimal Surface Quaternion Maps** — applies the quaternion Gauss map machinery to minimal surfaces (surfaces that locally minimize area, like soap films).

**Why it matters:** in computer graphics, surfaces are rarely described adequately by vertex positions and normals alone — texturing and shading need a *complete frame*. Since Euler angles can't consistently represent such frame fields, the quaternion Gauss map gives a principled, singularity-aware alternative, revealing genuine differential-geometric facts (like the impossibility of a smooth global frame on a sphere) as a natural consequence.
