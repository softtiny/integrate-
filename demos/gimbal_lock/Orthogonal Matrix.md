# Orthogonal Matrix

An **orthogonal matrix** is a square matrix whose columns and rows are orthonormal vectors. It's a fundamental concept in linear algebra with many important properties.

## Definition

A matrix **Q** is orthogonal if:

$$Q^T Q = Q Q^T = I$$

where $Q^T$ is the transpose of **Q** and **I** is the identity matrix.

Equivalently: $Q^T = Q^{-1}$

## Key Properties

1. **Preserves lengths**: For any vector **v**, ||**Q v**|| = ||**v**||
2. **Preserves angles**: The angle between vectors is unchanged after multiplication by **Q**
3. **Determinant**: det(**Q**) = ±1
4. **Inverse equals transpose**: Easy to invert computationally
5. **Columns are orthonormal**: Each column has length 1 and is perpendicular to other columns
6. **Rows are orthonormal**: Same property holds for rows
7. **Product of orthogonal matrices**: If **Q₁** and **Q₂** are orthogonal, so is **Q₁Q₂**

## Examples

**2×2 Rotation Matrix** (counterclockwise by angle θ):
$$Q = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}\\
Q^T=\begin{pmatrix}\cos\theta & sin\theta \\ -\sin\theta & cos\theta\end{pmatrix}\\
Q^{-1} = \frac{1}{\det Q}Adj(Q)\\
Q^{-1} = \frac{1}{\cos^2\theta+\sin^2\theta}\begin{pmatrix}\cos\theta & sin\theta \\ -\sin\theta & cos\theta\end{pmatrix}\\
Q^T=Q^{-1}
$$

**3×3 Permutation Matrix**:
$$Q = \begin{pmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$$


- Transpose
- Inverse 
    - determinant 
    - adjoint 
    - cofactor 
    - transpose 