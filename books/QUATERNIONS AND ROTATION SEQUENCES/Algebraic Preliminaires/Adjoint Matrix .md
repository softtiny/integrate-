
**The Adjoint Matrix**


- **Terminology**: "adjoint" is used in two different senses, and books differ on which they mean. In the classical sense, the adjoint (or adjugate) of a square matrix A is the transpose of its cofactor matrix: adj(A) = Cᵀ. In the other sense, common in complex linear algebra and quantum mechanics, the adjoint is the conjugate transpose, A† = (Ā)ᵀ. For real matrices the second reduces to the ordinary transpose.

- **Defining property**: the classical adjoint satisfies

$$A\,\mathrm{adj}(A) = \mathrm{adj}(A)\,A = \det(A)\,I$$

- **Inverse formula**: when det A ≠ 0,

$$A^{-1} = \frac{\mathrm{adj}(A)}{\det A}$$

- **2×2 example**: for A with rows (a, b) and (c, d), adj(A) has rows (d, −b) and (−c, a). Multiplying A by it gives (ad − bc)I, as expected.

- **Properties**: adj(AB) = adj(B) adj(A), adj(Aᵀ) = adj(A)ᵀ, and for an n×n matrix det(adj A) = (det A)^(n−1).

- **Relevance to rotations**: for an orthogonal matrix with det = +1, adj(A) = A⁻¹ = Aᵀ. This gives a quick way to see that the inverse of a rotation is its transpose, which is why undoing a rotation is cheap computationally.

- **Quaternion parallel**: the quaternion conjugate q̄ plays a similar role to the adjoint, since q⁻¹ = q̄/|q|², mirroring A⁻¹ = adj(A)/det A.

