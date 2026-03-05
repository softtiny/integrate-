# Quaternions

In `3D space`, we usually think in degrees (Euler angles: X, Y, Z). However, using simple angles leads to Gimbal Lock, where two axes align and you lose a degree of freedom.

Quaternions represent rotations as a 4D vector $[x,y,z,w]$. While they aren't "human-readable," they offer:

- **Smooth Interpolation:** Perfect for animations (SLERP).
- **Efficiency:** Easier to combine and normalize than large matrices.
- **Stability:** No gimbal lock.