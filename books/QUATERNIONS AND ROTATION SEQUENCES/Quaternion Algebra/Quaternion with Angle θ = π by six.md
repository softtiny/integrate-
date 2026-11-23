

**The general form.** A rotation by angle θ about a unit axis **u** = (u₁, u₂, u₃) is represented by

q = cos(θ/2) + sin(θ/2)(u₁i + u₂j + u₃k)

The half-angle is what matters here. So for θ = π/6, you use θ/2 = π/12.

**Computing the components.**
- cos(π/12) = (√6 + √2)/4 ≈ 0.9659
- sin(π/12) = (√6 − √2)/4 ≈ 0.2588

So the scalar part is about 0.9659, and the vector part is 0.2588 times the axis.

**Two common cases.**
- About the x-axis: q = cos(π/12) + sin(π/12)i ≈ 0.9659 + 0.2588i
- About the z-axis: q = cos(π/12) + sin(π/12)k ≈ 0.9659 + 0.2588k

**Checks.**
- Norm: N(q) = cos²(π/12) + sin²(π/12) = 1, so q is a unit quaternion, as required.
- Inverse: q⁻¹ = q* = cos(π/12) − sin(π/12)**u**, which is the rotation by −π/6.
- Double angle: q² = cos(π/6) + sin(π/6)**u** gives the rotation by the full angle π/6, which is a useful check on the half-angle convention.

**Applying it to a vector.** For the z-axis case and v = i, the rotated vector is q i q*. Expanding this with the product rules gives the x-axis vector rotated by π/6 in the xy-plane, namely cos(π/6)i + sin(π/6)j ≈ 0.8660i + 0.5j. 