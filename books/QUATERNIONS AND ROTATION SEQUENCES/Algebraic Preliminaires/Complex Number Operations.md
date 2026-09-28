
with z₁ = a + bi and z₂ = c + di:

- **Addition and subtraction** work component by component: z₁ + z₂ = (a + c) + (b + d)i. Geometrically this is vector addition in the plane.
- **Multiplication** follows from i² = -1: z₁z₂ = (ac - bd) + (ad + bc)i. It is commutative and associative.
- **Complex conjugate**: z̄ = a - bi. It satisfies z z̄ = a² + b², which is always real and non-negative.
- **Modulus (norm)**: |z| = √(z z̄) = √(a² + b²). It is multiplicative: |z₁z₂| = |z₁||z₂|. This property is the one that later generalizes to quaternions.
- **Division** uses the conjugate to make the denominator real: z₁/z₂ = z₁z̄₂ / |z₂|². The inverse is z⁻¹ = z̄ / |z|², so every nonzero complex number is invertible.
- **Conjugate of a product**: the conjugate of z₁z₂ is z̄₁z̄₂. For quaternions the order reverses, so the conjugate of pq is q̄p̄.

A book on quaternion rotations would likely stress that multiplying by a unit complex number (|z| = 1) is a pure 2D rotation, and that the norm and conjugate structure carries over, with the twist that multiplication stops being commutative.
