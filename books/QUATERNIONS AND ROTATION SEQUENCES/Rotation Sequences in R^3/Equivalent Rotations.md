
**1. Every rotation has a quaternion, but not uniquely**

A unit quaternion q = s + v (with s² + |v|² = 1) rotates a vector x by x ↦ q x q⁻¹. Composing rotations corresponds to multiplying quaternions, so a sequence of rotations R₁, R₂, …, Rₙ corresponds to the product q = q₁q₂⋯qₙ.

The map from unit quaternions to rotations is two-to-one: q and −q produce the same rotation. So each rotation in R³ corresponds to exactly two antipodal points on the unit 3-sphere. This is the sense in which S³ double-covers SO(3).

**2. Equivalent rotation sequences**

Two sequences of elementary rotations are equivalent when they produce the same net rotation. In quaternion terms, if the products of their quaternions agree up to sign, the sequences are equivalent, even if the individual factors look completely different. A rotation can be factored into many different sequences of simpler rotations, and quaternion multiplication lets you test whether two factorizations match.

**3. Fixed-axis versus moving-axis sequences**

A common source of equivalence is the difference between rotating about fixed (space) axes and rotating about the body's own, moving axes. Rotating first about one axis and then about a second axis of the moving frame gives the same result as rotating about the second axis of the fixed frame and then about the first, with the order reversed. This is why Euler angle conventions can be written in two equivalent ways, and why a textbook has to fix a convention before comparing sequences.

**4. Equivalent Euler angle sets**

For a given rotation, there are usually several sets of Euler angles that produce it. For a Z–X–Z or Z–Y–X sequence, the angles can be recovered from the rotation matrix or the quaternion components using inverse trigonometric functions. These formulas typically yield two solutions, and the choice of branch changes the angles but not the final orientation. The degenerate case, where the middle angle reaches 0 or π in a Z–X–Z type sequence, is gimbal lock. There the first and third rotations act about the same axis, so infinitely many angle pairs give the same rotation.

**5. Why quaternions help**

Quaternions give a single algebraic test for equivalence: compute the product quaternion for each sequence and compare, allowing for the overall sign. They also avoid the singularities of Euler angles in the sense that the quaternion representation is always defined, even though extracting angles from it can still be ambiguous.
