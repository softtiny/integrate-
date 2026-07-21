φ has already been introduced as an operator taking a vector ρ to another vector φρ, and the idea of a **latent root** m has been set up: a scalar m for which

φρ = mρ

has a nontrivial solution ρ (a "latent line," i.e. an invariant direction of the operator).

## The core content

**Setting up the cubic.** Requiring φρ = mρ (equivalently (φ − m)ρ = 0) to have a nonzero vector solution ρ forces the determinant of the array of coefficients of (φ − m) to vanish. Expanding that determinant in powers of m produces a cubic in m:

**m³ − m₁m² + m₂m − m₃ = 0**

where:
- **m₁** is the sum of the three diagonal coefficients of φ (its "first derived modulus," essentially the trace),
- **m₂** is the sum of the three principal 2×2 minors (second derived modulus),
- **m₃** is the full determinant of φ (third derived modulus, sometimes called its "modulus").

This is Hathaway's *characteristic cubic*: its three roots are the latent roots of φ, and each root, substituted back, gives the direction of a latent line.

**The key theorem.** The section's central result is that the operator φ itself satisfies this same cubic equation — that is,

**φ³ − m₁φ² + m₂φ − m₃ = 0**

as an operator identity (this is the nonion/vector-operator analogue of what's now usually called the Cayley–Hamilton theorem). Hathaway proves it directly from the algebra of nonions rather than by first finding the roots, so it holds even when the roots aren't real or aren't distinct.