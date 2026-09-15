

## Quaternion Frame Integration — Background

**The problem:**
Given an object's current orientation $q(t)$ and its angular velocity $\omega(t)$ at each instant, how do you numerically compute the orientation $q(t+\Delta t)$ a moment later? This is the rotational analog of integrating position from velocity — but rotation lives on the curved manifold $S^3$, not flat Euclidean space, so naive integration schemes need adaptation.

**The governing differential equation:**
$$\dot q(t) = \tfrac{1}{2}\,\omega(t)\,q(t)$$
where $\omega(t)$ is treated as a pure quaternion $(0, \vec\omega)$ representing instantaneous angular velocity.

**Simple (Euler) integration:**
$$q_{t+\Delta t} \approx q_t + \Delta t \cdot \dot q_t = q_t + \tfrac{1}{2}\Delta t\,(\omega_t \, q_t)$$
followed by renormalization:
$$q_{t+\Delta t} \leftarrow \frac{q_{t+\Delta t}}{|q_{t+\Delta t}|}$$
This is cheap but accumulates error for large $\Delta t$ or fast rotation — the linear approximation drifts off the unit sphere, which is why the renormalization step is mandatory.

**Exponential-map (exact for constant $\omega$) integration:**
If angular velocity is constant over the timestep, the *exact* update is:
$$q_{t+\Delta t} = \exp\!\left(\tfrac{1}{2}\Delta t\,\omega\right) q_t$$
where the quaternion exponential is:
$$\exp(\vec u) = \cos|\vec u| + \frac{\vec u}{|\vec u|}\sin|\vec u|$$
This is more accurate and stays exactly on the unit sphere (up to floating-point error), avoiding drift — commonly preferred in robotics/simulation code over naive Euler stepping.

**Higher-order integration (Runge-Kutta on quaternions):**
For better accuracy with varying $\omega(t)$, RK4-style methods can be adapted to quaternion state, integrating the same differential equation but sampling $\omega$ at intermediate sub-steps — still requiring renormalization at each stage since RK schemes are derived for flat vector spaces, not curved manifolds.

**Why this matters / where it's used:**
- Spacecraft/aircraft attitude simulation, where angular velocity is measured (e.g., via gyroscopes) and orientation must be integrated forward reliably over long time horizons.
- Physics engines and character animation, where rigid-body rotational dynamics need stable, drift-free orientation updates.
- This complements the earlier appendix sections: "Frame and Surface Evolution" sets up the differential relationship, "Quaternion Methods" gives general techniques, and this section focuses specifically on the numerical integration schemes and their accuracy/stability trade-offs.
