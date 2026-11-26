
A unit quaternion q = q₀ + q₁i + q₂j + q₃k acts on vectors by v ↦ qvq*. Since this map is linear in v, it can be written as a 3×3 rotation matrix R(q) acting on the component column of v. Converting between quaternions and matrices lets you use whichever form is more convenient.

**The matrix.** For a unit quaternion (q₀² + q₁² + q₂² + q₃² = 1):

R(q) =
[ 1 − 2(q₂² + q₃²)   2(q₁q₂ − q₀q₃)   2(q₁q₃ + q₀q₂) ]
[ 2(q₁q₂ + q₀q₃)   1 − 2(q₁² + q₃²)   2(q₂q₃ − q₀q₁) ]
[ 2(q₁q₃ − q₀q₂)   2(q₂q₃ + q₀q₁)   1 − 2(q₁² + q₂²) ]

Equivalently, using the identity 1 = q₀² + q₁² + q₂² + q₃², the diagonal entries can be written as q₀² + q₁² − q₂² − q₃², and so on. The two forms are the same for unit quaternions.

**Why it works.** Apply the sandwich map to the basis vectors. For example, with v = i, the result qiq* has components given by the first column of R(q). This is how the entries above arise from the product rules.

**Checks.**
- For the identity quaternion q = 1, all off-diagonal terms vanish and R = I.
- For a 90° rotation about z, q = (1 + k)/√2, so q₀ = q₃ = 1/√2 and q₁ = q₂ = 0. Then the matrix becomes [[0, −1, 0], [1, 0, 0], [0, 0, 1]], which sends i to j, matching the earlier calculation.
- The matrix R(q) is orthogonal with determinant 1, as a rotation matrix must be.

**Going from a matrix back to a quaternion.** Given R with trace t = R₁₁ + R₂₂ + R₃₃, one standard route is

q₀ = ½√(1 + t)

and then the other components follow from differences of off-diagonal entries, for example q₁ = (R₃₂ − R₂₃)/(4q₀). This route fails when q₀ is near zero, so texts use a case-based method in that situation, and Kuipers may do the same.

**Composition.** Since q₂q₁ corresponds to R(q₂)R(q₁), composing quaternions in order matches multiplying their matrices in the same order. Keep the convention consistent across both forms.
