

## Summary Table

| Concept | Arc Representation | Algebraic Form |
|---|---|---|
| Identity Turn | Arc of 0° on any great circle | *q* = 1 (unit scalar) |
| Inverse Turn of ⌢AB | Arc ⌢BA (reversed) | *q*⁻¹ = *q*\* (for unit *q*) |
| Conjugate Rotation | Apply *q*, rotate by *r*, undo *q* | *qrq*⁻¹ |
| Composition | ⌢AB + ⌢BC = ⌢AC | *q*₂*q*₁ |



## The Identity Turn (and Identity Rotation)

An arc of 0° or 180° may be measured on any great circle without altering its value as the representative of a half-rotation, a turn, or an arc step.

This is Hathaway's statement of the **identity**:

- For **turns**: an arc of **0°** represents the turn that moves every step back to its original position — the "do nothing" operation. Since a 0° arc has no preferred great circle, it is valid on *any* great circle without changing its meaning. This is the identity turn.
- For **rotations**: a half-arc of **0°** similarly represents the identity rotation (no rotation at all), and a half-arc of **180°** represents a full 360° rotation, which also returns the sphere to its original position. Both are indeterminate in their axis and may be placed on any great circle.

The key insight is that the identity is a *degenerate* arc — it is arc-less (zero length), so it doesn't belong to any particular plane or axis, and can be appended to any sequence of arcs without changing the result.


## Inverse Turns (and Inverse Rotations)

From the definition of arc step composition: the resultant of arc steps ⌢AB followed by ⌢BC is ⌢AC. The **inverse** of a turn ⌢AB is simply ⌢BA — the same arc traversed in the opposite direction.

When the arc of the turns are not given with the first ending where the second begins, each arc may be moved as a rigid arc round its great circle until they do so end and begin, without altering their turning value.

So the inverse of a turn with arc ⌢AB is the turn with arc ⌢BA, since:

> ⌢AB + ⌢BA = ⌢AA = 0° (the identity)

For **rotations**, the same logic holds at the level of half-arcs: the inverse rotation has its half-arc reversed. Geometrically, to undo a rotation, you apply the same rotation in the opposite direction about the same axis. In terms of the great-circle arc, negating the arc's direction negates the rotation.

This directly anticipates the quaternion result: if *q* represents a unit quaternion (a turn/rotation), then *q*⁻¹ is obtained by reversing its vector part (negating its arc), giving *q*⁻¹ = *q*\* (the conjugate) for unit quaternions.


## Conjugate Rotations

Art. 30 addresses non-commutativity, which is the gateway to conjugate rotations:

The resultant of two successive rotations or turns (i.e., the sum of two arc steps) is commutative only when the arcs lie on the same great circle (are *cocircular*). In general, the order of two rotations about different axes matters — this is why conjugation is necessary.

**Conjugate rotations** in Hathaway's sense refers to two rotations that are *mirror images* of each other through a common plane, or equivalently, related by reversing the arc's direction on the sphere. He develops this directly out of the spherical triangle theorem (Art. 26):

If the sphere O be given a rotation 2⌢A₀C followed by a rotation 2⌢CB₀, the resultant rotation of the sphere is 2⌢A₀B₀.

This theorem on composition of rotations shows that three arcs meeting at a common vertex C on the sphere determine the resultant. The **conjugate** of a rotation (by another rotation *q*) is the construction *qrq*⁻¹ — you rotate into a new frame with *q*, apply *r*, then rotate back with *q*⁻¹. This is precisely what becomes the quaternion rotator formula in Chapter 3, where Hathaway shows that the rotator *q*( )*q*⁻¹ rotates any step through twice the arc of *q*.

The geometric picture from Chapter 2 makes this transparent: conjugating a rotation *r* by *q* simply relabels which great circle arc is being applied — it changes the *axis* of rotation while keeping the rotation *angle* the same.
