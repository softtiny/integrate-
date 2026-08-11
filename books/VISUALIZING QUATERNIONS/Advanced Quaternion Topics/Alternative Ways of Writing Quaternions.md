
## The Alternative Notations

**1. Scalar + Vector Pair**
$$q = (s, \vec{v}) = (s, v_1, v_2, v_3)$$
Treats a quaternion as a real scalar $s$ paired with a 3D vector $\vec{v}$. This is convenient because quaternion multiplication then splits naturally into dot and cross products:
$$q_1 q_2 = (s_1 s_2 - \vec{v}_1 \cdot \vec{v}_2, \; s_1\vec{v}_2 + s_2\vec{v}_1 + \vec{v}_1 \times \vec{v}_2)$$

**2. The $i, j, k$ Basis Form**
$$q = w + xi + yj + zk$$
with $i^2 = j^2 = k^2 = ijk = -1$. This is Hamilton's original notation and the most common textbook form.

**3. Pair of Complex Numbers (Cayley–Dickson construction)**
$$q = z_1 + z_2 j, \quad z_1 = w + xi, \; z_2 = y + zi$$
Quaternions as an "extension" of complex numbers, doubling up two complex numbers the same way complex numbers double up two reals. This generalizes to octonions.

**4. 2×2 Complex Matrix Representation**
$$q \leftrightarrow \begin{pmatrix} z_1 & z_2 \\ -\bar{z_2} & \bar{z_1} \end{pmatrix}$$
Quaternion multiplication becomes ordinary matrix multiplication. This links quaternions to $SU(2)$, the group of unit determinant unitary matrices — important for the quaternion-rotation connection.

**5. 4×4 Real Matrix Representation**
Quaternions can also be represented as 4×4 real matrices, useful for embedding quaternion algebra into standard linear algebra software/hardware that only handles real matrices.

**6. Pauli Matrix Form**
Using the Pauli spin matrices $\sigma_x, \sigma_y, \sigma_z$ from quantum mechanics:
$$i \leftrightarrow -i\sigma_x, \quad j \leftrightarrow -i\sigma_y, \quad k \leftrightarrow -i\sigma_z$$
This is why quaternions show up naturally in describing spin-1/2 particles and rotations in quantum mechanics — the algebra is identical.


