

The group SO(3) is a smooth 3-dimensional manifold, but the Euler-angle parametrization of it is not. Writing a rotation as a product of three axis rotations gives a map from angles to SO(3) that fails to be a diffeomorphism at certain configurations. For a z-y-z or z-x-z convention, this happens when the middle angle is 0 or π. At those points, the first and third rotations act about the same axis, so only their sum (or difference) matters. One degree of freedom is lost, and nearby orientations require very large changes in the individual angles to move. This is gimbal lock.

A few related points:

- Gimbal lock is a property of the coordinates, not of the rotations themselves. SO(3) has no singularity at those orientations; the parametrization does.
- Numerically, near a singularity the Euler-angle extraction from a rotation matrix becomes ill-conditioned, so small errors in the matrix produce large jumps in the angles.
- Quaternions avoid this because the unit quaternion parametrization of SO(3) (via the double cover S³ → SO(3)) has no such coordinate singularity. The only redundancy is the sign: q and −q give the same rotation.
- Topologically, SO(3) is not simply connected; its fundamental group is Z/2. This is why unit quaternions form a double cover and why a continuous path of rotations can lift to a path that does not close in S³.
