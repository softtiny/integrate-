The mat4.perspective function in the gl-matrix JavaScript library is used to generate a perspective projection matrix. This matrix is crucial in 3D graphics for simulating how objects appear smaller as they move further away from the viewer, creating a sense of depth and realism. It transforms 3D coordinates into 2D coordinates suitable for rendering on a screen, taking into account the camera's field of view, aspect ratio, and clipping planes 

```javascript
mat4.perspective(out, fov, aspect, near, far)
```


### How it Works

The perspective projection matrix essentially defines a viewing frustum (a truncated pyramid shape). Any objects within this frustum are visible, while those outside are not. The fov, aspect, near, and far parameters define the shape and extent of this frustum.

#### Parameters
| Parameter | Type   | Description                                                                 |
|-----------|--------|-----------------------------------------------------------------------------|
| `out`     | mat4   | The receiving matrix (will be overwritten with the result)                 |
| `fovy`    | Number | Field of view in **radians** in the **vertical** direction (y-axis)         |
| `aspect`  | Number | Aspect ratio = canvas width ÷ canvas height (e.g. 16/9, 4/3, 1, etc.)       |
| `near`    | Number | Distance to the near clipping plane (must be > 0)                           |
| `far`     | Number | Distance to the far clipping plane (must be > near)                         |

#### Returns
Returns `out` (the modified matrix) for chaining.

#### Resulting matrix (OpenGL style)
gl-matrix uses the standard OpenGL infinite-depth-buffer form when `far` is finite, and the reversed-Z form when `far` is `Infinity`.

**Standard finite far plane:**
```text
[ f/aspect  0             0                     0            ]
[ 0         f             0                     0            ]
[ 0         0   (far+near)/(near-far)  2*far*near/(near-far) ]
[ 0         0            -1                     0            ]

where f = 1 / tan(fovy/2)   (cotangent of half vertical FOV)
```

**Reversed-Z infinite far plane (`far = Infinity`):**
```text
[ f/aspect  0    0     0 ]
[ 0         f    0     0 ]
[ 0         0    0    -1 ]   // note the 0 instead of (far+near)/(near-far)
[ 0         0   -near   0 ]   // flipped sign and near instead of 2*far*near/...
```

#### How to convert degrees to radians (common helper)

```javascript
function toRadians(degrees) {
  return degrees * Math.PI / 180;
}

mat4.perspective(out, toRadians(60), aspect, 0.1, 2000);
```
