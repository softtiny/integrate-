

**Quaternions as points in 4D.** A quaternion q = q₀ + q₁i + q₂j + q₃k corresponds to the 4-vector (q₀, q₁, q₂, q₃). Addition and scalar multiplication are ordinary vector operations in this space. The norm |q| is the Euclidean length, and the unit quaternions (|q| = 1) form the 3-sphere S³ in 4D.

**The scalar and vector parts.** Writing q = (q₀, **q**), the scalar part q₀ is a "height" along the extra axis, and the vector part **q** is an ordinary 3D vector. Quaternions with q₀ = 0 are called *pure* or *vector quaternions*, and they behave like 3D vectors. For two pure quaternions, the product is

pq = −**p**·**q** + **p** × **q**

So the dot product and cross product of ordinary vectors appear together inside one multiplication. This is the sense in which quaternions extend 3D vector algebra.

**Rotations as unit quaternions.** The main geometric use is this. For a rotation by angle θ about a unit axis **u**, take

q = cos(θ/2) + sin(θ/2)·**u**

Then a 3D vector **v** (viewed as a pure quaternion) is rotated by **v** ↦ q**v**q*. Three features of this formula matter:

- **The axis** is the direction of the vector part of q, and it is unchanged by the rotation.
- **The angle is halved.** The quaternion carries θ/2, which is why the map is a "double cover."
- **q and −q give the same rotation,** since (−q)v(−q)* = qvq*. So each rotation corresponds to exactly two antipodal points on S³. This is why the rotation group SO(3) is described as S³ with antipodal points identified.

**Checking an example.** Take a 90° rotation about the z-axis, so q = (1 + k)/√2. For v = i:

qiq* = (i + j)/√2 · (1 − k)/√2 = (i + j)(1 − k)/2 = (2j)/2 = j

The x-axis goes to the y-axis, as expected. Applying the rotation twice gives q² = k, and then k i k* = −i, a 180° rotation that reverses the x-axis.

**Composition and order.** Doing rotation q₁ first and then q₂ gives

q₂(q₁vq₁*)q₂* = (q₂q₁)v(q₂q₁)*

So composite rotations multiply in reverse order: the combined quaternion is q₂q₁. Because quaternion multiplication is not commutative, this order matters, and it is central to rotation sequences like Euler angles. Authors differ on whether they write the product as q₂q₁ or q₁q₂, depending on whether rotations are applied to the body or the fixed frame, so check which convention Kuipers uses.

**Geodesics and interpolation.** On S³, the shortest path between two unit quaternions lies along a great circle. Spherical linear interpolation (slerp) moves along this path, giving smooth, constant-speed rotations between two orientations.

**Pure unit quaternions.** A pure unit quaternion u (so u² = −1) represents a 180° rotation about the axis **u**. This is one reason the algebra suits rotation problems.
