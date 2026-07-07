


In quaternion algebra, this is the fundamental decomposition that lets quaternions represent both algebraic scalars and 3D vectors in one system.

## The Basic Idea

Every quaternion $q$ can be split into two parts:

$$q = Sq + Vq$$

- **$Sq$** — the **scalar part**, an ordinary real number
- **$Vq$** — the **vector part**, a pure vector (a quaternion with zero scalar component)

So if $q = w + xi + yj + zk$, then:

$$Sq = w \qquad Vq = xi + yj + zk$$

## Why This Split Matters

A quaternion with $Sq = 0$ is called a **pure quaternion** (or "right quaternion" in older texts like Hathaway's) — it behaves exactly like a 3D vector, and quaternion multiplication of two pure vectors reproduces both the dot product and cross product:

$$q_1 q_2 = -\mathbf{a}\cdot\mathbf{b} + \mathbf{a}\times\mathbf{b}$$

for pure quaternions $q_1 = \mathbf{a}$, $q_2 = \mathbf{b}$. That is:

$$S(q_1 q_2) = -\mathbf{a}\cdot\mathbf{b} \qquad V(q_1 q_2) = \mathbf{a}\times\mathbf{b}$$

This single identity is why quaternions were historically used as a unified tool for 3D geometry — dot and cross products both fall out of one multiplication rule.

## Operational Rules

Hathaway's text develops several standard properties, typically including:

1. **Linearity**: $S(q_1+q_2) = Sq_1+Sq_2$, and similarly for $V$.
2. **Conjugate relation**: The conjugate $Kq = Sq - Vq$ (flips the sign of the vector part). This gives:
   $$Sq = \tfrac{1}{2}(q+Kq) \qquad Vq = \tfrac{1}{2}(q-Kq)$$
3. **Product decomposition**: For general quaternions $q_1, q_2$,
   $$S(q_1q_2) = Sq_1\,Sq_2 - Vq_1\cdot Vq_2$$
   $$V(q_1q_2) = Sq_1\,Vq_2 + Sq_2\,Vq_1 + Vq_1\times Vq_2$$
4. **Scalar of a product is order-independent for the "trace" sense**: $S(q_1q_2) = S(q_2q_1)$, even though $q_1q_2 \ne q_2q_1$ in general.
5. **Norm/tensor relation**: $S(q\,Kq) = (Sq)^2 + |Vq|^2 = $ the squared tensor (magnitude) of $q$.

## Geometric Payoff

Because a vector is just a pure quaternion, rotations and reflections in 3D can be written as quaternion conjugation, $q' = uqu^{-1}$, and this scalar/vector split is exactly what lets you check that the scalar part of $q$ (the "real" part) stays invariant under rotation while the vector part rotates


