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