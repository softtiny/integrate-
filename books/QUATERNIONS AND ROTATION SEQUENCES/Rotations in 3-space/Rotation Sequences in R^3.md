

A rotation in 3-space is typically written as a product of simpler rotations, each about a coordinate axis. Euler angles are the classic example: you choose a sequence of axes, such as z-x-z or z-y-x, and an angle for each step. The total rotation is the product of the three axis rotations, R = R₁(α) R₂(β) R₃(γ), applied in the order that the chosen convention specifies.

The key difference from the plane is that order matters. Rotations about different axes do not commute, so changing the sequence (say, x then y versus y then x) generally gives a different final orientation. This is also why conventions for Euler angles vary, and why a sequence has to be stated explicitly.

Two common sequence types are:

- Proper Euler sequences, which repeat an axis (z-x-z, for example).
- Tait-Bryan sequences, which use three different axes (z-y-x, the yaw-pitch-roll convention used in aviation and robotics).

Quaternions give a cleaner way to compose these rotations, since multiplying unit quaternions corresponds to composing rotations and avoids some of the gimbal-lock issues that affect Euler angles.
