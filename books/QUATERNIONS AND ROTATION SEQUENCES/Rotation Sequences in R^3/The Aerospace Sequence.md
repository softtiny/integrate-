

**1. What the aerospace sequence is**

The aerospace sequence is a Tait–Bryan Euler sequence, Z–Y–X, which is often called yaw–pitch–roll. It describes how an aircraft's body frame is oriented relative to a fixed reference frame, usually the local north-east-down or north-east-up frame. Starting from alignment with the reference frame, you apply three rotations in order: yaw about the vertical axis, pitch about the new lateral axis, and roll about the new longitudinal axis.

**2. The three rotations**

Let the angles be ψ (yaw), θ (pitch), and φ (roll). The first rotation is about the z-axis by ψ. The second is about the intermediate y-axis by θ. The third is about the body x-axis by φ. Because each rotation is taken about the axis of the frame produced by the previous one, this is an intrinsic (moving-axis) sequence. Reading the same rotations as fixed-axis rotations gives the same orientation with the order reversed, X–Y–Z applied to (φ, θ, ψ).

**3. Rotation matrix**

The composite rotation matrix is the product of three elementary matrices:

R = Rz(ψ) Ry(θ) Rx(φ)

Multiplying out gives the familiar nine entries in terms of cosines and sines of the three angles. The first column, for example, is (cos ψ cos θ, sin ψ cos θ, −sin θ). The third row contains −sin θ, which is the entry that makes pitch the angle most directly visible in the matrix.

**4. Quaternion form**

Using the half-angle form of each elementary quaternion, the aerospace sequence becomes:

q = q_z(ψ) q_y(θ) q_x(φ)

with each factor of the form cos(angle/2) + sin(angle/2) times the axis unit vector. Expanding yields explicit formulas for the four components in terms of half-angle sines and cosines. These are the expressions used to convert attitude quaternions to Euler angles and back.

**5. Recovering the angles**

From the rotation matrix, the pitch comes from θ = −arcsin(R₃₁), valid when |R₃₁| < 1. Yaw and roll then follow from the arctangents of the entries in the first row and the third row's remaining entries, using two-argument arctangent to get the correct quadrant. From quaternions, the same angles come from expressions involving the components directly, which avoid some numerical issues near the singularity.

**6. Singularity**

The aerospace sequence has a singularity at pitch θ = ±π/2. There, the yaw and roll axes align, and only ψ − φ (or ψ + φ, depending on sign) is determined. This is the Tait–Bryan form of gimbal lock. Aircraft attitude software typically handles it by limiting pitch or switching to a quaternion representation.
