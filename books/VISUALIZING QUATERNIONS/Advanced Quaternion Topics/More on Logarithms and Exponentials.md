

## The exponential map

A quaternion splits into a scalar part and a vector part: $q = s + \vec{v}$. For a **pure imaginary quaternion** $\vec{v} = (0, x, y, z)$ with $|\vec{v}| = \theta$, the exponential is defined analogously to Euler's formula for complex numbers:

$$\exp(\vec{v}) = \cos\theta + \hat{v}\sin\theta$$

where $\hat{v} = \vec{v}/|\vec{v}|$ is the unit vector direction. This is exactly the power-series definition $\exp(\vec{v}) = \sum_{k=0}^{\infty} \vec{v}^k/k!$, which converges because $\vec{v}^2 = -\theta^2$ (a pure quaternion squares to a negative scalar, just like $i^2=-1$), so the series splits into the same even/odd pattern as sine and cosine.

This is the key bridge between the **algebra** of quaternions and their **geometric** role as rotations: a unit quaternion representing rotation by angle $\theta$ about axis $\hat{v}$ can always be written as $\exp(\hat{v}\,\theta/2)$.

## The logarithm map

The log is the inverse operation. Given a unit quaternion $q = \cos\theta + \hat{v}\sin\theta$ (with $|\hat v|=1$), you recover:

$$\log(q) = \hat{v}\,\theta$$

a *pure* quaternion whose direction is the rotation axis and whose magnitude is the rotation angle. In practice you compute this from a general unit quaternion $q=(w,x,y,z)$ via:

$$\theta = \arccos(w), \qquad \hat v = \frac{(x,y,z)}{\sin\theta}$$

(with the obvious care needed when $\sin\theta \to 0$, i.e. near identity or near $180°$ rotations, since the axis becomes ill-defined there).

## Why this matters (the parts Hanson emphasizes)

- **Interpolation (slerp)**: Since $\log$ turns a rotation into a linear "axis-angle" vector, you can interpolate two rotations smoothly by working in log-space: compute $\log(q_1^{-1}q_2)$, scale it by a fraction $t$, then exponentiate back. This is the algebraic underpinning of spherical linear interpolation (slerp), which Hanson derives explicitly using exp/log.
- **One-parameter subgroups**: $\exp(\hat v\, t)$ for varying $t$ traces out a continuous rotation of increasing angle about a fixed axis — the quaternion analog of a "geodesic" on the 3-sphere $S^3$. This connects directly to the book's broader theme of visualizing quaternions as points on $S^3$.
- **Multivaluedness**: Just like the complex logarithm, $\log(q)$ is only defined up to adding multiples of $2\pi$ to $\theta$ (and there's an extra ambiguity since $q$ and $-q$ represent the same rotation), so care is needed about branch choices — something Hanson flags explicitly since it trips people up when animating rotations.
- **Non-commutativity caveat**: unlike ordinary exponentials, $\exp(a)\exp(b) \neq \exp(a+b)$ in general for quaternions/vectors, because quaternion multiplication isn't commutative — this is a point the book stresses since it's a common source of bugs when composing rotations naively.

