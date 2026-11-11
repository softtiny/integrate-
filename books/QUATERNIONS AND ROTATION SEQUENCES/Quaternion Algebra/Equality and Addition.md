

**Equality.** Two quaternions are equal exactly when all four components match:

p = q if and only if p₀ = q₀, p₁ = q₁, p₂ = q₂, p₃ = q₃

Because a quaternion is a 4‑tuple of reals written in the basis {1, i, j, k}, equality is componentwise. Equality of the scalar part and the vector part separately is the same condition, since the vector part is just the last three components. In particular, q = 0 means all four components are zero.

**Addition.** Addition is also componentwise:

$$p + q = (p₀ + q₀) + (p₁ + q₁)i + (p₂ + q₂)j + (p₃ + q₃)k$$

Some properties follow directly from this:

- **Commutative:** $p + q = q + p$
- **Associative:** $(p + q) + r = p + (q + r)$
- **Identity:** $q + 0 = q$, where $0 = 0 + 0i + 0j + 0k$
- **Inverse under addition:** $q + (−q) = 0$, where $−q = −q₀ − q₁i − q₂j − q₃k$
- **Scalar multiplication:** for a real number c, $cq = cq₀ + cq₁i + cq₂j + cq₃k$

Together these show that the quaternions form a vector space over the reals, of dimension 4. Addition does not involve the multiplication rules for i, j, k at all, so the non‑commutativity of quaternion multiplication doesn't come into play here.

**A small example.** If $p = 1 + 2i − j and q = 3 − i + 4k$, then

$$p + q = 4 + i − j + 4k$$
