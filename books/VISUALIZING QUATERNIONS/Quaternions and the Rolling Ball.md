

## The core idea: "rolling ball" as a way to *feel* quaternion multiplication order

Hanson uses a physical **rolling ball** model to give people intuition for why **quaternion multiplication doesn't commute** — i.e., why `q1 * q2 ≠ q2 * q1` in general.

**The setup:**
- Imagine a ball resting on a table, free to roll (without slipping or spinning about the vertical axis) in any direction.
- Each rolling motion corresponds to a small rotation, which can be represented as a quaternion.
- As you roll the ball along different paths on the table, the ball's *orientation* (which way "up" points on the ball's surface, or where a marked point on the ball ends up) changes depending on the *path taken*, not just the start and end position.

**Why order matters:**
- If you roll the ball forward, then sideways, you get a different final orientation than if you roll it sideways first, then forward — even though the ball ends up at the same *location* on the table.
- This is a physical demonstration of **non-commutativity**: composing rotation A then rotation B is not the same as composing B then A.
- In quaternion terms, this is exactly the statement that quaternion multiplication is non-commutative, and the rolling ball gives a tangible, hands-on way to *see and feel* this rather than just accepting it algebraically.

**The pedagogical point Hanson is making:**
- Rotations (and their quaternion representations) are fundamentally about *paths*, not just endpoints.
- The rolling ball lets you track cumulative rotation via a physical, continuous process — rolling along a closed loop on the table can leave the ball in a rotated orientation even though it returns to its starting position. This is closely related to concepts like **holonomy** in differential geometry.
- It builds intuition for why, when composing 3D rotations (e.g., in animation, robotics, or spacecraft attitude control), the *order* in which you apply rotations is critical — a lesson that's often confusing when people first move from commutative arithmetic to rotation composition.
