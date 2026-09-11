

## Quaternion Methods — Practical Techniques

**1. Converting between representations**

*Axis-angle → quaternion:*
$$q = \left(\cos\frac{\theta}{2},\ \hat n \sin\frac{\theta}{2}\right)$$

*Quaternion → axis-angle:*
$$\theta = 2\arccos(w), \quad \hat n = \frac{(x,y,z)}{\sin(\theta/2)}$$

*Rotation matrix → quaternion* (common numerically stable method, e.g. Shepperd's method): pick the largest of $w^2, x^2, y^2, z^2$ from the trace and matrix diagonal to avoid division by small numbers.

*Euler angles → quaternion:* build via product of three axis-rotation quaternions:
$$q = q_z(\psi)\,q_y(\theta)\,q_x(\phi)$$

**2. Normalization**

Because floating-point drift can push $|q|$ away from 1 after repeated multiplications:
$$q_{norm} = \frac{q}{|q|}$$
This should be done periodically in any iterative frame-update loop.

**3. Interpolation methods**

- **SLERP** (spherical linear interpolation) — constant angular velocity, used for smooth camera/object rotation animation.
- **NLERP** (normalized linear interpolation) — cheaper approximation, linearly interpolate components then renormalize; less uniform in speed but much faster.
- **Squad** — spline-based extension of SLERP for interpolating *through* multiple keyframe orientations smoothly (quaternion analog of cubic splines).

**4. Avoiding the "long way around" problem**

Since $q$ and $-q$ represent the same rotation, interpolating naively between two quaternions can take the "long path" on the hypersphere. Fix: check $q_1\cdot q_2$; if negative, negate one quaternion before interpolating.

**5. Composing incremental rotations**

For simulations/integrators updating orientation over small time steps $dt$ with angular velocity $\omega$:
$$q_{t+dt} = q_t + \tfrac{1}{2}\,dt\,(\omega\, q_t)$$
followed by renormalization — this avoids the gimbal-lock issues of Euler-angle integration.

**6. Quaternion vs. matrix trade-offs**

| | Quaternion | Rotation Matrix |
|---|---|---|
| Storage | 4 numbers | 9 numbers |
| Composition cost | Cheaper | More expensive |
| Interpolation | Natural (SLERP) | Awkward |
| Gimbal lock | None | Possible (via Euler extraction) |
| Numerical drift fix | Renormalize | Re-orthogonalize (Gram-Schmidt) |
