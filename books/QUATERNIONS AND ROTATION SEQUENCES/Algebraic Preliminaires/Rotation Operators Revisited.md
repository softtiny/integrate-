

**Rotation Operators Revisited**

- **Rotation as a matrix operator**: the planar rotation, previously written as multiplication by e^{iθ}, is now written as a 2×2 matrix acting on a coordinate column vector:

$$\begin{pmatrix} x' \\ y' \end{pmatrix} = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}\begin{pmatrix} x \\ y \end{pmatrix}$$

- **Equivalence of the two descriptions**: the complex number x + iy and the column vector (x, y) carry the same information, and the matrix is exactly the real-matrix representation of multiplication by cos θ + i sin θ. The correspondence a + bi ↔ the matrix with rows (a, −b) and (b, a) preserves addition and multiplication.

- **Verifying the properties with matrix tools**: R(θ) is orthogonal, since RᵀR = I. Its determinant is cos²θ + sin²θ = 1. Its inverse is Rᵀ = R(−θ), and R(θ₁)R(θ₂) = R(θ₁ + θ₂).

- **Operator vs. coordinate change**: rotating a vector while the axes stay fixed (active) differs from rotating the axes while the vector stays fixed (passive). The two matrices are transposes (inverses) of each other. This distinction matters a great deal in the 3D case, so it is likely emphasized here.

- **Extension to 3D**: the same pattern gives rotation matrices about the coordinate axes, for example about the z axis:

$$R_z(\theta) = \begin{pmatrix} \cos\theta & -\sin\theta & 0 \\ \sin\theta & \cos\theta & 0 \\ 0 & 0 & 1 \end{pmatrix}$$

Similar matrices exist for the x and y axes. Unlike the planar case, these do not commute in general, so R_x(α)R_z(β) ≠ R_z(β)R_x(α), which is the central difficulty that rotation sequences bring.

- **Setting up quaternions**: the section likely ends by raising the question of whether a compact operator, analogous to the unit complex number, can represent a general 3D rotation. This leads toward the quaternion operator q v q̄ later in the book.