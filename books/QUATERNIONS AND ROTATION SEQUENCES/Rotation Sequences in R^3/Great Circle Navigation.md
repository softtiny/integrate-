

**1. What a great circle is**

A great circle is the intersection of a sphere with a plane through its center. On Earth, the equator and every meridian are great circles. Between any two points that aren't antipodal, there is exactly one great circle, and it gives the shortest path on the sphere's surface. That is why it is the basis of long-distance navigation.

**2. Why it's the shortest route**

On a sphere, distances are measured along great circles, and the great-circle arc is the minimal-length curve joining two points. A rhumb line (constant compass bearing) is usually longer, which is why ships and aircraft on long routes follow great-circle paths, adjusted for practical constraints.

**3. Initial bearing and the changing heading**

Along a great circle, the compass heading generally changes continuously. You leave at one initial bearing and arrive at a different final bearing, measured from north. The initial bearing from point 1 to point 2 is

θ = atan2(sin Δλ cos φ₂, cos φ₁ sin φ₂ − sin φ₁ cos φ₂ cos Δλ)

where φ is latitude, λ is longitude, and Δλ = λ₂ − λ₁. The heading must be updated along the route, so a navigator periodically recomputes it.

**4. Distance**

The central angle σ between two points satisfies

cos σ = sin φ₁ sin φ₂ + cos φ₁ cos φ₂ cos Δλ

and the distance is Rσ, where R is Earth's radius. The haversine form, hav σ = hav Δφ + cos φ₁ cos φ₂ hav Δλ, is numerically better for short distances.

**5. Vertex and turning points**

A great circle reaches its highest latitude at a vertex, where the bearing is due east or west. The vertex latitude depends on the inclination of the great circle's plane, and it's the point where a route crosses a meridian at right angles.

**6. Rotation-sequence view**

This is where the chapter's material fits. Represent a point on the sphere as a unit vector and a great circle as the intersection with a plane. Moving along the circle is a rotation about the circle's normal vector. Navigating from one point to another is therefore a single rotation, which can be expressed as one quaternion, or as an Euler sequence such as a rotation about the z-axis, then about the y-axis, then about the z-axis to bring the start point to the north pole, followed by a rotation along the meridian.
