

The core idea is **SLERP** (spherical linear interpolation), the technique introduced by Ken Shoemake at SIGGRAPH 1985 for smoothly blending between two orientations represented as quaternions. Hanson frames this as the natural analog, on a sphere, of ordinary linear interpolation between two points in Euclidean space: instead of moving along a straight line, you move along a **great-circle arc** on the hypersphere S³.

Key threads in the chapter:
- **Interpolation issues**: why naive linear blending of orientation parameters (like Euler angles) breaks down, motivating the need for a geometrically meaningful path between two orientations.
- **Gram–Schmidt derivation of SLERP**: a geometric construction of the SLERP formula using an orthonormal basis built from the two quaternion endpoints, showing explicitly how the arc-length-preserving interpolation curve is derived.
- **An alternative (optional/advanced, marked with †) derivation** of the same formula from a different starting point.
- **Quaternion interpolation proper**: applying the SLERP machinery specifically to unit quaternions to produce smooth, constant-angular-velocity rotation paths between two orientation frames.
- **The equivalent 3×3 matrix method**: showing how the same interpolation can be expressed directly in terms of rotation matrices, so readers coming from a matrix-based background can see the correspondence.

