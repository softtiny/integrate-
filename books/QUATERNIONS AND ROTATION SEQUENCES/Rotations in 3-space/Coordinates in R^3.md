

A point in R³ is an ordered triple (x, y, z) relative to a chosen orthonormal basis, usually e₁, e₂, e₃. Coordinates are the components of a vector along those basis directions, so the same geometric point gets different coordinate triples under different bases. This matters for rotations, because a rotation changes the coordinates of a vector while keeping its length, and the rotation is represented by a 3×3 orthogonal matrix with determinant +1 (a matrix in SO(3)).

A few related facts often come up in this context:

- Rotation matrices preserve dot products and norms: Rv · Rw = v · w, and |Rv| = |v|.
- The columns of a rotation matrix are the coordinates of the rotated basis vectors, so R's columns form another orthonormal right-handed frame.
- Changing from one coordinate system to another is itself a rotation when both frames are right-handed and orthonormal.

