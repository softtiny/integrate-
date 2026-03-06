# Quaternions

In `3D space`, we usually think in degrees (Euler angles: X, Y, Z). However, using simple angles leads to Gimbal Lock, where two axes align and you lose a degree of freedom.

Quaternions represent rotations as a 4D vector $[x,y,z,w]$. While they aren't "human-readable," they offer:

- **Smooth Interpolation:** Perfect for animations (SLERP).
- **Efficiency:** Easier to combine and normalize than large matrices.
- **Stability:** No gimbal lock.




### setAxes()

The `quat.setAxes` method in `glMatrix` is a powerful utility for when you know where you want an object to face, but you don't know the specific angles or rotation axis to get it there.

Essentially, it constructs a quaternion from a viewing coordinate system (Local X, Y, and Z axes).

**How it Works: The "Look At" Logic**

In 3D space, a rotation can be defined by three perpendicular vectors. `setAxes` takes these vectors and "packs" them into a quaternion.


It is the quaternion equivalent of building a **Rotation Matrix** from scratch using orthonormal basis vectors. This is particularly useful for:

- **Cameras:** Orienting a camera to look at a specific point.
- **Character AI:** Making an NPC turn to face the player.
- **Procedural Animation:** Aligning an object (like a laser bolt) to its velocity vector.