
## 1. Linearity

Define the operator on quaternions by L_q(v) = qvq*, where q is a fixed quaternion.

**Additivity.** By distributivity of multiplication over addition, and additivity of conjugation,

L_q(v + w) = q(v + w)q* = qvq* + qwq* = L_q(v) + L_q(w)

**Homogeneity.** For a real scalar c, c is central, so

L_q(cv) = q(cv)q* = c(qvq*) = c L_q(v)

So L_q is linear over the reals.

**It maps pure quaternions to pure quaternions.** Let x = qvq* with v pure, so v* = −v. Using (pq)* = q*p*,

x* = (qvq*)* = q v* q* = −qvq* = −x

Since x* = −x, the scalar part of x is zero, so x is pure. Thus L_q restricts to a linear map of the 3-dimensional space of pure quaternions, which is identified with ℝ³. That restriction is the one that corresponds to a 3×3 matrix.

## 2. Operator norm

For a linear map L on ℝ³ with the Euclidean norm, the operator norm is

‖L‖ = sup over |v| = 1 of |L(v)|

It measures the largest factor by which L stretches a vector.

**Key identity.** Using multiplicativity of the norm, N(pq) = N(p)N(q), and N(q*) = N(q),

|qvq*| = |q| |v| |q*| = N(q) |v|

So for any q, the operator scales lengths by the factor N(q) = |q|².

**Unit quaternions.** If |q| = 1, then |L_q(v)| = |v| for every v. Every unit vector maps to a unit vector, so

‖L_q‖ = 1

The operator is therefore an isometry, meaning it preserves length. In general, ‖L_q‖ = |q|².

## 3. Proof that the operator is a rotation

A linear map of ℝ³ is a rotation exactly when it is **orthogonal** (it preserves the dot product) and has **determinant +1** (it is not a reflection). I'll prove both for a unit quaternion q.

**Step 1: preserves length.** Shown above: |L_q(v)| = |v|.

**Step 2: preserves the dot product.** Polarization gives

u · v = ½(|u + v|² − |u|² − |v|²)

Since L_q is linear and preserves lengths,

L_q(u) · L_q(v) = ½(|L_q(u + v)|² − |L_q(u)|² − |L_q(v)|²) = ½(|u + v|² − |u|² − |v|²) = u · v

Preserving the dot product means the matrix R of L_q satisfies RᵀR = I, so R is orthogonal.

**Step 3: determinant is +1.** An orthogonal matrix has determinant ±1. There are two ways to see that it is +1:

- *Continuity.* The determinant of R(q) varies continuously with q. The unit quaternions form S³, which is connected. At q = 1, R = I and det = 1. A continuous function on a connected set with values in {−1, +1} can't switch between them, so det = 1 for all unit q.
- *Direct computation.* Using the explicit matrix from quaternion components, the determinant equals (q₀² + q₁² + q₂² + q₃²)³. For a unit quaternion this is 1.

Therefore L_q is an orthogonal map with determinant +1, which is a rotation.

## 4. Identifying the axis and angle

The proof above shows L_q is a rotation, but it doesn't say which one. Write q = c + s**u**, with c = cos(θ/2), s = sin(θ/2), and **u** a unit pure quaternion, so **u**² = −1.

**Axis.** Since q and **u** commute (both lie in the span of 1 and **u**),

L_q(**u**) = q**u**q* = **u** q q* = **u**

So **u** is fixed, and it is the axis of rotation.

**Angle.** Take a unit pure vector **v** perpendicular to **u**. Then **uv** = −**vu**, and **uvu** = −**v**. Expanding,

q**v**q* = (c + s**u**)**v**(c − s**u**) = c²**v** + 2cs **uv** − s² **uvu** = (c² − s²)**v** + 2cs **uv**

Since c² − s² = cos θ and 2cs = sin θ, this gives

L_q(**v**) = cos θ **v** + sin θ (**u** × **v**)

Here **u** × **v** is the unit vector perpendicular to both **u** and **v**. This is a rotation by angle θ about **u**, in the right-handed sense. Combined with the earlier steps, it shows that L_q is the rotation by θ about **u**.

## Summary

- L_q is linear, and it maps pure quaternions to pure quaternions.
- ‖L_q‖ = |q|², so for unit q the operator is an isometry with norm 1.
- For unit q, L_q preserves dot products and has determinant 1, so it is a rotation.
- The axis is **u**, and the angle is θ = 2 arccos(c).
