
An incremental rotation is a small rotation applied at each step of a process, such as an object's orientation being updated frame by frame, or a body's attitude being integrated from measured angular velocity. Each step composes the current orientation with a small rotation, so the total orientation is built up as a product of many small increments.

For a small time step Δt and angular velocity ω, the incremental rotation is approximately a rotation about ω by angle |ω|Δt. In quaternion form, with axis unit vector u = ω/|ω| and angle θ = |ω|Δt, the increment is

dq = cos(θ/2) + sin(θ/2) u ≈ 1 + (Δt/2) ω, for small θ,

where ω is treated as a pure quaternion. The orientation is then updated by q ← q · dq, followed by renormalization to keep q a unit quaternion, since rounding errors make its norm drift.

A few points come up repeatedly:

- Order matters. Because rotations don't commute, the increments must be multiplied in the correct order for the body or world frame being used.
- Small-angle approximations are only first-order accurate, so the exact form cos(θ/2) + sin(θ/2)u is preferred when the step is not tiny.
- Drift from accumulated numerical error is corrected by renormalizing the quaternion, or by a periodic re-orthogonalization if you work with matrices.
