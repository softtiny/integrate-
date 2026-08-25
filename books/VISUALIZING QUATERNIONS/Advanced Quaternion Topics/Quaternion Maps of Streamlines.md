
**What a quaternion map is**

A quaternion map is essentially a way of tracking how an orientation frame changes as you move along a curve, surface, or through a flow field. Instead of describing the moving frame with a 3×3 rotation matrix at each point, Hanson plots the corresponding unit quaternion — a four-dimensional vector that represents the orientation frame's direction of rotation axis and angle relative to a reference frame. As you move along the curve or streamline, the tip of this quaternion traces a path on the unit 4-sphere (S³), and that trajectory is the "quaternion map."



The core idea: when you compute a streamline through a 3D flow field, you often want to attach a consistent orientation frame along it (for example, to build a "tube" or camera path following the flow, or to understand how twisting/torsion accumulates). Representing each frame as a quaternion, then plotting the resulting path of quaternions, reveals structure that's hard to see from the raw frames — things like clustering, sudden jumps caused by double-cover ambiguities (a unit quaternion and its negative represent the same rotation), and similarities/differences between nearby streamlines.

- **Visualization Methods** — direct plotting of quaternion frame fields, similarity measures between quaternion frames, and how to handle "double points" (the ± ambiguity inherent to quaternions representing rotations)
- **3D Flow Data Visualizations** — worked examples, including an AVS (visualization software) streamline example and a deforming-solid example
- **Brushing: Clusters and Inverse Clusters** — interactively selecting/highlighting groups of related frames
- **Advanced Visualization Approaches** — 3D rotations of the quaternion display itself, and "probing" quaternion frames using 4D lighting techniques to make the extra dimension visually interpretable
