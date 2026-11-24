

**The operator.** For a unit quaternion q, define the map on pure quaternions (vectors) v by

$L_{q}(v) = qvq^*$

This maps vectors to vectors, because the scalar part of the result is zero whenever v is pure. It also preserves length, since N(qvq*) = N(q)²N(v) = N(v). It is a rotation, and it is the rotation about the axis of q by angle θ, where q = cos(θ/2) + sin(θ/2)**u**.

**Algorithm for applying the operator.**
1. Write the vector as a pure quaternion: v = 0 + v₁i + v₂j + v₃k.
2. Form the conjugate q* = q₀ − q₁i − q₂j − q₃k.
3. Compute the intermediate product w = qv using the general product rule.
4. Compute the result qvq* = w q*, again with the general product rule.
5. Read off the vector part. The scalar part should be zero, which is a useful check.

Computing this directly takes two full quaternion multiplications. A shorter route uses only the vector parts. Writing q = (q₀, **q**), with q₀ the scalar part and **q** the vector part, the rotated vector is

L_q(**v**) = **v** + 2q₀(**q** × **v**) + 2**q** × (**q** × **v**)

This is the form most implementations use.

**Converting to a rotation matrix.** Applying L_q to the basis vectors i, j, k and collecting the results as columns gives the 3×3 rotation matrix. For a unit quaternion q = q₀ + q₁i + q₂j + q₃k:

R = 
[ 1 − 2(q₂² + q₃²)   2(q₁q₂ − q₀q₃)   2(q₁q₃ + q₀q₂) ]
[ 2(q₁q₂ + q₀q₃)   1 − 2(q₁² + q₃²)   2(q₂q₃ − q₀q₁) ]
[ 2(q₁q₃ − q₀q₂)   2(q₂q₃ + q₀q₁)   1 − 2(q₁² + q₂²) ]

Then L_q(**v**) = R**v** for every vector **v**.

**Converting back.** Given a rotation matrix R with trace t = R₁₁ + R₂₂ + R₃₃, one standard method is

- q₀ = ½√(1 + t)
- q₁ = (R₃₂ − R₂₃)/(4q₀), q₂ = (R₁₃ − R₃₁)/(4q₀), q₃ = (R₂₁ − R₁₂)/(4q₀)

This works when q₀ is not near zero. When t is near −1, a different branch that divides by the largest diagonal term is used for numerical stability.

**Worked check.** Take q = (1 + k)/√2, so q₀ = q₃ = 1/√2 and q₁ = q₂ = 0. The matrix formula gives

R = [ 0 −1 0 ; 1 0 0 ; 0 0 1 ]

This is a 90° rotation about the z-axis, which sends i to j. Using the vector form with **q** = k/√2 and **v** = i:

- **q** × **v** = (1/√2)(k × i) = j/√2
- 2q₀(**q** × **v**) = 2(1/√2)(j/√2) = j
- **q** × (**q** × **v**) = (1/√2)(k × j/√2) = −i/2, so 2**q** × (**q** × **v**) = −i
- L_q(i) = i + j − i = j ✓

**Checking conventions.** Two things commonly differ between texts and should be checked against Kuipers:
- **Active vs. passive rotation.** Some books define the operator as q*vq, which rotates the coordinate frame instead of the vector. This transposes the matrix above.
- **Order of composition.** Combined rotations multiply as q₂q₁ when q₁ is applied first, as noted earlier.
