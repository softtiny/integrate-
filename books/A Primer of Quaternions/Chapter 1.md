# Steps

- Definition
    - A step is a given length measured in a given direction
    - 3 feet east, 3 feet north, 3 feet up, 3 feet north-east, 3 feet north-east-up, are steps.
    - two steps are equal when, and only when, they have the same lengths and the same directions


### a geometric, intuitive foundation for spatial mathematics.

- **Determining Centers of Gravity:** Using weighted step equations to locate points and centroids.
- **Curve Tracing & Tangents:** Using steps as functions of variables to track continuous paths and define derivatives geometrically.
- **Parallel Projection & Step Proportions:** Utilizing geometric scaling and projection across axes to solve geometric problems.

I. Definitions and Foundational Theorems (Articles 1–12)
1. Definition of a Step: A step is a given length measured in a given direction.
2. Equality of Steps: Two steps are equal if and only if they possess the same length and the same direction, regardless of their starting point (departure point).
3. Notation: A step from point $A$ to point $B$ is represented as $\mathbf{AB}$. Two steps $\mathbf{AB}$ and $\mathbf{CD}$ are equal if $ABDG$ forms a parallelogram.
4. Step Addition: Successive execution of steps. If you take step $\mathbf{AB}$ followed by step $\mathbf{BC}$, the resultant sum is the step from the absolute beginning to the final end:
```math
\mathbf{AB + BC = AC}
```
5. Sums of Equal Steps: If $\mathbf{AB} = \mathbf{A'B'}$ and $\mathbf{BC} = \mathbf{B'C'}$, then $\mathbf{AC} = \mathbf{A'C'}$ (proven via congruent triangles).

6. Commutative Property: Steps can be added in any order without changing the final result ($\mathbf{AB} + \mathbf{BC} = \mathbf{BC} + \mathbf{AB}$).

7. Associative Property: Consecutive components in a sequence of steps can be grouped and replaced by their individual sum without changing the total displacement.

8. Multiplication by a Positive Number: Multiples of a step change its length by that scalar factor without altering its direction ($2\mathbf{AB} = \mathbf{AB} + \mathbf{AB}$).

9. Negatives and Subtraction: The negative of a step is the step reversed in direction ($\mathbf{BA} = -\mathbf{AB}$).
    + Multiplying by a negative number scales the step and reverses its direction.
    + Subtraction is defined as adding a reversed step: $\mathbf{AB} - \mathbf{CB} = \mathbf{AB} + \mathbf{BC} = \mathbf{AC}$.
10. Distributive Property: A sum of steps is multiplied by a scalar by multiplying each individual component step.

### Center of Gravity

- Point Division: Defining a point $P$ on a line segment $AB$ using the step equation $l\mathbf{AP} + m\mathbf{BP} = 0$, which means $P$ divides $AB$ in the inverse ratio of $l : m$.
- System Mean / Centroid: Using equations like $\sum m\mathbf{AP} = 0$ to find the center of gravity ($P$) of a system of weighted points.