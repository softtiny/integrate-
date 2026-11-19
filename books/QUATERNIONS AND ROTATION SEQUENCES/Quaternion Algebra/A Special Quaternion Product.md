

**Most likely: the product of two pure quaternions.** Pure quaternions (q₀ = 0) correspond to 3D vectors. For pure quaternions p = **p** and q = **q**, the product is

pq = −**p**·**q** + **p** × **q**

This combines the dot product (the scalar part) and the cross product (the vector part) into one operation. It is often called "special" because it packages two familiar vector operations in a single product. Consequences:

- **Anticommutativity:** since the dot product is symmetric and the cross product is antisymmetric, pq = −qp − 2(**p**·**q**) + ... more simply, pq + qp = −2(**p**·**q**), and the vector part of pq is the only part that changes sign when the order is reversed.
- **Orthogonal vectors anticommute:** if **p** ⊥ **q**, then pq = −qp.
- **Parallel vectors:** if **p** = **q** with |**p**| = 1, then p² = −1.

**Example.** Let p = i and q = j. Then **p**·**q** = 0 and **p** × **q** = k, so pq = k, which matches the basis rule ij = k.

**Another candidate: the product of a quaternion and its conjugate in a rotation.** The expression qvq* for a vector v is sometimes called a "special product" or "sandwich product." It rotates v by the rotation represented by q, and it is the usual way rotations are written in quaternion form.

**Another candidate: a product giving a specific result.** Some texts define a special product for quaternions that yields a real or pure result under certain conditions, such as the product of a quaternion with its own conjugate, which always gives the real number N(q).

