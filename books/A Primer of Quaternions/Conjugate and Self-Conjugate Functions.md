

## Conjugate Nonions

**Definition.** Two nonions φ and φ′ are called *conjugate* to each other when, for every pair of vectors ρ and σ,

$$S\rho\varphi\sigma = S\sigma\varphi'\rho$$

(recall $Sq$ denotes the scalar part of a quaternion $q$, so $S\rho\varphi\sigma$ is essentially the scalar/dot-product-like pairing of ρ with φσ). Given φ, this condition pins down φ′ uniquely. Setting σ successively equal to the unit vectors **i, j, k** gives an explicit formula:

$$\varphi'\rho = -\mathbf{i}\,S\rho\varphi\mathbf{i} - \mathbf{j}\,S\rho\varphi\mathbf{j} - \mathbf{k}\,S\rho\varphi\mathbf{k}$$

This is exactly the transpose operation you'd expect: if φ is represented by a 3×3 matrix, φ′ is its transpose.

**Key properties:**
- $(a\varphi + b\psi)' = a\varphi' + b\psi'$ — conjugation is linear
- $(\varphi\psi)' = \psi'\varphi'$ — the conjugate of a product reverses the order of factors, just like the transpose of a matrix product

**Theorem.** Conjugate nonions φ and φ′ share the same latent roots and the same modulus, and a latent *plane* of one is perpendicular to the corresponding latent *line* of the other. Hathaway proves this by starting from a latent direction α of φ (so $(\varphi - g_1)\alpha = 0$) and showing this forces $\varphi' - g_1$ to be a null nonion whose plane is perpendicular to α.

## Self-Conjugate Nonions

**Definition.** A nonion is *self-conjugate* when $\varphi' = \varphi$, i.e. $S\rho\varphi\sigma = S\sigma\varphi\rho$ for all ρ, σ. This cuts the nine independent constants of a general nonion down to six, since three pairs of "off-diagonal" constants must match:
$$S\mathbf{i}\varphi\mathbf{j} = S\mathbf{j}\varphi\mathbf{i}, \quad S\mathbf{i}\varphi\mathbf{k} = S\mathbf{k}\varphi\mathbf{i}, \quad S\mathbf{j}\varphi\mathbf{k} = S\mathbf{k}\varphi\mathbf{j}$$
— the modern analogue of a symmetric matrix.

A self-conjugate strain has three mutually perpendicular latent directions. Conversely, if **i, j, k** are mutually perpendicular latent directions with latent roots a, b, c, then
$$\varphi\rho = -a\mathbf{i}\,S\mathbf{i}\rho - b\mathbf{j}\,S\mathbf{j}\rho - c\mathbf{k}\,S\mathbf{k}\rho$$
is self-conjugate — this is essentially the eigen-decomposition of a symmetric operator.

A *real* self-conjugate nonion always has *real* latent roots. Hathaway proves it by contradiction: if a pair of latent directions corresponded to conjugate-imaginary roots $a, b$, self-conjugacy would force a contradiction ($S\alpha'\beta' = 0$ turns out to equal a strictly negative quantity), so imaginary roots can't occur.

**Negatively self-conjugate nonions.** By contrast, φ is *negatively self-conjugate* when $\varphi' = -\varphi$. Such an operator has only three independent constants (all "diagonal" terms vanish), and it turns out $\varphi\rho = V\varepsilon\rho$ for some fixed vector ε — i.e. it acts like a cross product with a fixed vector, always giving a result perpendicular to ρ.

**Decomposition Theorem.** Any nonion φ can be split *uniquely* into a self-conjugate part and a negatively self-conjugate part:
$$\varphi\rho = \tfrac{1}{2}(\varphi+\varphi')\rho + \tfrac{1}{2}(\varphi-\varphi')\rho = \bar\varphi\rho + V\varepsilon\rho$$
where $\bar\varphi = \tfrac{1}{2}(\varphi+\varphi')$ is self-conjugate and
$$\varepsilon = \tfrac{1}{2}V(\mathbf{i}\varphi\mathbf{i} + \mathbf{j}\varphi\mathbf{j} + \mathbf{k}\varphi\mathbf{k})$$

This is the quaternionic analogue of decomposing any matrix into its symmetric and antisymmetric parts.

---

**Why this matters (as the following Examples show):** self-conjugate nonions are exactly the operators that show up in the general scalar equation of second degree, $S\rho\varphi\rho + 2S\delta\rho + d = 0$ (Ex. 6 right after this section) — i.e. they're the algebraic backbone of quadric surfaces (ellipsoids, hyperboloids, etc.), with the latent directions of φ giving the principal axes.
