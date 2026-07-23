

## Basic Quaternion Notation

**Definition as a 4-tuple:**
A quaternion $q$ is typically written as an ordered set of four real numbers:
$$q = (q_0, q_1, q_2, q_3)$$
or equivalently in algebraic form:
$$q = q_0 + q_1 i + q_2 j + q_3 k$$

**Scalar and vector parts:**
A key notational convention (which Hanson emphasizes heavily because it's central to visualizing quaternions) is splitting $q$ into a **scalar part** and a **vector part**:
$$q = (q_0, \mathbf{q}) = q_0 + \mathbf{q}$$
where $q_0 \in \mathbb{R}$ is the scalar (real) component, and $\mathbf{q} = (q_1, q_2, q_3) \in \mathbb{R}^3$ is the vector (imaginary) part.

**The imaginary units:**
$i, j, k$ are the three imaginary basis elements, satisfying:
$$i^2 = j^2 = k^2 = ijk = -1$$
with the cyclic multiplication rules:
$$ij = k,\quad jk = i,\quad ki = j$$
$$ji = -k,\quad kj = -i,\quad ik = -j$$

**Pure quaternions:**
When $q_0 = 0$, the quaternion is called a *pure quaternion* and can be identified directly with a 3D vector — this is the bridge Hanson uses constantly between quaternion algebra and 3D geometry.

**Conjugate:**
$$\bar{q} = q_0 - \mathbf{q} = q_0 - q_1 i - q_2 j - q_3 k$$

**Norm (magnitude):**
$$\|q\| = \sqrt{q\bar{q}} = \sqrt{q_0^2 + q_1^2 + q_2^2 + q_3^2}$$

**Unit quaternions:**
Quaternions with $\|q\| = 1$ form the set used to represent rotations, since they correspond to points on the 3-sphere $S^3 \subset \mathbb{R}^4$.