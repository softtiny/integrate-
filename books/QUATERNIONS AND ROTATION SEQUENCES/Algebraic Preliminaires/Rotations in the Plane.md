

**Rotations in the Plane**


- **Rotation as multiplication by a unit complex number**: a point z = x + iy rotated counterclockwise by angle θ about the origin becomes z′ = e^{iθ} z = (cos θ + i sin θ)(x + iy). Expanding gives:

$$x' = x\cos\theta - y\sin\theta, \qquad y' = x\sin\theta + y\cos\theta$$

- **Matrix form**: the same rotation written as a 2×2 matrix acting on the column vector (x, y):

$$R(\theta) = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$$

This matrix is orthogonal (RᵀR = I) with determinant +1. These two properties characterize rotations and rule out reflections.

- **Composition of rotations**: R(θ₁)R(θ₂) = R(θ₁ + θ₂). In complex form this is e^{iθ₁}e^{iθ₂} = e^{i(θ₁+θ₂)}. Because angles simply add, planar rotations commute, so the order doesn't matter.

- **Preservation of length and angle**: |e^{iθ}z| = |z|, so rotations are isometries. This is why only unit-modulus numbers are used for pure rotation.

- **Active vs. passive view**: rotating the point while the axes stay fixed is the opposite of rotating the axes while the point stays fixed, and the two differ by the sign of θ. Rotation books are careful about this convention, because mixing them up is a common source of errors later.

- **The bridge to 3D**: in the plane, rotations form a commutative group (one parameter, θ). In 3D, rotations about different axes do not commute, and this is the key difference that motivates quaternions. The planar case is the template, with a unit complex number e^{iθ} replaced later by a unit quaternion.