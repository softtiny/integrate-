
## The core idea

A unit quaternion can be written as:

$$q = \cos\theta + \hat{u}\sin\theta$$

where $\hat{u}$ is a unit vector (pure imaginary quaternion, i.e., $\hat{u}^2 = -1$) and $\theta$ is a half-angle. This is directly analogous to Euler's formula $e^{i\theta} = \cos\theta + i\sin\theta$ for complex numbers, except now the "imaginary unit" $\hat{u}$ can point in *any* direction in 3D space rather than being fixed.

## Exponential map

Because of that analogy, you can define the quaternion exponential the same way you'd define it for complex numbers via a power series:

$$\exp(\hat{u}\theta) = \cos\theta + \hat{u}\sin\theta$$

Geometrically: take a pure vector quaternion $\hat{u}\theta$ (a point in 3D space, where the direction is the rotation axis and the length is the rotation angle), and exponentiating it "wraps" that straight line in $\mathbb{R}^3$ onto a great circle on the unit 3-sphere $S^3$ (the space of unit quaternions). This is exactly like how $\theta \mapsto e^{i\theta}$ wraps the real line onto the unit circle in the complex plane — just one dimension up.

## Logarithm map

The log is the inverse operation: given a unit quaternion $q = \cos\theta + \hat{u}\sin\theta$, you recover

$$\log(q) = \hat{u}\,\theta$$

which strips the rotation back down to a vector in 3D — the axis direction scaled by the rotation angle. Visually, this "unwraps" a point on the great-circle arc (on $S^3$) back into flat 3D space, the tangent space at the identity.

## Why this visualization matters

- It shows unit quaternions and 3D rotation vectors are connected the same way angles and points on a circle are connected via ordinary $\exp/\log$.
- It's the geometric basis for **quaternion interpolation (slerp)**: you can move along the great circle between two orientations by exponentiating a scaled interpolation of their logarithms.
- It reinforces the "double cover" idea — a full $2\pi$ rotation in 3D corresponds to going only halfway around the great circle on $S^3$ (hence the half-angles $\theta$, not full angles).

