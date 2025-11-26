# What is perspective? It’s basically the feature that things that are further away appear smaller.


###  Z is 1
\[
    10 / 1 = 10 \\
    20 / 1 = 20 \\
    abs(10-20) = 10
\]

###  Z is 2
\[
    10 / 2 = 5 \\
    20 / 2 = 10 \\
    abs(5-10) = 5
\]


###  Z is 3
\[
    10 / 3 = 3.333 \\
    20 / 3 = 6.666 \\
    abs(3.333-6.666) = 3.333
\]

# What “Perspective” Actually Means in 3D Graphics

In real life:
- Objects that are far away look smaller.
- Parallel lines (like railway tracks) appear to meet at the horizon.

A perspective projection is the mathematical trick that makes exactly that happen on a flat screen.

Without perspective → everything stays the same size no matter how far it is (orthographic, like a 2D game or CAD program).

ith perspective → far = smaller + correct convergence → feels 3D.

# The Four Spaces a Vertex Travels Through

| Space                   | Coordinates                     | What transforms it                              |
|-------------------------|---------------------------------|-------------------------------------------------|
| Object/Model            | (x,y,z) local to the object     | Model matrix (position, rotation, scale)        |
| World                   | (x,y,z) in the shared world     | → World = Model × vertex                        |
| View / Eye / Camera     | (x,y,z) relative to camera      | View matrix (inverse of camera transform)       |
| Clip                    | (x,y,z,w) before division       | Projection matrix does the magic here           |
| NDC (Normalized Device) | (-1..+1, -1..+1, -1..+1)        | Automatic: x/w, y/w, z/w  (perspective divide)  |
| Screen                  | pixels on your monitor          | Viewport transform (gl.viewport)                |

Perspective happens only in the last two steps:  
Clip → NDC (the famous divide by w).

#  The Perspective Projection Matrix – What It Really Does

This is the exact matrix WebGL2 uses (gl-matrix, three.js, etc. all generate this):

```javascript
mat4.perspective(out, fovY, aspect, near, far)
```

produces:

|          |     |                       |                       |
|----------|-----|-----------------------|-----------------------|
| f/aspect | 0   | 0                     | 0                     |
| 0        | f   | 0                     | 0                     |
| 0        | 0   | (far+near)/(near-far) | 2*far*near/(near-far) |
| 0        | 0   | -1                    | 0                     |



where f = 1 / tan(fovY/2)