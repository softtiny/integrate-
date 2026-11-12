
**The basic rules.** Multiplication is determined by the products of the basis elements, together with distributivity and the fact that real numbers commute with everything:

- $i^2 = j^2 = k^2 = −1$
- $ij = k, jk = i, ki = j$
- $ji = −k, kj = −i, ik = −j$

The unit 1 acts as an identity: $1·q = q·1 = q$.

**The general product.** Given $p = p₀ + p₁i + p₂j + p₃k$ and $q = q₀ + q₁i + q₂j + q₃k$, you multiply term by term, using distributivity and the rules above. The result is

pq = (p₀q₀ − p₁q₁ − p₂q₂ − p₃q₃)+ (p₀q₁ + p₁q₀ + p₂q₃ − p₃q₂)i+ (p₀q₂ − p₁q₃ + p₂q₀ + p₃q₁)j+ (p₀q₃ + p₁q₂ − p₂q₁ + p₃q₀)k

**Scalar and vector form.** Writing p = (p₀, **p**) and q = (q₀, **q**), where **p** and **q** are the vector parts, the product is

pq = (p₀q₀ − **p**·**q**, p₀**q** + q₀**p** + **p** × **q**)

This is the most compact form and is often what a book like Kuipers' uses. The dot product gives the scalar part, and the cross product gives the extra vector term.

**Key properties.**
- **Associative:** (pq)r = p(qr). This holds even though the product is not commutative.
- **Not commutative:** pq ≠ qp in general. The difference comes entirely from the cross product: pq − qp = 2(**p** × **q**) in vector form.
- **Distributive:** p(q + r) = pq + pr and (p + q)r = pr + qr.
- **Norm is multiplicative:** |pq| = |p||q|.
- **Conjugate of a product:** (pq)* = q*p*, note the reversed order.

**A worked example.** Let p = 1 + 2i and q = j + k.

Using the general formula (p₀ = 1, p₁ = 2, p₂ = p₃ = 0; q₀ = 0, q₁ = 0, q₂ = 1, q₃ = 1):

- Scalar part: 0 − 0 − 0 − 0 = 0
- i part: 0 + 0 + 0 − 0 = 0 (from p₀q₁ + p₁q₀ + p₂q₃ − p₃q₂ = 0 + 0 + 0 − 0)
- j part: p₀q₂ − p₁q₃ + p₂q₀ + p₃q₁ = 1 − 2 + 0 + 0 = −1
- k part: p₀q₃ + p₁q₂ − p₂q₁ + p₃q₀ = 1 + 2 − 0 + 0 = 3

So pq = −j + 3k. Check by direct expansion: (1 + 2i)(j + k) = j + k + 2ij + 2ik = j + k + 2k − 2j = −j + 3k. ✓
