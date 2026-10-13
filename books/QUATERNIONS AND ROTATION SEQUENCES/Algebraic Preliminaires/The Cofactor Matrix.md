

**The Cofactor Matrix**

- **Minors**: the minor Mᵢⱼ of a square matrix A is the determinant of the submatrix left after deleting row i and column j.

- **Cofactors**: the cofactor is Cᵢⱼ = (−1)^(i+j) Mᵢⱼ. The sign factor follows a checkerboard pattern:

$$\begin{pmatrix} + & - & + \\ - & + & - \\ + & - & + \end{pmatrix}$$

- **The cofactor matrix**: the matrix C whose (i, j) entry is the cofactor Cᵢⱼ.

- **Determinant by cofactor expansion**: expanding along any row i gives det A = Σⱼ aᵢⱼ Cᵢⱼ, and the same works along any column.

- **The adjugate and the inverse**: the adjugate (classical adjoint) is the transpose of the cofactor matrix, adj(A) = Cᵀ. It satisfies A·adj(A) = det(A)·I, so

$$A^{-1} = \frac{1}{\det A}\,\mathrm{adj}(A) = \frac{1}{\det A}\,C^{T}$$

This works only when det A ≠ 0.

- **2×2 example**: for A with rows (a, b) and (c, d), the cofactor matrix has rows (d, −c) and (−b, a). Transposing gives the adjugate, so A⁻¹ = (1/(ad − bc)) times the matrix with rows (d, −b) and (−c, a).

- **Relevance to rotations**: for an orthogonal matrix with det = +1, A⁻¹ = Aᵀ, so the formula implies that the cofactor matrix of a rotation matrix equals the matrix itself (C = A). This is a handy check, and it reflects the fact that each entry of a proper rotation matrix equals its own cofactor.
