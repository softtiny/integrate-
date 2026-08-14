

**1. Projective methods** — these are generalizations of stereographic/polar projection. You pick a point on the sphere (often a "pole") and project the rest of the sphere onto a flat plane (or lower-dimensional sphere) from that point. This is the same idea behind mapping the globe onto a 2D map, extended up to S³ so that quaternion rotations can be visualized in familiar flat coordinates. The tradeoff is that these projections typically distort distances and areas near the projection point.

**2. Distance-preserving flattening methods** — instead of accepting distortion, these methods try to "unroll" or "flatten" a sphere while preserving some geometric quantity:
- For S¹ (a circle), you literally unroll it into a straight line segment — preserving arc length.
- For S² (an ordinary sphere), an *equal-area* method flattens the sphere while preserving area, useful for things like showing rotation statistics or density on a sphere without visual bias toward the poles.
- For S³ (the unit hypersphere quaternions live on), an *equal-volume* method extends this idea one dimension further, flattening the 4D unit hypersphere into 3D space while preserving volume — letting you visualize distributions of quaternions/rotations without distorting how "much space" a given region of rotations actually represents.

