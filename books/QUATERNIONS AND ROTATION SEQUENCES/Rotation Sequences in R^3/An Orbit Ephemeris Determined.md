

**1. What an ephemeris is**

An ephemeris is a table or model giving a body's position (and sometimes velocity or orientation) at a sequence of times. Determining an orbit ephemeris means finding the orbit's parameters from observations, such as range, angle, or Doppler measurements, and then using them to predict the body's position at any time.

**2. The orbital elements**

A Keplerian orbit is described by six classical elements: the semi-major axis a, eccentricity e, inclination i, right ascension of the ascending node Ω, argument of perigee ω, and an anomaly that locates the body along the orbit at a given epoch. Determination is the process of estimating these numbers from the data, usually by least squares, since the observations are noisy and more numerous than the unknowns.

**3. The perifocal frame**

It's simplest to describe the orbit first in the perifocal frame, where the x-axis points to perigee and the z-axis is normal to the orbital plane. In that frame, the position depends only on a, e, and the true anomaly ν:

r = a(1 − e²) / (1 + e cos ν)

with coordinates r(cos ν, sin ν, 0).

**4. The rotation sequence**

To express the position in the inertial, Earth-centered frame, you rotate the perifocal coordinates with a 3–1–3 sequence: a rotation by −Ω about z, then by −i about the new x-axis, then by −ω about the new z-axis. This is a proper Euler sequence of the kind discussed earlier in the chapter. The combined rotation matrix is the product of three elementary matrices, and the same product can be written as a quaternion.

**5. Propagating in time**

Determining the ephemeris also requires the time dependence. The mean anomaly grows linearly, M = M₀ + n(t − t₀), where n = √(μ/a³). Kepler's equation M = E − e sin E is solved for the eccentric anomaly E, typically by iteration, and then ν follows from E. Combining this with the rotation from step 4 gives the inertial position at time t.

**6. If the frame is Earth-fixed**

For ground stations or Earth-based tracking, there's an additional rotation about the z-axis by the Greenwich sidereal angle, which accounts for Earth's rotation. This adds one more elementary rotation to the sequence.

**7. Quaternion connection**

Because the rotation from perifocal to inertial coordinates is a single orientation, it can be stored as one quaternion. Updating or interpolating orientation is then easier than repeatedly multiplying matrices, and the quaternion avoids the singularities that the Euler form has at certain inclinations.
