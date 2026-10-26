Take a rotation of 90° about the z-axis, which sends x to y and y to −x.

The rotation matrix is

$$R = \begin{bmatrix}
0 & −1 & 0\\
1 &  0 & 0\\
0 &  0 & 1
\end{bmatrix}$$

Its trace is 1, so cos θ = (1 − 1)/2 = 0, giving θ = 90°. The antisymmetric part gives the axis: (R₃₂ − R₂₃, R₁₃ − R₃₁, R₂₁ − R₁₂) = (0, 0, 2), which points along +z, so the axis is (0, 0, 1).

The corresponding unit quaternion uses half the angle:

q = cos 45° + sin 45° k = (√2/2)(1 + k)

To check it, apply v ↦ q v q* to v = x = i. Since q is a rotation about k by 90°, the result should be j, and it is.
