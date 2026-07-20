# Solution of $φρ = δ$

## Background

Hathaway defines a **nonion** φ as a linear homogeneous vector operator — it takes a vector ρ and returns another vector φρ, and it's linear (φ(xρ + yσ) = xφρ + yφσ). Physically, φ represents a *linear homogeneous strain*: it stretches/rotates all of space, fixing the origin.

The **modulus** of φ (mod φ) is the ratio by which φ dilates volume — essentially playing the role of a determinant. A nonion is called **null** if its modulus is zero (i.e., it collapses space into a plane, line, or point instead of filling all of space).

## The equation φρ = δ and its inversion

The question addressed is: given φ and a known vector δ, solve for ρ. This is the "inversion" of the linear function φ. Hathaway lays out five cases, depending on the *order of nullity* of φ:

1. **φ finite (non-null):** There is exactly one solution — φ is genuinely invertible, and ρ = φ⁻¹δ in the usual sense.

2. **φ singly null, δ not in the plane of φ:** No finite solution exists. Dividing by Tρ and letting Tρ → ∞ gives φ(Uρ) = 0, meaning the "solution" is the vector at infinity in φ's null direction.

3. **φ singly null, δ lies in the plane of φ:** Infinitely many solutions — they form a line of points parallel to φ's null direction.

4. **φ doubly null, δ not on the line of φ:** No finite solution; solutions occur only at infinity, on the line at infinity in φ's null plane.

5. **φ doubly null, δ lies on the line of φ:** Infinitely many solutions, forming a plane parallel to φ's null plane.

Hathaway ties these cases directly to the geometry of **three simultaneous scalar plane equations** (since the vector equation φρ = δ, when resolved along i, j, k, reduces to three scalar equations, as in Art. 68–69):

| Case | Geometric meaning |
|---|---|
| (a) φ finite | The three planes meet in a single point |
| (b) singly null, δ ∉ plane | The three planes are parallel to a common line (no intersection) |
| (c) singly null, δ ∈ plane | The three planes share a common line |
| (d) doubly null, δ ∉ line | The three planes are parallel (no common point) |
| (e) doubly null, δ ∈ line | The three planes coincide |

So this section is essentially the quaternion/nonion analogue of solving (and classifying the solvability of) a linear system Ax = b depending on the rank/nullity of A — cast in the geometric language of strains, null directions, and null planes rather than matrices.
