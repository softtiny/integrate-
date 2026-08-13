

## Storage
- **Quaternion**: 4 floats
- **3×3 rotation matrix**: 9 floats
- **Euler angles**: 3 floats (cheapest, but suffers from gimbal lock and non-uniqueness)

## Composing rotations
- **Quaternion multiplication**: combining two rotations takes about 16 multiplications and 12 additions (a Hamilton product), versus a 3×3 matrix multiply which takes 27 multiplications and 18 additions. So quaternions are noticeably cheaper to chain together.

## Rotating a vector
- This is where matrices win locally: rotating a single vector by a matrix is a straightforward matrix-vector multiply (9 mults, 6 adds).
- Rotating a vector directly by a quaternion via `q v q⁻¹` naively costs more (two quaternion multiplications), though optimized formulas (expanding out the algebra, e.g. using the "double cross product" trick) bring this down to something comparable to the matrix cost — roughly 15-21 operations depending on the formulation.
- So if you're rotating *many* vectors by one fixed rotation, converting the quaternion to a matrix first and reusing it is often more efficient.

## Interpolation
- This is the big efficiency/quality win for quaternions: **slerp** (spherical linear interpolation) between two quaternions gives smooth, constant-angular-velocity interpolation between orientations.
- The equivalent operation with rotation matrices or Euler angles is either undefined, numerically messy, or suffers from artifacts (gimbal lock, non-constant angular speed), so quaternions are essentially the standard tool for animating rotations.

## Numerical stability
- Quaternions only need renormalizing to a **single constraint** (unit length, ‖q‖ = 1) to correct for drift from repeated floating-point operations.
- Rotation matrices need to be re-orthonormalized (a more expensive Gram-Schmidt-like correction) to stay a valid rotation after accumulated error, since a matrix has 6 constraints to maintain orthonormality out of 9 entries.

## Overall tradeoff
The usual takeaway: quaternions are more memory- and computation-efficient for **composing and interpolating** rotations and are more numerically robust to renormalize, while matrices are more efficient for the **repeated task of transforming many points/vectors** once a rotation is fixed. Many real-time systems (game engines, robotics, animation) use quaternions internally for representation/interpolation and convert to matrix form only when it's time to transform large batches of vertices.
