

## Why interpolate quaternions at all

Quaternions represent 3D rotations without the gimbal-lock problems of Euler angles. If you want to smoothly animate an object from one orientation to another (e.g., in computer graphics, robotics, or camera paths), you need a way to "blend" between two rotation quaternions. Naively interpolating the four components linearly (like you would with vectors) doesn't work well — it doesn't preserve unit length and produces non-constant angular velocity.

## SLERP (Spherical Linear Interpolation)

This is the central technique in that chapter. Quaternions of unit length live on the surface of a 4D hypersphere (S³). Interpolating "correctly" means moving along the great-circle arc between two points on that sphere, at constant angular speed — this is SLERP, introduced by Ken Shoemake.

Given two unit quaternions **q₀** and **q₁**, and interpolation parameter t ∈ [0,1], SLERP is defined as:

slerp(q₀, q₁, t) = [sin((1−t)θ) / sin θ] · q₀ + [sin(tθ) / sin θ] · q₁

where θ is the angle between q₀ and q₁ (cos θ = q₀ · q₁, the 4D dot product).

Key properties Hanson emphasizes geometrically:
- The path traced is the shortest arc on the 4-sphere between the two orientations — the rotational analogue of a straight line.
- The angular velocity is constant along the path, unlike naive linear interpolation.
- Because q and −q represent the same rotation, you should choose the sign of q₁ (or q₀) so that the dot product is positive — otherwise SLERP takes the "long way around" the sphere.

