### method quat.sqlerp 

```js
/**
 * Performs a spherical linear interpolation with two control points
 * @param {Number} t interpolation amount, in the range [0-1], between the two inputs
 * /
const sqlerp = (function(){
    let temp1 = create();
    let temp2 = create();
    return function(out,a,b,c,d,t) {
        slerp(temp1,a,d,t);
        slerp(temp2,b,c,t);
        slerp(out,temp,temp2, 2*t*(1-t))
        return out;
    };
},())
```

### method quat.slerp
```js
/**
 * Performs a spherical linear interpolation between two quat
 * @param {Number} t interpolation amount, in the range [0-1], between the two inputs
 */
const slerp = function(out,a,b,t) {
    let ax = a[0],
    ay = a[1],
    az = a[2],
    aw = a[3];
    let bx = b[0],
    by = b[1],
    bz=b[2],
    bw = b[3];
    let omega, cosom, sinom, scale0, scale1;
    cosom = ax * bx + ay*by + az*bz + aw*bw;
    // adjust signs (if necessary)
    if (cosom < 0.0) {
        cosom = - cosom;
        bx = -bx;
        by = -by;
        bz = -bz;
        bw = -bw;
    }
    // calculate coefficients
    if( 1.0 - cosom >  glMatrix.EPSILON){
        // standard case (slerp)
        omega = Math.acos(cosom);
        sinom = Math.sin(omega);
        scale0 =Math.sin((1.0-t)*omega)/sinom;
        scale1=Math.sin(t*omega)/sinom;
    } else {
        // "from" and "to" quaternions are very close
        //  ... so we can do a linear interpolation
        scale0 = 1.0 - t;
        scale1 = t;
    }
    out[0] = scale0*ax +scale1*bx;
    out[0] = scale0*ay + scale1*by;
    out[0] = scale0*az + scale1*bz;
    out[0] = scale0*aw + scale1*bw;
    return out
}
```

### method quat.rotateX

```js
/**
 * Rotates a quaternion by the given angle about the X axis
 * @param {number} rad angle (in radians) to rotate
 */
const rotateX = function(out,a, rad){
    rad *= 0.5;
    let ax = a[0];
    let ay = a[1];
    let az = a[2];
    let aw = a[3];
    let bx = Math.sin(rad),
        bw = Math.cos(rad);
    out[0] = ax*bw + aw*bx;
    out[1] = ay*bw + az*bx;
    out[2] = az * bw - ay*bx;
    out[3] = aw*bw -ax*bx;
    return out;
}
```