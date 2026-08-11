
## What Are Quaternions?

Quaternions are a number system that extends the complex numbers. Where complex numbers have one imaginary unit (i), quaternions have three: **i, j, k**. A general quaternion is written as:

**q = w + xi + yj + zk**

where w, x, y, z are real numbers. You can also think of a quaternion as a pair: a **scalar part** (w) and a **vector part** (xi + yj + zk), often written q = (w, **v**) where **v** is a 3D vector.

### The defining relations

The imaginary units satisfy:

- i² = j² = k² = -1
- ij = k, jk = i, ki = i
- ji = -k, kj = -i, ik = -j

That last line is the key thing that makes quaternions strange: multiplication is **not commutative**. ij ≠ ji. This was actually the big conceptual leap Hamilton made in 1843 — he'd been stuck trying to find a 3D analog of complex numbers (which do rotations in 2D) and the breakthrough was realizing he needed 4 components, not 3, and had to give up commutativity.

### Why they matter (the reason a whole book is devoted to visualizing them)

Quaternions are most famous today for representing **rotations in 3D space**. A unit quaternion (one with w² + x² + y² + z² = 1) can encode a rotation by an angle θ around an axis **n**:

q = (cos(θ/2), sin(θ/2)·**n**)

Rotating a vector **v** is done via the sandwich formula:

**v' = q v q⁻¹**

This is why quaternions show up constantly in computer graphics, robotics, aerospace, and game engines — they avoid the "gimbal lock" problem that Euler angles have, and they're more compact and numerically stable than rotation matrices for interpolating between orientations (this is where "slerp," spherical linear interpolation, comes in).

quaternions live naturally on a **4D unit sphere** (S³), which we can't directly see. Much of the book is devoted to techniques for projecting or mapping that 4D structure down into pictures we can actually reason about, since algebraically quaternions are simple but geometrically/intuitively they're hard to grasp without help.
