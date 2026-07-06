## Definition of Quaternion Addition

Hathaway defines addition operationally, through the action of quaternions on steps rather than through components. The sum $p+q$ is the quaternion whose *product* (when applied to a step) equals the sum of the products of $p$ and $q$ applied to that same step.

Concretely: pick any step $OA$. Let $pOA = OB$ and $qOA = OC$, and let $OB + OC = OD$ (ordinary step addition, i.e., completing the parallelogram). Then by definition,
$$(p+q)\,OA = OD.$$

This is well-defined — changing $OA$ scales $OB$, $OC$, $OD$ proportionally, so the ratio $OD:OA$ that determines $p+q$ doesn't depend on which step you started with.

## Scalar/Vector Decomposition

Before proving the laws, Hathaway builds a key tool: every quaternion splits uniquely into a scalar part and a vector part, $q = Sq + Vq$, and this splitting is *additive*:
$$S(p+q) = Sp + Sq, \qquad V(p+q) = Vp + Vq, \qquad K(p+q) = Kp + Kq$$
(where $K$ is the conjugate). This is shown geometrically: if $pOA=OB$ and $qOA=OC$, the components of $OB$ and $OC$ parallel/perpendicular to $OA$ add just like the components of $OD = OB+OC$ do.

This matters because it reduces quaternion addition to *vector* addition (which behaves exactly like step/vector addition) plus ordinary scalar addition.

## The Commutative Law 

Hathaway first proves a purely geometric lemma: if $(OA)$ and $(OB)$ denote the *vectors* corresponding to steps $OA$, $OB$ (recall a vector is a special quaternion — one that turns 90°), then
$$(OA) + (OB) = (OC) \iff OA + OB = OC.$$

This is shown by rotating the whole configuration 90° about a perpendicular axis, turning vector addition into ordinary step addition, where the parallelogram law already guarantees $OA + OB = OB + OA$.

**Corollary 1**: Vectors add exactly the way their corresponding steps add — so all the laws already established for step addition (Chapter 1) transfer immediately to vector addition, including commutativity.

**Corollary 2**: Since a sum of vectors doesn't depend on the order of addition, and ordinary scalars obviously add commutatively too, then by the scalar/vector splitting result (Art. 49), the scalar part and vector part of any sum of quaternions are each independent of the order of addition. Since a quaternion equals the sum of its own scalar and vector, the whole sum $p+q$ is therefore independent of order:
$$p + q = q + p.$$

## The Associative Law

The same corollary handles associativity in one stroke. Step addition was already shown to be associative — any consecutive terms in a sum of steps may be replaced by their sum without changing the total. Since vectors inherit this from steps, and scalar addition is trivially associative, the scalar and vector components of a quaternion sum are independent of *how* the sum is grouped. Hence so is the sum itself:
$$(p+q)+r = p+(q+r).$$

Hathaway treats commutativity and associativity together, deriving both from the single fact that vector addition mirrors step addition and scalar addition is ordinary arithmetic.


## Closure and "Component Addition"

Closure isn't stated as a separate numbered theorem, but it's built into the definition itself: given *any* two quaternions $p, q$, the construction in Art. 47 (apply both to a chosen step, add the resulting steps, take the ratio to the original step) always produces another well-defined quaternion. So the set of quaternions is closed under addition by construction.

"Component addition" is really the content of Art. 48–49: since every quaternion decomposes as $q = Sq + Vq$ (a scalar part plus a vector part), addition of quaternions reduces to addition of these components separately:
$$p + q = (Sp+Sq) + (Vp+Vq).$$
In modern terms, this is exactly component-wise addition of the "real" (scalar) part and the "imaginary" (vector, i.e. $i,j,k$) parts — Hathaway is essentially proving that quaternion addition is componentwise addition, but he does it geometrically via steps rather than by postulating coordinates.