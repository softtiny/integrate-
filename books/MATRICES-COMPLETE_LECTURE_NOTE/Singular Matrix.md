# Singular Matrix

if $A$ is square matrix of order $n$, the $A$  is called singular matrix when $\vert A \vert  = 0$ and non-singular otherwise.


| **Property**             | **Singular Matrix**                      | **Non-Singular Matrix**                        |
|--------------------------|------------------------------------------|------------------------------------------------|
| Determinant              | =0                                       | ≠0                                             |
| Invertibility            | No inverse exists                        | Unique inverse exists                          |
| Rank                     | Less than matrix dimension               | Equal to matrix dimension                      |
| Linear Dependence        | Rows/columns are linearly dependent      | All rows/columns are linearly independent      |
| Eigenvalues              | At least one eigenvalue is zero          | All eigenvalues are non-zero                   |
| Null Space               | Contains non-zero vectors                | Contains only the zero vector                  |
| Geometric Interpretation | Transformation collapses space dimension | Transformation preserves space dimension       |
| Condition Number         | Infinite                                 | Finite positive value                          |
| Computational Stability  | Numerically unstable operations          | Generally stable for well-conditioned matrices |
|                          |                                          |                                                |
|                          |                                          |                                                |


#### Simple $2×2$ singular matrix

```math
A = \begin{bmatrix}
2 & 4 \\
1 & 2
\end{bmatrix}\\
\vert A \vert  = 0
```

##### about non-singular (invertible matrix )