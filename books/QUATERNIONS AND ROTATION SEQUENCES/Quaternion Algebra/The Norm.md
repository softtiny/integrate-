

**Definition.** For q = q₀ + q₁i + q₂j + q₃k, the norm is

N(q) = qq* = q₀² + q₁² + q₂² + q₃²

Some texts define the norm as N(q) and others as the length |q| = √N(q). Kuipers may use either, so check which one the section uses.

**Why it is real and nonnegative.** Multiplying q by its conjugate q* = q₀ − q₁i − q₂j − q₃k, the cross terms cancel. Every i, j, k term drops out, leaving only the sum of squares. Since each square is nonnegative, N(q) ≥ 0, and N(q) = 0 only when q = 0.

**Length.** The length |q| = √N(q) is the Euclidean length of q viewed as a 4-vector (q₀, q₁, q₂, q₃). This is the same length used in ordinary 4D geometry.

**Multiplicativity.** The most important property is

N(pq) = N(p)N(q), equivalently |pq| = |p||q|

This follows from the fact that (pq)* = q*p*, so N(pq) = pq q*p* = p(qq*)p* = N(q)·pp* = N(p)N(q), using the fact that N(q) is real and so commutes with everything. This property is what makes quaternions a division algebra and is why unit quaternions form a group under multiplication.

**Other properties.**
- N(q*) = N(q)
- N(cq) = c²N(q) for real c
- N(q) = 1 for a unit quaternion, which is the case used to represent rotations

**Example.** For q = 3 + 2i − j + 4k:

N(q) = 9 + 4 + 1 + 16 = 30, so |q| = √30 ≈ 5.48.

**Connection to rotations.** The norm is what makes rotations work. A rotation is represented by a unit quaternion (N(q) = 1), and because the norm is multiplicative, composing two rotations gives another unit quaternion, so the result is again a rotation. Rotating a vector by v ↦ qvq* also preserves its length, since N(qvq*) = N(q)²N(v) = N(v).
