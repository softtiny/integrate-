
## Quaternion Survival Kit — Core Reference

**Definition:**
$$q = w + xi + yj + zk = (w, \vec{v}), \quad \vec{v} = (x,y,z)$$

**Multiplication rules:**
$$i^2 = j^2 = k^2 = ijk = -1$$
$$ij=k,\ jk=i,\ ki=j,\quad ji=-k,\ kj=-i,\ ik=-j$$

**General product (two quaternions $q_1=(s_1,\vec v_1)$, $q_2=(s_2,\vec v_2)$):**
$$q_1 q_2 = (s_1 s_2 - \vec v_1\cdot\vec v_2,\ s_1\vec v_2 + s_2\vec v_1 + \vec v_1\times\vec v_2)$$

**Conjugate:**
$$q^* = w - xi - yj - zk = (w,-\vec v)$$

**Norm:**
$$|q|^2 = qq^* = w^2+x^2+y^2+z^2$$

**Inverse:**
$$q^{-1} = \frac{q^*}{|q|^2}$$
(for unit quaternions, $q^{-1}=q^*$)

**Unit quaternion / rotation form:**
$$q = \cos(\theta/2) + \hat n \sin(\theta/2)$$
where $\hat n$ is the rotation axis, $\theta$ the rotation angle.

**Rotating a vector $\vec p$ (as pure quaternion $(0,\vec p)$):**
$$\vec p\,' = q\,\vec p\,q^{-1}$$

**Composing rotations:**
$$q_{total} = q_2 q_1 \quad (\text{apply } q_1 \text{ first, then } q_2)$$

**Double cover fact:**
$$q \text{ and } -q \text{ represent the same rotation}$$

**Quaternion–matrix equivalence** (rotation matrix from unit quaternion $(w,x,y,z)$):
$$R = \begin{pmatrix}
1-2(y^2+z^2) & 2(xy-wz) & 2(xz+wy)\\
2(xy+wz) & 1-2(x^2+z^2) & 2(yz-wx)\\
2(xz-wy) & 2(yz+wx) & 1-2(x^2+y^2)
\end{pmatrix}$$

**Interpolation (SLERP)** between unit quaternions $q_1,q_2$ at parameter $t\in[0,1]$:
$$\text{slerp}(q_1,q_2,t) = \frac{\sin((1-t)\Omega)}{\sin\Omega} q_1 + \frac{\sin(t\Omega)}{\sin\Omega} q_2,\quad \cos\Omega = q_1\cdot q_2$$

**Exponential/log form** (useful for interpolation and derivatives):
$$\exp(\vec v) = \cos|\vec v| + \frac{\vec v}{|\vec v|}\sin|\vec v|$$
$$\log(q) = \hat n\,\theta \quad \text{(pure quaternion, for unit } q=\cos\theta+\hat n\sin\theta)$$

This kind of "kit" is meant to be the fast-lookup companion for graphics/robotics work — everything you need without re-deriving it. If you want, I can also put together worked examples (e.g., composing two specific rotations, or converting a rotation matrix to a quaternion) to go with these formulas.