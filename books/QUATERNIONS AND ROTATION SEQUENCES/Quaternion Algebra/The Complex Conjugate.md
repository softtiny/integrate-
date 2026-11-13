

**Definition.** For q = q₀ + q₁i + q₂j + q₃k, the conjugate is

q* = q₀ − q₁i − q₂j − q₃k

Only the vector part changes sign. In scalar-vector form, q = (q₀, **q**) gives q* = (q₀, −**q**). The conjugate is sometimes written q̄.

**Why it matters: the norm.** Multiplying a quaternion by its conjugate gives a real number:

qq* = q*q = q₀² + q₁² + q₂² + q₃² = N(q)

Since N(q) is real and nonnegative, the norm |q| = √N(q) is the Euclidean length of q as a 4-vector. This is the link that makes quaternions a division algebra. For q ≠ 0, the inverse is

q⁻¹ = q*/|q|²

**Basic properties.**
- **Involution:** (q*)* = q
- **Linearity:** (p + q)* = p* + q*, and (cq)* = cq* for real c
- **Reverses order:** (pq)* = q*p*. Note the reversal, which matters because multiplication is not commutative.
- **Real and vector parts:** q + q* = 2q₀ and q − q* = 2(q₁i + q₂j + q₃k). So q is real exactly when q* = q, and it is pure vector exactly when q* = −q.
- **Norm is preserved:** |q*| = |q|

**Example.** Let q = 3 + 2i − j + 4k. Then

- q* = 3 − 2i + j − 4k
- N(q) = 9 + 4 + 1 + 16 = 30
- qq* = 30, and q⁻¹ = (3 − 2i + j − 4k)/30

**Connection to rotations.** For a unit quaternion q, q* = q⁻¹. A rotation of a vector **v** is written as **v** ↦ q**v**q*, and the conjugate appears on the right side for this reason. Keeping track of q and q* in each rotation is central to working with rotation sequences.
