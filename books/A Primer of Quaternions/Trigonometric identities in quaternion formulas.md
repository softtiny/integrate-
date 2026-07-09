

## Background formulas

Hathaway first establishes that a quaternion $q$ can be written in exponential/polar form:

$$q = r(\cos\theta + \varepsilon\sin\theta) = re^{\varepsilon\theta}$$

where $r = Tq$ (the tensor), $\theta = \angle q$ (the angle), and $\varepsilon = UVq$ (the unit vector — axis — of $q$). The conjugate is

$$Kq = r(\cos\theta - \varepsilon\sin\theta) = re^{-\varepsilon\theta}$$

and multiplication of two such exponential quaternions obeys

$$e^{\varepsilon\theta}\cdot e^{\varepsilon\theta'} = e^{\varepsilon(\theta+\theta')}$$

(valid when both factors share the same axis $\varepsilon$, i.e. are "cocircular").

## The Trigonometric Identifications (Geometric Theorems)

From $e^{\varepsilon\theta} = \cos\theta + \varepsilon\sin\theta$ and $e^{\varepsilon\theta}\cdot e^{\varepsilon\theta'} = e^{\varepsilon(\theta+\theta')}$, show that

$$\cos(\theta+\theta') = \cos\theta\cos\theta' - \sin\theta\sin\theta'$$
$$\sin(\theta+\theta') = \sin\theta\cos\theta' + \cos\theta\sin\theta'$$

**Derivation:** Expand both sides of $e^{\varepsilon\theta}e^{\varepsilon\theta'}=e^{\varepsilon(\theta+\theta')}$:

$$(\cos\theta+\varepsilon\sin\theta)(\cos\theta'+\varepsilon\sin\theta') = \cos(\theta+\theta')+\varepsilon\sin(\theta+\theta')$$

Multiplying out the left side, and using $\varepsilon^2=-1$ (since $\varepsilon$ is a unit vector),

$$\cos\theta\cos\theta' + \varepsilon\cos\theta\sin\theta' + \varepsilon\sin\theta\cos\theta' + \varepsilon^2\sin\theta\sin\theta'$$
$$= (\cos\theta\cos\theta' - \sin\theta\sin\theta') + \varepsilon(\sin\theta\cos\theta'+\cos\theta\sin\theta')$$

Equating the scalar parts and the $\varepsilon$-vector parts of both sides (since a quaternion equation splits into a scalar equation and a vector equation) gives exactly the sum formulas above — the ordinary angle-addition identities of trigonometry, obtained purely from quaternion multiplication.

**De Moivre's Theorem** Show that

$$(\cos\theta + \varepsilon\sin\theta)^n = \cos n\theta + \varepsilon\sin n\theta$$

This follows immediately by repeated application of (or from the power law $q^n$ with $\text{arc } q^n = n\cdot\text{arc } q$), since $e^{\varepsilon\theta}$ raised to the $n$th power just multiplies the angle by $n$.

## Related spherical-trigonometry identifications

Hathaway extends the same idea to derive the spherical law of cosines and sines by taking scalars/vectors of quaternion products of arcs:

- $Spq = Sp\,Sq + S(Vp\cdot Vq)$, which translates (via arcs on a sphere) into the spherical triangle identity
$$\cos a = \cos b\cos c + \sin b\sin c\cos A$$
- From $V(V\gamma\alpha\cdot V\alpha\beta) = -\alpha\,S\alpha\beta\gamma$ and cyclic permutations, the spherical law of sines follows:
$$\sin a : \sin b : \sin c = \sin A : \sin B : \sin C$$

So "Trigonometric Identifications" in this chapter refers to Hathaway showing that ordinary plane-trigonometric identities (angle addition, De Moivre's theorem) and spherical-trigonometric identities (law of cosines, law of sines) all fall out naturally as scalar/vector components of quaternion products — a demonstration that quaternion algebra reproduces classical trigonometry as a special case.

