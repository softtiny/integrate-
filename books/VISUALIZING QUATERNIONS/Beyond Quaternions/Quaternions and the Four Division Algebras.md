
**The four normed division algebras**

There's a classical theorem (Hurwitz, 1898) that says there are *exactly four* normed division algebras over the real numbers:

| Algebra | Dimension | Basis elements | Key property lost |
|---|---|---|---|
| Real numbers (ℝ) | 1 | 1 | — |
| Complex numbers (ℂ) | 2 | 1, i | ordering |
| Quaternions (ℍ) | 4 | 1, i, j, k | commutativity |
| Octonions (𝕆) | 8 | 1, i₁...i₇ | associativity |

Each one is built from the previous one by the **Cayley–Dickson construction**: given an algebra A, you form pairs (a, b) with a, b ∈ A, and define multiplication using a conjugation operation on A. Doing this to ℝ gives ℂ; doing it to ℂ gives ℍ; doing it to ℍ gives 𝕆. If you try to do it again to 𝕆, you get the sedenions — but they aren't a division algebra anymore (they have zero divisors: nonzero elements that multiply to zero).

**What each step costs you**

Going from ℝ to ℂ, you gain a genuine second dimension but lose the natural ordering of numbers. Going from ℂ to ℍ, you gain 3D/4D rotational structure but lose commutativity (qp ≠ pq in general). Going from ℍ to 𝕆, you gain another doubling in dimension but lose associativity: (ab)c ≠ a(bc) in general, though octonions retain a weaker property called *alternativity*.

This is why quaternions are the practical sweet spot for representing 3D rotations: they're the largest of these algebras that's still associative, so ordinary algebraic manipulation (grouping, composing rotations) still works cleanly. Octonions are a beautiful curiosity with deep connections to exceptional Lie groups (G₂) and string theory, but their non-associativity makes them awkward for everyday computation.