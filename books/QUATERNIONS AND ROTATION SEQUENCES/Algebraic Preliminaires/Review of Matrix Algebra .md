**Review of Matrix Algebra**


- **Matrices and notation**: an m×n array of numbers. Vectors are treated as column matrices (n×1), and the transpose Aᵀ swaps rows and columns.

- **Addition and scalar multiplication**: entry by entry, defined only for matrices of the same size.

- **Matrix multiplication**: if A is m×n and B is n×p, then (AB)ᵢⱼ = Σₖ AᵢₖBₖⱼ. It is associative and distributive, but generally **not commutative**: AB ≠ BA. This is the property that explains why 3D rotations, which are represented by matrices, depend on order.

- **Transpose of a product**: (AB)ᵀ = BᵀAᵀ. The order reverses, which parallels the quaternion conjugate rule for pq.

- **Identity and inverse**: AI = IA = A. A square matrix A is invertible if there is an A⁻¹ with AA⁻¹ = A⁻¹A = I, and (AB)⁻¹ = B⁻¹A⁻¹.

- **Determinant**: a scalar for square matrices, with det(AB) = det(A)det(B). A matrix is invertible exactly when its determinant is nonzero. For rotations, the determinant is +1.

- **Orthogonal matrices**: those satisfying AᵀA = I, so A⁻¹ = Aᵀ. They preserve lengths and angles. Those with det = +1 form the rotation group SO(3), and those with det = −1 include reflections.

- **Special matrices**: symmetric (A = Aᵀ), skew-symmetric (A = −Aᵀ), diagonal, and the trace (sum of diagonal entries). Skew-symmetric 3×3 matrices are closely tied to the cross product and to infinitesimal rotations.

- **Eigenvalues and eigenvectors**: Av = λv. For a 3D rotation matrix, the eigenvector with eigenvalue 1 is the rotation axis, which is the content of Euler's rotation theorem.