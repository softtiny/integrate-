

## Hyperspherical Geometry — Background

**The setting:**
Unit quaternions satisfy $w^2+x^2+y^2+z^2=1$, so they form the surface of a 4D ball — the **3-sphere** $S^3$, a curved 3-dimensional manifold embedded in 4D space. Just as ordinary $S^2$ (the familiar 2D sphere) is the natural home for directions in 3D space, $S^3$ is the natural home for *orientations* in 3D space (with the caveat that each orientation corresponds to a pair of antipodal points, $q$ and $-q$).

**Great circles and geodesics:**
On an ordinary sphere, the shortest path between two points is an arc of a great circle (the intersection of the sphere with a plane through the center). On $S^3$, the analogous concept holds one dimension up: the shortest path between two unit quaternions is an arc of a **great circle** — the intersection of $S^3$ with a 2-plane through the origin in 4D. This is exactly the geometric basis for SLERP (spherical linear interpolation): it moves along that great-circle arc at constant angular speed.

**Angular distance:**
The "distance" between two unit quaternions $q_1, q_2$ is measured by the angle $\Omega$ between them as 4D vectors:
$$\cos\Omega = q_1 \cdot q_2 = w_1w_2+x_1x_2+y_1y_2+z_1z_2$$
This angle directly corresponds to *half* the rotation angle needed to go from orientation $q_1$ to orientation $q_2$ — a nice bridge between the abstract 4D geometry and the physical 3D rotation it represents.

**Stereographic projection:**
Since $S^3$ can't be visualized directly (it's a 3D surface curved through 4D space), the book likely uses **stereographic projection** to map $S^3$ minus a point down into ordinary 3D space — the same trick used to flatten a globe ($S^2$) onto a 2D map. This projection preserves angles (it's conformal) and turns great circles on $S^3$ into circles (or lines) in 3D, giving an actual visualizable picture of quaternion geometry — likely the core visualization technique the whole book is built around.

**Hopf fibration:**
A related structure often discussed alongside hyperspherical geometry: $S^3$ can be decomposed into a family of interlinked circles (fibers), each one mapping down to a single point on $S^2$ under the **Hopf map**. This connects unit quaternions back to ordinary 3D rotation axes/directions in a beautiful and non-obvious way, and is often used as a visualization aid for understanding the double-cover relationship between $S^3$ and $SO(3)$.

**Volume and measure on $S^3$:**
For applications like generating random uniform rotations, one needs the correct volume element (surface measure) on $S^3$, which is used to properly weight sampling so that all orientations are represented without bias.

