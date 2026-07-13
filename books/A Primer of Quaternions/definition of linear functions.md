starts from the vector equation of first degree:
$$Vq_1\rho r_1 + Vq_2\rho r_2 + \cdots = Vq$$

Solving it by resolving along **i, j, k** gives three scalar equations of first degree, from which $\rho$ is found — corresponding to the intersection of three planes.

This is the actual definition:

> "The first member of Art. 69 (a) is a linear, homogeneous vector function of $\rho$; i.e., it is of first degree in $\rho$, every term is of the same degree in $\rho$, and it is a vector."

Hathaway then names the whole operator:
$$\varphi = Vq_1()r_1 + Vq_2()r_2 + \cdots$$
so that $\varphi\rho, \varphi\sigma, \ldots$ denote the vectors that result from putting $\rho, \sigma, \ldots$ into the blank left by the parentheses.

establishes the key algebraic property of this linear function: it's distributive over sums and commutative with scalars,
$$\varphi(x\rho + y\sigma) = x\varphi\rho + y\varphi\sigma$$

shows the operator is fully determined by its action on three non-coplanar vectors $\alpha, \beta, \gamma$: if $\rho = x\alpha+y\beta+z\gamma$, then
$$\varphi\rho = x\varphi\alpha + y\varphi\beta + z\varphi\gamma$$
Since each of $\varphi\alpha, \varphi\beta, \varphi\gamma$ needs 3 scalar constants to specify, the whole operator depends on **9 scalar constants** — which is why Hathaway calls it a **nonion** (his term for what we'd now call a general linear operator / 3×3 matrix acting on vectors). He notes scalars and rotators are special cases of nonions.