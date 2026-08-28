
## The Rotation Group SO(3)

**Basic definition.** The set of all rotations of 3D space forms a mathematical group called SO(3) — the "Special Orthogonal group in 3 dimensions." It's a *group* because:
- Composing two rotations gives another rotation (closure)
- There's an identity rotation (do nothing)
- Every rotation has an inverse (rotate back)
- Composition is associative

**Non-commutativity.** Unlike ordinary numbers, rotations don't commute: rotating first around the x-axis then the y-axis generally gives a different result than the reverse order. This non-commutativity is why rotation composition needs careful mathematical tools like quaternions or matrices, rather than simple addition.

**Topology — a key subtlety.** SO(3) isn't just an abstract algebraic group; it's also a *manifold* (a curved space) with a nontrivial shape. In particular:
- SO(3) is **not simply connected** — there are loops of rotations that cannot be continuously shrunk to a point.
- This is often illustrated with the "belt trick" or "plate trick": if you rotate an object by 360°, the path isn't equivalent to no rotation at all in a topological sense, but rotating by 720° *is* equivalent to no rotation.

**Double cover by quaternions.** This is where unit quaternions come in. The set of unit quaternions forms a group called SU(2) (or geometrically, the 3-sphere S³), and there's a 2-to-1 map from SU(2) onto SO(3): every 3D rotation corresponds to exactly *two* unit quaternions, q and −q. This is called SU(2) being a **double cover** of SO(3), and it directly explains the 720° phenomenon above.

**Why this matters for visualization/computation.** Because quaternions live on a sphere (S³) rather than having the topological "twist" of SO(3) itself, they avoid certain problems (like gimbal lock in Euler angles) and allow smooth interpolation between rotations (e.g., SLERP).
