

tracking a rotation's axis and angle over time, for example from a sequence of orientations in animation, robotics, or attitude estimation. Here is the general idea, which is not specific to Kuipers.

Given two successive orientations, you can compute the relative rotation between them. If the orientations are unit quaternions p and q, the relative rotation is d = q p*, and its axis and angle can be read off as before: the scalar part gives cos(θ/2), and the vector part, normalized, gives the axis. This avoids having to rebuild and decompose full rotation matrices at each step.

A tracking algorithm usually needs to handle a few practical issues:

- Sign ambiguity: q and −q represent the same rotation, so when consecutive quaternions are compared, you flip the sign of one whenever their dot product is negative. This keeps the sequence continuous.
- Small angles: when θ is near zero, the axis is poorly determined from the vector part, so the algorithm should fall back to a stable default or keep the previous axis.
- Smoothing: noisy measurements can be filtered by averaging or normalizing quaternions after each update.
