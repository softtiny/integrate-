

**The definition.** A quaternion is an expression of the form

q = q₀ + q₁i + q₂j + q₃k

where q₀, q₁, q₂, q₃ are real numbers. The symbols i, j, k are three independent "imaginary" units, and they obey:

- i² = j² = k² = −1
- ij = k, jk = i, ki = j
- ji = −k, kj = −i, ik = −j

These rules are the heart of the algebra. Note that multiplication is **not commutative**: ij = k but ji = −k, so the order of factors matters.

**Structure.**
- **Scalar part:** q₀. **Vector part:** q₁i + q₂j + q₃k. This split is often written q = (q₀, **v**).
- Quaternions form a 4‑dimensional vector space over the reals. They are a *division algebra*, meaning every nonzero element has a multiplicative inverse. This makes them the largest such algebra over the reals, apart from the reals and complex numbers themselves.

**Conjugate and norm.**
- The conjugate is q* = q₀ − q₁i − q₂j − q₃k.
- The norm is N(q) = qq* = q₀² + q₁² + q₂² + q₃², which is always real and nonnegative. Its square root, |q|, is the length of the quaternion as a 4‑vector.
- The norm is multiplicative: |pq| = |p||q|. This property is why quaternions are useful for rotations.
- The inverse is q⁻¹ = q*/|q|².

**Connection to rotations.** This is what matters most for a book on rotation sequences. A *unit quaternion* (|q| = 1) can represent a 3D rotation. For a rotation by angle θ about a unit axis **u**, the quaternion is

q = cos(θ/2) + sin(θ/2)·**u**

A vector **v** is rotated by the map **v** ↦ q**v**q*. Composing rotations corresponds to multiplying their quaternions, and because multiplication is non‑commutative, the order of the rotations matters, which is exactly the issue that arises in rotation sequences such as Euler angles.

