


 Rotations in the plane are simple to compose: a rotation by angle α followed by one by β is equivalent to a single rotation by α + β. Plane rotations commute, so the order of a sequence doesn't matter, and any sequence of them reduces to one rotation by the sum of the angles, taken mod 2π. The 2×2 rotation matrices reflect this, since R(α)R(β) = R(α + β).

That's exactly what breaks in 3-space. Rotations about different axes don't commute, so the order in a sequence matters, and this is why Kuipers spends so much effort on quaternions and on Euler-angle and other rotation sequences. The plane case is the simple baseline those later results build on.
