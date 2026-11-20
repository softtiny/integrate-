Incremental Test Quaternion


A common construction of that kind is the **incremental quaternion**, which represents a small rotation of angle Δθ about a unit axis **u**:

δq = cos(Δθ/2) + sin(Δθ/2)·**u** ≈ 1 + (Δθ/2)·**u**

The approximation holds because cos(x) ≈ 1 and sin(x) ≈ x for small x. Such quaternions are useful for updating an orientation step by step. If q(t) is the current orientation, the next one is

q(t + Δt) = q(t)·δq

Since this product can drift slightly from unit length due to rounding, a "test" might check that N(δq) = 1 or renormalize the result. 

For example, with angular velocity ω = 2 rad/s about the z-axis and Δt = 0.01 s, the rotation step is Δθ = 0.02 rad, so

δq = cos(0.01) + sin(0.01)k ≈ 1 + 0.01k

Checking the norm: N(δq) = cos²(0.01) + sin²(0.01) = 1.

for pure quaternions the clean identity is pq + qp = −2(**p**·**q**). 