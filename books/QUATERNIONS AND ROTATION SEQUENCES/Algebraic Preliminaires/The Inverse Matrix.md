

**The Inverse Matrix**


- **Definition**: for a square matrix A, the inverse A⁻¹ satisfies AA⁻¹ = A⁻¹A = I. If it exists, it is unique.

- **Existence**: A is invertible (nonsingular) exactly when det A ≠ 0. Otherwise it is singular and has no inverse.

- **Adjugate formula**: A⁻¹ = adj(A)/det(A), which follows from the cofactor expansion covered in the preceding sections. For a 2×2 matrix with rows (a, b) and (c, d):

$$A^{-1} = \frac{1}{ad - bc}\begin{pmatrix} d & -b \\ -c & a \end{pmatrix}$$

- **Properties**:
  - (A⁻¹)⁻¹ = A
  - (AB)⁻¹ = B⁻¹A⁻¹ (the order reverses)
  - (Aᵀ)⁻¹ = (A⁻¹)ᵀ
  - det(A⁻¹) = 1/det(A)

- **Solving linear systems**: if Ax = b with A invertible, then x = A⁻¹b. In practice, elimination is usually preferred numerically over forming the inverse explicitly.

- **Orthogonal matrices**: if AᵀA = I, then A⁻¹ = Aᵀ. This is the case for rotation matrices, so inverting a rotation costs only a transpose. Geometrically, the inverse of a rotation by θ about an axis is a rotation by −θ about the same axis.

- **Reversing a sequence of rotations**: since (R₂R₁)⁻¹ = R₁⁻¹R₂⁻¹, undoing a sequence of rotations means undoing each one in reverse order. This ties directly to the book's theme of rotation sequences.

- **Quaternion parallel**: the quaternion inverse is q⁻¹ = q̄/|q|², and for a unit quaternion q⁻¹ = q̄, just as the inverse of a rotation matrix is its transpose.
