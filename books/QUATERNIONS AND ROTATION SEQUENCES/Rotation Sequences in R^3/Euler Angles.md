

**1. What Euler angles are**

Euler angles describe an arbitrary rotation in R^3 as a composition of three elementary rotations about coordinate axes. Any orientation can be reached by three successive turns, provided consecutive axes are not the same. The angles (α, β, γ) give the sizes of those turns, and the sequence of axes (the "convention") says which axes to use and in what order.

**2. Conventions**

There are twelve valid sequences. Six are "proper Euler" sequences, where the first and last axes are the same: Z–X–Z, X–Y–X, Y–Z–Y, Z–Y–Z, X–Z–X, Y–X–Y. The other six are "Tait–Bryan" sequences, where all three axes differ: Z–Y–X (yaw, pitch, roll in aerospace), X–Y–Z, and so on. Kuipers' book works through these systematically, and the choice of convention determines every formula that follows.

**3. Fixed versus moving axes**

A sequence can be read two ways. In the fixed (extrinsic) reading, each rotation is about an axis of the original frame. In the moving (intrinsic) reading, each rotation is about an axis of the body frame, which has already been turned. The same three numbers in reversed order produce the same orientation under the two readings. This is the link to the equivalence results discussed earlier.

**4. Quaternion form**

Each elementary rotation about a unit axis e by angle θ corresponds to the quaternion q = cos(θ/2) + sin(θ/2) e. A Euler sequence therefore becomes a product of three such quaternions. For the Z–X–Z sequence with angles (α, β, γ):

q = (cos(α/2) + sin(α/2) k)(cos(β/2) + sin(β/2) i)(cos(γ/2) + sin(γ/2) k)

Multiplying out gives the four quaternion components as products and sums of half-angle sines and cosines. This is the form the book uses to convert between Euler angles and quaternions.

**5. Recovering the angles**

Going the other way, from a rotation matrix or quaternion back to angles, the standard approach is to match entries of the matrix or components of the quaternion, then apply inverse trigonometric functions. For a proper Euler sequence, the middle angle β comes from an arccosine of a single matrix entry, so it lies in [0, π] and has two solutions for the other two angles. The sign of the sine term resolves which branch applies.

**6. Gimbal lock**

When the middle angle is 0 or π in a proper Euler sequence, the first and third rotations act about the same axis. Only their sum (or difference) matters, so the decomposition is no longer unique. Any split of that sum gives the same orientation. For Tait–Bryan sequences, the analogous singularity occurs when the middle angle reaches ±π/2. Quaternions avoid the representation singularity, but the angle extraction still has to handle these cases separately.


