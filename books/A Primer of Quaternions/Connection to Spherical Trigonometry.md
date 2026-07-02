## The geometric picture

A versor (a quaternion of unit norm) represents a rotation about some axis through some angle. Hamilton represents such a rotation not just algebraically but as a **directed arc of a great circle** on a unit sphere. If a rotation is through angle $2\theta$ about an axis $OA$, the corresponding arc lies on the great circle *perpendicular* to $OA$ — the "equator" of that rotation — and has arc-length $\theta$ (half the rotation angle), with its direction along the circle indicating the sense of rotation.

This is the key trick: a spatial rotation, which naturally involves an axis (a point on the sphere) and an angle, gets re-encoded as an arc (a curve on the sphere), so that the *composition* of two rotations can be studied as the *composition* of two arcs — much like adding two vectors tip-to-tail, but on a curved surface instead of a plane.

## Composing arcs = forming a spherical triangle

If you have two successive rotations, represented by arcs $AB$ and $BC$ (sharing endpoint $B$), their product — the single equivalent rotation — is represented by the arc $AC$ that closes the triangle. So:

- $A$, $B$, $C$ are three points on the unit sphere.
- The arcs $AB = c$, $BC = a$, $CA = b$ are half-angles of the three rotations (the given two, and their resultant).
- The **angles of the spherical triangle at each vertex** correspond to the angles between the successive rotation axes.

This is exactly parallel to ordinary vector addition, except that "arcs" don't simply add like line segments — their combination is governed by the geometry of the sphere, i.e., by spherical trigonometry.

## Why the spherical law of cosines appears

Since the sides of the triangle *are* the half-angles of the component rotations, and the triangle's angle at the shared vertex *is* the angle between the two rotation axes, the spherical law of cosines,

$$\cos c = \cos a \cos b + \sin a \sin b \cos C,$$

translates directly into the formula for the half-angle $\theta$ of the **resultant** rotation in terms of the half-angles $\alpha, \beta$ of the two component rotations and the angle $\gamma$ between their axes:

$$\cos\theta = \cos\alpha\cos\beta - \sin\alpha\sin\beta\cos\gamma$$

(the sign on the last term flips depending on how you orient the angle between axes — Hamilton is careful about this bookkeeping, since it's really the *supplement* of the triangle's interior angle that shows up naturally in some sign conventions).

This is precisely the scalar part of the quaternion product $q = q_2 q_1$ falling out of pure spherical geometry, with no vector algebra needed at all — it's just "solve for the third side of a spherical triangle given two sides and the included angle."

## Why the spherical law of sines gives the axis

Knowing the *magnitude* of the resultant rotation (the side $AC$) isn't enough — you also need its **axis**, i.e., the direction of the new arc, which corresponds to the angles of the triangle at $A$ and $C$. These are obtained from the spherical law of sines,

$$\frac{\sin a}{\sin A} = \frac{\sin b}{\sin B} = \frac{\sin c}{\sin C},$$

which tells you how the *orientation* of the resultant axis relates to the two original axes and the angle between them. So the full data of the composed rotation — both its angle and its axis — is exactly the data needed to solve the spherical triangle completely: three sides and three angles, related by the two fundamental laws of spherical trig.


## The conceptual payoff

What Hathaway is showing is that quaternion multiplication isn't an arbitrary algebraic rule bolted onto rotations — it *is* spherical trigonometry, restated in algebraic form. Every formula for combining rotations (angle and axis of a product of two rotations) is a direct translation of a classical formula for spherical triangles that long predates quaternions (Euler, Gauss, and earlier navigators/astronomers already needed these for celestial navigation). Quaternions just give you a compact algebraic bookkeeping device — $q_2 q_1$ — for what spherical trigonometry had already worked out geometrically.