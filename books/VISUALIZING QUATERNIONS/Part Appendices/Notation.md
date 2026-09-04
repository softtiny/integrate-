## Typical Quaternion Notation Conventions

**Basic form:**
A quaternion is usually written as
$$q = w + xi + yj + zk$$
or split into scalar and vector parts:
$$q = (s, \vec{v}) = s + \vec{v}, \quad \vec{v} = (x, y, z)$$

**Imaginary units:**
$$i^2 = j^2 = k^2 = ijk = -1$$
$$ij = k,\quad jk = i,\quad ki = j$$
$$ji = -k,\quad kj = -i,\quad ik = -j$$

**Conjugate:**
$$q^* = s - \vec{v} = w - xi - yj - zk$$

**Norm / magnitude:**
$$|q| = \sqrt{qq^*} = \sqrt{w^2+x^2+y^2+z^2}$$

**Inverse:**
$$q^{-1} = \frac{q^*}{|q|^2}$$

**Unit quaternions:** those with $|q| = 1$, used to represent rotations. Often written in "axis-angle" exponential form:
$$q = \cos(\theta/2) + \hat{n}\sin(\theta/2)$$
where $\hat{n}$ is the unit rotation axis and $\theta$ is the rotation angle.

**Rotation action on a vector** $\vec{p}$ (treated as a pure quaternion $0 + \vec{p}$):
$$\vec{p}\,' = q\,\vec{p}\,q^{-1}$$

**Hamilton product** (non-commutative):
$$q_1 q_2 \ne q_2 q_1 \text{ in general}$$

## Common symbol conventions across the book

| Symbol | Typical meaning |
|---|---|
| $q, p$ | Quaternions |
| $s$ or $w$ | Scalar (real) part |
| $\vec{v}$ | Vector (imaginary) part |
| $\hat{n}$ | Unit rotation axis |
| $\theta$ | Rotation angle |
| $S^3$ | Unit quaternion hypersphere |
| $SO(3)$ | 3D rotation group |
| $SU(2)$ | Special unitary group (double cover of $SO(3)$) |
