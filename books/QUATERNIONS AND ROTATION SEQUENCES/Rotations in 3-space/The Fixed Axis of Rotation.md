


Every rotation in 3-space (other than the identity) leaves exactly one line through the origin fixed. That line is the axis of rotation, and any nonzero vector on it satisfies Rv = v. Along with the axis, the rotation has an angle θ, measured in the plane perpendicular to the axis, and a sense given by the right-hand rule.

A useful way to find the axis is to look for eigenvectors of the rotation matrix R. The eigenvalue 1 corresponds to the axis, and the other two eigenvalues are e^{iθ} and e^{-iθ}, which gives the angle. Equivalently, for a rotation matrix R, the axis can be read from the antisymmetric part of R:

- The axis direction is proportional to (R₃₂ − R₂₃, R₁₃ − R₃₁, R₂₁ − R₁₂).
- The angle satisfies cos θ = (tr R − 1)/2.

This is the bridge to quaternions. A unit quaternion can be written as q = cos(θ/2) + sin(θ/2)(u₁i + u₂j + u₃k), where u is the unit axis. Its action on vectors is v ↦ q v q*, so the axis appears directly in the quaternion, with the angle halved.
