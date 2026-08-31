
Key concepts typically covered:

**1. The metric on S³**
Unit quaternions q = (w, x, y, z) with w² + x² + y² + z² = 1 form S³. The Riemannian metric is just the restriction of the flat Euclidean metric in R⁴ to this curved surface, giving S³ an intrinsic notion of arc length.

**2. Geodesics = great circles**
On a sphere, the "straight lines" (geodesics — shortest paths between two points) are great circles. For unit quaternions, this means the shortest path between two rotations (each represented as a unit quaternion) traces a great circle arc on S³. This is the geometric foundation for **SLERP** (spherical linear interpolation), which smoothly interpolates between two orientations by moving at constant angular velocity along that great circle.

**3. Constant positive curvature**
Unlike flat (Euclidean) space, S³ has constant positive curvature. This affects things like how "parallel" geodesics behave (they converge, unlike in flat space) and how distances/angles work out — relevant when you want smooth, physically natural rotation interpolation rather than naive linear interpolation of quaternion components (which would leave the unit sphere).

**4. Double cover of SO(3)**
Since unit quaternions double-cover the rotation group SO(3) (q and −q represent the same rotation), the spherical geometry of S³ has a direct bearing on the geometry of the rotation group itself — antipodal points correspond to identical rotations.

**5. Practical payoff**
This geometric picture is what justifies SLERP's formula:

slerp(q₁, q₂, t) = q₁ (q₁⁻¹q₂)^t

as moving along a geodesic (great circle) on the unit quaternion sphere at constant speed — giving smooth, "natural-looking" rotation animation instead of the wobble you'd get from linearly interpolating quaternion coordinates and renormalizing.
