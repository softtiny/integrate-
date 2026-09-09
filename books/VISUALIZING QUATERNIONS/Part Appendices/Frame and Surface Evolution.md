

**Evolving frames along a curve:**
If you imagine a small object (like a camera, or a bead) moving along a path in 3D space, it carries a local frame with it — vectors like "forward," "up," and "sideways" that rotate as the path bends and twists. This frame at parameter $t$ is written as a quaternion function:
$$q(t)$$

Its rate of change is governed by an angular velocity vector $\omega(t)$ (the instantaneous rotation axis and speed), through the differential equation:
$$\dot q(t) = \tfrac{1}{2}\, \omega(t)\, q(t)$$

This is the quaternion analog of how a Frenet frame evolves along a curve using curvature and torsion, but expressed multiplicatively rather than via matrices — it avoids the singularities that plague matrix-based frame tracking (like gimbal lock).

**Why quaternions help here:**
- Matrix-based frame updates can drift away from orthonormality due to numerical error; quaternion evolution preserves the frame's rigidity more robustly (you just renormalize $|q|=1$).
- Small incremental rotations compose cleanly via quaternion multiplication, which is why this method is standard in robotics, spacecraft attitude tracking, and computer animation for orientation interpolation.

**Extending to surfaces:**
Where curves have a single evolution parameter $t$, surfaces have two — so a frame swept across a surface evolves along *two* directions (think of a grid of $u$ and $v$ parameters). This introduces:
- Two angular-velocity-like quantities, one for how the frame twists as $u$ changes, another for $v$.
- A compatibility/integrability condition ensuring that evolving the frame first along $u$ then $v$ gives the same result as $v$ then $u$ — this is the quaternion analog of the *Gauss-Codazzi equations* in classical differential geometry, which govern how a surface's local frame (normal + tangent vectors) must consistently fit together.

