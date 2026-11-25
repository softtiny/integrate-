

**the action of a unit quaternion on a pure vector.** Let q be a unit quaternion and v a pure quaternion (v₀ = 0). The operator action is

v′ = q v q*

This is a rotation: |v′| = |v|, and v′ is pure. If q = cos(θ/2) + sin(θ/2)**u**, then v′ is v rotated by angle θ about **u**.


Let q = (1 + k)/√2, a 90° rotation about the z-axis, and v = i. Then

q i q* = j (computed earlier in this series)

so the x-axis goes to the y-axis.


**the product of a vector with a quaternion.** Here, "kq" the ordinary quaternion product of k and q. Note the order: kq and qk generally differ, because multiplication is not commutative. For example, with k and q as basis-type units:
- ik = −j, but ki = j

