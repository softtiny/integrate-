

## The core problem

Rotations in 3D are trickier to represent than they first appear. The naive approaches — rotation matrices, Euler angles — each have drawbacks: matrices are redundant (9 numbers for 3 degrees of freedom) and Euler angles suffer from gimbal lock (loss of a degree of freedom at certain orientations). Quaternions solve both problems with just 4 numbers and no singularities.

## Rotations as transformations, not just angles

A key conceptual shift is treating a rotation as an operator that acts on vectors, rather than just "turn by angle θ." Any rotation in 3D can be fully specified by:
- An **axis** (a unit vector **n** = (nₓ, nᵷ, n_z) about which the rotation happens)
- An **angle** θ of rotation around that axis

This is Euler's rotation theorem: every 3D rotation is equivalent to a single rotation about some fixed axis.

## From axis-angle to quaternions

A unit quaternion encodes this axis-angle pair compactly:

$$q = \cos(\theta/2) + \sin(\theta/2)(n_x i + n_y j + n_z k)$$

Notice the **half-angle** — this is one of the trickiest and most important points in the whole subject. Rotating a vector by angle θ requires a quaternion built from θ/2, because the actual rotation operation involves applying the quaternion *twice* (sandwiching):

$$v' = q\,v\,q^{-1}$$

where v = (0, x, y, z) is a pure quaternion representing the vector. This double application is why the half-angle appears — a single q would only get you "half" the rotation if used alone.

## Why the sandwich operation works

The conjugation operation q v q⁻¹ has two important properties:
1. It preserves the "pure" (zero real-part) nature of v, so the result is still a 3D vector.
2. It preserves length, so it's a genuine rotation (not a scaling or reflection).

This is fundamentally different from just multiplying by q, which would rotate *and* mix in the real component — sandwiching cancels that out.

## Double cover: q and −q give the same rotation

Because both cos(θ/2) and sin(θ/2) flip sign together when θ → θ + 2π isn't the whole story — actually q and −q always represent the *same* physical rotation, since the sandwich formula is quadratic in q. This means the unit quaternions form a "double cover" of the rotation group SO(3): the space of rotations is really the sphere S³ with antipodal points identified.

## Composition of rotations

Quaternion multiplication directly composes rotations: if q₁ represents one rotation and q₂ another, then q₂q₁ represents "first rotate by q₁, then by q₂" — matching how you'd compose rotation matrices, but with cheaper, more numerically stable arithmetic (no re-orthonormalization needed, just renormalize a 4-vector).
