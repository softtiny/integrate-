

**The Determinant**


- **Definition for small matrices**: for a 2×2 matrix with rows (a, b) and (c, d), det = ad − bc. For a 3×3 matrix, it can be computed by cofactor expansion along a row or column, for example

$$\det A = a_{11}(a_{22}a_{33} - a_{23}a_{32}) - a_{12}(a_{21}a_{33} - a_{23}a_{31}) + a_{13}(a_{21}a_{32} - a_{22}a_{31})$$

- **Minors and cofactors**: the minor Mᵢⱼ is the determinant left after deleting row i and column j, and the cofactor is (−1)^(i+j) Mᵢⱼ. Cofactors also give a formula for the inverse: A⁻¹ = adj(A)/det(A).

- **Geometric meaning**: the absolute value of the determinant is the factor by which the matrix scales area (2D) or volume (3D). The sign tells you whether orientation is preserved (positive) or flipped (negative).

- **Key properties**:
  - det(AB) = det(A) det(B)
  - det(Aᵀ) = det(A)
  - det(A⁻¹) = 1/det(A)
  - swapping two rows changes the sign
  - a matrix is invertible exactly when det ≠ 0

- **Link to the cross product and triple product**: the scalar triple product a · (b × c) equals the determinant of the matrix whose columns are a, b, c. It gives the signed volume of the parallelepiped they span.

- **Relevance to rotations**: for an orthogonal matrix, det(A)² = det(AᵀA) = 1, so det = ±1. Proper rotations have det = +1, while reflections and other improper transformations have det = −1. This is why a rotation matrix preserves volume and handedness.
