

**Definition.** A quaternion q has an inverse q⁻¹ if

q q⁻¹ = q⁻¹ q = 1

For a nonzero quaternion, the inverse is

q⁻¹ = q*/N(q) = (q₀ − q₁i − q₂j − q₃k)/(q₀² + q₁² + q₂² + q₃²)

**Why this formula works.** Since qq* = N(q) is a real number, dividing both sides by N(q) gives q·(q*/N(q)) = 1. The same holds on the other side because q*q = N(q) as well. So the conjugate, scaled by the norm, is a two-sided inverse.

**Existence.** An inverse exists exactly when N(q) ≠ 0, which is the same as q ≠ 0. Every nonzero quaternion is invertible, which is what makes the quaternions a division algebra. The number 0 has no inverse.

**Properties.**
- **Uniqueness:** the inverse is unique when it exists.
- **Inverse of a product:** (pq)⁻¹ = q⁻¹p⁻¹. The order reverses, just as with conjugation and transposition of matrices. This matters because multiplication is not commutative.
- **Inverse of the inverse:** (q⁻¹)⁻¹ = q
- **Inverse of the conjugate:** (q*)⁻¹ = q/N(q)
- **Norm of the inverse:** N(q⁻¹) = 1/N(q)

**Unit quaternions.** If N(q) = 1, the formula simplifies to q⁻¹ = q*. The inverse is just the conjugate, which is why rotation formulas can use q* in place of q⁻¹. This is the main practical reason the inverse matters for rotation sequences: a rotation undone by q is undone by q*, and composing rotations gives products like q₁q₂, whose inverse is q₂⁻¹q₁⁻¹ = q₂*q₁*.

**Example.** For q = 1 + i + j (so N(q) = 3):

- q* = 1 − i − j
- q⁻¹ = (1 − i − j)/3
- Check: q·q⁻¹ = (1 + i + j)(1 − i − j)/3. Expanding gives (1 − i − j + i − i² − ij + j − ji − j²)/3 = (1 − i − j + i + 1 − k + j + k + 1)/3 = 3/3 = 1. ✓
