

**The Complex Conjugate**

For a complex number z = a + bi, the conjugate is:

$$\bar{z} = a - bi$$

Geometrically, this is a reflection of the point across the real axis.

Key properties, typically covered in this kind of section:

- **Product with itself**: z z̄ = (a + bi)(a - bi) = a² + b² — always a non-negative real number. This is what lets you define the modulus, |z| = √(z z̄).
- **Linearity**: conjugation distributes over addition and subtraction: $\overline{z_1 + z_2} = \bar{z_1} + \bar{z_2}$.
- **Product rule**: $\overline{z_1 z_2} = \bar{z_1}\,\bar{z_2}$ — for complex numbers, order doesn't matter since multiplication is commutative.
- **Double conjugate**: $\overline{\bar{z}} = z$.
- **Real and imaginary parts recovered**: $a = \text{Re}(z) = \frac{z + \bar{z}}{2}$, $b = \text{Im}(z) = \frac{z - \bar{z}}{2i}$.
- **Role in division**: conjugation is the standard trick to rationalize a complex denominator, since $z^{-1} = \bar{z}/|z|^2$.

For a quaternion q = a + bi + cj + dk, the conjugate is q̄ = a - bi - cj - dk, and q q̄ gives the squared norm just as in the complex case. Quaternion multiplication is non-commutative, the product rule flips order: $\overline{pq} = \bar{q}\,\bar{p}$, not $\bar{p}\bar{q}$.