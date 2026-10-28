
A geometric analysis usually starts from the picture of a rigid rotation: a vector v is carried around an axis u by an angle θ, tracing a circle in the plane perpendicular to u. Decomposing v into a component along the axis and a component perpendicular to it makes the motion easy to read:

v = (v·u)u + v⊥, and the rotated vector is Rv = (v·u)u + cos θ · v⊥ + sin θ · (u × v).

This is Rodrigues' rotation formula, and it shows directly that the axis component is unchanged while the perpendicular component turns through θ.

Several geometric facts follow from this picture:

- The axis is fixed, and the plane perpendicular to it is rotated in place.
- The composition of two rotations is the rotation that results from applying them in sequence, and its axis and angle can be found from the geometry of the two spherical triangles formed by their axes.
- On the unit sphere, a rotation corresponds to a pair of antipodal points (the axis) together with an angle, which is why quaternions, with their double cover of SO(3), describe rotations so naturally.
