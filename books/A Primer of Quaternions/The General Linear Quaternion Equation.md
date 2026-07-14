

## The General Linear Equation

Hathaway defines the most general first-degree equation in an unknown vector ρ as a sum of terms in which ρ is multiplied on the left and right by known quaternions:

$$q_1\rho r_1 + q_2\rho r_2 + \cdots = q$$

where $q, q_1, r_1, q_2, r_2, \ldots$ are all *given* (known) quaternions, and ρ is the unknown vector to be found.

Because ρ is a vector, this single quaternion equation actually packs in more than one scalar condition — a quaternion in general has both a scalar part and a vector part. So Hathaway's strategy is to **split the equation in two** by taking the scalar and the vector of each side separately, and then solve those two simpler equations independently.

## How the split unfolds

**Scalar part:** Taking the scalar of the equation, each term $Sq_i\rho r_i$ can be rewritten (using a cyclic permutation and dropping the part with zero scalar) as $S(V r_iq_i\cdot\rho)$. Collecting all such terms defines a single vector $\delta = Vr_1q_1 + Vr_2q_2+\cdots$ and a scalar $d = Sq$, reducing the scalar part of the general equation to the compact form:

$$S\delta\rho = d$$

This is shown to be the equation of a **plane** — the set of vectors ρ whose projection onto δ is fixed. Its general solution is $\rho = d\delta^{-1} + V\sigma\delta$ for an arbitrary vector σ (i.e., a particular point plus any vector perpendicular to δ).

**Vector part:** Similarly, the vector part reduces to an equation of the form $V\delta\rho = \delta'$, which turns out to represent a **straight line**, solvable (when consistent) as $\rho = \delta^{-1}\delta' + x\delta$ for an arbitrary scalar $x$.

**Putting them together:** The simultaneous scalar equations of two or three planes intersecting give the line or point of intersection — e.g., for three planes $S\alpha\rho=a,\ S\beta\rho=b,\ S\gamma\rho=c$, the point of intersection is

$$\rho = \frac{aV\beta\gamma + bV\gamma\alpha + cV\alpha\beta}{S\alpha\beta\gamma}$$

So the throughline of the section: a general linear quaternion equation in ρ, though it looks like a single equation, geometrically encodes plane and line conditions, and Hathaway solves it by decomposing it via S and V into these simpler geometric loci.
