

## Multiplication

**Basic definition.** The product of several quaternions is the number whose extension (tensor) and turn (arc/versor) are built up from the resultants of the factors' individual extensions and turns, applied right-to-left:

- **Tensor:** T(⋯pqr) = ⋯ · Tp · Tq · Tr
- **Arc:** arc(⋯pqr) = arc r + arc q + arc p + ⋯

**Key structural facts:**

- A quaternion always splits as tensor × versor: q = Tq·Uq = Uq·Tq
- Consecutive factors can be grouped (associativity always holds), but factors can only be *reordered* without changing the product if they are **cocircular** (share the same great circle) — multiplication is not generally commutative.
- A scalar factor may be moved to any position in a product without changing its value.
- The product of two numbers with **opposite turns** equals the product of their tensors (a pure scalar). Conversely, if a product of two numbers is scalar, their turns are opposite.
- **Conjugate of a product** reverses order: K(pqr) = Kr·Kq·Kp
- **Reciprocal of a product** reverses order: (pqr)⁻¹ = r⁻¹q⁻¹p⁻¹

**Vectors specifically:**
- The square of a vector is negative: α² = −(Tα)²
- Product of two *perpendicular* vectors is itself a vector (this is essentially the cross product): OA·OB = OC, with OC perpendicular to both, direction given by a right-hand-style rotation rule, and length = area of the rectangle on the two factors.
- Product of two *parallel* vectors is a scalar: AB·CD = CD·AB (commutative here), and it's negative if the vectors point the same way, positive if opposite.
- Famous identity: **i² = j² = k² = ijk = −1**, with jk = i = −kj, ki = j = −ik, ij = k = −ji — the seed of quaternion algebra.

## Formulas — "For Exercise and Reference"

This is Hathaway's consolidated reference list. Selected highlights:

**Polar/exponential form:**
- q = Sq + Vq (scalar + vector parts), Kq = Sq − Vq
- q = r(cos θ + ε sin θ) = re^(εθ), where r = Tq, θ = ∠q, ε = UVq (unit vector along q's axis)
- Sq = ½(q + Kq), Vq = ½(q − Kq)
- Tq² = q·Kq = (Sq)² + (TVq)²
- q⁻¹ = Kq / (Tq)²

**Products/expansions of vectors α, β, γ:**
- Kα = −α (conjugate of a pure vector is its negative)
- Kαβ = βα, Sαβ = Sβα, Vαβ = −Vβα
- **αβ + βα = 2Sαβ** and **αβ − βα = 2Vαβ** — these are the quaternion analogues of dot and cross products
- (α ± β)² = α² ± 2Sαβ + β²
- Kαβγ = −γβα, and αβγ − γβα = 2Sαβγ = −2Sγβα
- The "expansion formula" (very important): 
  **Vαβγ = αSβγ − βSγα + γSαβ**
  (a vector triple-product identity)
- Related: **VαVβγ = −βSγα + γSαβ**, and the four-vector identity
  **δSαβγ = αSβγδ + βSγαδ + γSαβδ**

**In terms of i, j, k :** for ρ = xi + yj + zk, ρ′ = x′i + y′j + z′k:
- −ρ² = x² + y² + z² = Tρ² (length squared)
- −Sρρ′ = xx′ + yy′ + zz′ (dot product, with sign)
- Vρρ′ is given by the familiar determinant/cross-product formula
- −Sρρ′ρ″ is the 3×3 determinant of coordinates (scalar triple product / volume)

