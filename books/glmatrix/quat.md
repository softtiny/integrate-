# Quaternions

In `3D space`, we usually think in degrees (Euler angles: X, Y, Z). However, using simple angles leads to Gimbal Lock, where two axes align and you lose a degree of freedom.

Quaternions represent rotations as a 4D vector $[x,y,z,w]$. While they aren't "human-readable," they offer:

- **Smooth Interpolation:** Perfect for animations (SLERP).
- **Efficiency:** Easier to combine and normalize than large matrices.
- **Stability:** No gimbal lock.




### quat.setAxes()

The `quat.setAxes` method in `glMatrix` is a powerful utility for when you know where you want an object to face, but you don't know the specific angles or rotation axis to get it there.

Essentially, it constructs a quaternion from a viewing coordinate system (Local X, Y, and Z axes).

**How it Works: The "Look At" Logic**

In 3D space, a rotation can be defined by three perpendicular vectors. `setAxes` takes these vectors and "packs" them into a quaternion.


It is the quaternion equivalent of building a **Rotation Matrix** from scratch using orthonormal basis vectors. This is particularly useful for:

- **Cameras:** Orienting a camera to look at a specific point.
- **Character AI:** Making an NPC turn to face the player.
- **Procedural Animation:** Aligning an object (like a laser bolt) to its velocity vector.



**Example:** [link](https://jsfiddle.net/softtiny/y5medv8o/)

```js
import {glMatrix,vec3, quat} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'
let posA=vec3.fromValues(1,2,3);
let posB=vec3.fromValues(4,5,6)
let outQuat = quat.create();
let view = vec3.create();
let right = vec3.create();
let up = [0, 1, 0]; // World Up
// 1. Calculate the 'view' (direction from A to B)
console.log(posA.toString());//"1,2,3"
console.log(posB.toString());//"4,5,6"
vec3.subtract(view, posB, posA);
console.log(view.toString());//"3,3,3"
vec3.normalize(view, view);
console.log(view.toString());//"0.5773502588272095,0.5773502588272095,0.5773502588272095"
// 2. Calculate the 'right' vector (cross product of up and view)
vec3.cross(right, up, view);
console.log(right.toString());//"0.5773502588272095,0,-0.5773502588272095"
vec3.normalize(right, right);
console.log(right.toString());//"0.7071067690849304,0,-0.7071067690849304"

// 3. Set the axes
console.log(outQuat.toString());//"0,0,0,1"
quat.setAxes(outQuat, view, up, right);
console.log(outQuat.toString());//"0.6576622724533081,0.7117631435394287,-0.24072110652923584,0.05410083383321762"
```


### quat.sqlerp()

While `slerp` (Spherical Linear Interpolation) is the go-to for moving between two rotations, `quat.sqlerp` (Spherical Quadrangle Interpolation) is the specialized tool for smooth paths through multiple rotations.

`sqlerp` uses "control points" to create a smooth, curved path—essentially a Bézier curve for rotations.


Parameter,Type,Description
out,quat,The receiving quaternion.
"a, b, c, d",quat,The four quaternions defining the curve.
t,number,The interpolation amount (0.0 to 1.0) between b and c.

**quat.sqlerp(out, a, b, c, d, t);**

| **Parameter** | **Type** | **Description**                                        |
|---------------|----------|--------------------------------------------------------|
| out           | quat     | The receiving quaternion.                              |
| a, b, c, d    | quat     | The four quaternions defining the curve.               |
| t             | number   | The interpolation amount (0.0 to 1.0) between b and c. |
