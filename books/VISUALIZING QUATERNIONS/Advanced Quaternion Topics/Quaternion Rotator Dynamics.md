
## What "quaternion rotator dynamics" is about

The core idea is treating a unit quaternion **q(t)** as a *time-varying rotation operator* and asking: how does it evolve, and how does that relate to angular velocity?

**1. Quaternions as rotators**
A unit quaternion q rotates a vector **v** (embedded as a pure quaternion) via the sandwich product:

$v' = q v q⁻¹$

As q changes continuously over time, this describes a continuously rotating frame or object — hence "rotator."

**2. The quaternion derivative and angular velocity**
If a body is rotating with angular velocity vector **ω**(t), the quaternion describing its orientation satisfies the differential equation:

$dq/dt = ½ ω q$

(or ½ q ω, depending on whether ω is expressed in the world frame or body frame). This is the quaternion analog of the rotation-matrix kinematic equation $Ṙ = [ω]× R$, but without the singularities that plague Euler-angle rates.

**3. Why this matters (the "dynamics" part)**
- It gives a **singularity-free** way to integrate orientation over time — important in simulation, robotics, spacecraft attitude control, and computer graphics/animation.
- Because q and −q represent the *same* rotation (the double cover of SO(3) by the unit quaternions/S³), care is needed when integrating: numerical integration can drift off the unit sphere or flip sign, so renormalization and sign-continuity checks are standard practice.
- The exponential map connects this to angular velocity directly: if ω is constant over a small timestep, $q(t+Δt) ≈ exp(½ ω Δt) · q(t)$, where exp of a pure quaternion (0, **axis**·θ) gives (cos θ, sin θ **axis**) — tying back into the axis-angle/exponential picture that's central to Hanson's geometric treatment of quaternions.
- This also underlies quaternion-based interpolation dynamics (e.g., SLERP can be seen as constant-angular-velocity rotator motion between two orientations).
