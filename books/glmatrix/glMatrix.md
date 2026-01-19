# glMatrix.equals(a, b, tolerance) :Boolean

This function is used to test whether two numerical arguments have approximately the same value, considering an absolute or relative tolerance


### Example: [link](https://jsfiddle.net/softtiny/b75vmz12/1/)

```js
import {glMatrix,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'

// Example 1: Numbers within tolerance
let num1 = 0.1 + 0.2; // This will be approximately 0.30000000000000004 due to floating point precision
let num2 = 0.3;
let tolerance = 0.0001;

console.log(`Comparing ${num1} and ${num2} with tolerance ${tolerance}:`);
console.log(`glMatrix.equals(num1, num2, tolerance): ${glMatrix.equals(num1, num2, tolerance)}`); // true

// Example 2: Numbers outside tolerance
let num3 = 10.1;
let num4 = 10.3;
let smallTolerance = 0.01;

console.log(`\nComparing ${num3} and ${num4} with tolerance ${smallTolerance}:`);
console.log(`glMatrix.equals(num3, num4, smallTolerance): ${glMatrix.equals(num3, num4, smallTolerance)}`); // false

// Example 3: Numbers within a larger tolerance
let largeTolerance = 0.02;
console.log(`\nComparing ${num3} and ${num4} with tolerance ${largeTolerance}:`);
console.log(`glMatrix.equals(num3, num4, largeTolerance): ${glMatrix.equals(num3, num4, largeTolerance)}`); // true
```


# glMatrix.round(a) : integer

This function rounds a number to the nearest integer. (e.g., 2.5 rounds to 3, -2.5 rounds to -3)



# glMatrix.toDegree(radians) : Number

 library to convert an angle from radians to degree;

### Example: [link](https://jsfiddle.net/softtiny/f4ygwrhv/2/)

```js
import {glMatrix,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'

// Define some angles in radians
const piRadians = Math.PI; // 180 degrees
const halfPiRadians = Math.PI / 2; // 90 degrees
const quarterPiRadians = Math.PI / 4; // 45 degrees
const twoPiRadians = Math.PI * 2; // 360 degrees

console.log(`Converting Radians to Degrees:`);

// Convert and log
console.log(`Math.PI radians (${piRadians.toFixed(4)}) = ${glMatrix.toDegree(piRadians).toFixed(2)} degrees`);
console.log(`Math.PI / 2 radians (${halfPiRadians.toFixed(4)}) = ${glMatrix.toDegree(halfPiRadians).toFixed(2)} degrees`);
console.log(`Math.PI / 4 radians (${quarterPiRadians.toFixed(4)}) = ${glMatrix.toDegree(quarterPiRadians).toFixed(2)} degrees`);
console.log(`2 * Math.PI radians (${twoPiRadians.toFixed(4)}) = ${glMatrix.toDegree(twoPiRadians).toFixed(2)} degrees`);

// Example with a custom radian value
const customRadians = 0.785398; // Approximately Math.PI / 4
console.log(`\n${customRadians.toFixed(6)} radians = ${glMatrix.toDegree(customRadians).toFixed(2)} degrees`);
```

# glMatrix.toRadians(a) Number

**Example:** [link](https://jsfiddle.net/softtiny/4jt7gxev/1/)

```js
import {glMatrix,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'

// Define some angles in degrees
const ninetyDegrees = 90;
const fortyFiveDegrees = 45;
const oneEightyDegrees = 180;
const threeSixtyDegrees = 360;

console.log(`Converting Degrees to Radians:`);

// Convert and log
console.log(`${ninetyDegrees} degrees = ${glMatrix.toRadian(ninetyDegrees).toFixed(4)} radians`);
console.log(`${fortyFiveDegrees} degrees = ${glMatrix.toRadian(fortyFiveDegrees).toFixed(4)} radians`);
console.log(`${oneEightyDegrees} degrees = ${glMatrix.toRadian(oneEightyDegrees).toFixed(4)} radians`);
console.log(`${threeSixtyDegrees} degrees = ${glMatrix.toRadian(threeSixtyDegrees).toFixed(4)} radians`);

// Example of using it in a common gl-matrix operation, like `mat4.perspective`
// Note: The `mat4.perspective` function expects the field of view (fovy) in radians.
// If you have it in degrees, you'd convert it like this:
const fovDegrees = 45;
const fovRadians = glMatrix.toRadian(fovDegrees);
console.log(`\nField of View: ${fovDegrees} degrees = ${fovRadians.toFixed(4)} radians`);

// Example usage in a perspective matrix (conceptual, not a full working example)
// let projectionMatrix = mat4.create();
// mat4.perspective(projectionMatrix, fovRadians, aspectRatio, nearClip, farClip);
```



# glMatrix.setMatrixArrayType(type) : void

By default, gl-matrix attempts to use Float32Array for its vectors and matrices, as this is the most efficient type for WebGL operations. However, in some scenarios, particularly for general JavaScript applications not directly interacting with WebGL, using standard JavaScript Array objects might offer better performance or debugging capabilities . This function lets you switch between these types.

**Parameters:**

*   `type` (`Float32ArrayConstructor | ArrayConstructor`): The constructor function for the desired array type. You typically pass `Float32Array` or `Array`.

**How it works:**
When you call `glMatrix.setMatrixArrayType(Float32Array)` or `glMatrix.setMatrixArrayType(Array)`, all subsequent calls to functions like `vec3.create()`, `mat4.create()`, etc., will use the specified array type to allocate their internal storage.

**Why it's important:**

*   **Performance:** `Float32Array` is a typed array that stores 32-bit floating-point numbers. It's optimized for performance in WebGL contexts because it maps directly to GPU memory structures. However, for CPU-bound operations in some JavaScript engines, a regular `Array` might sometimes be faster due to less overhead in certain operations or better garbage collection characteristics 
*   **Compatibility/Debugging:** Regular `Array` objects might be easier to inspect and work with in some debugging scenarios, as they behave like standard JavaScript arrays.

**Example:** [link](https://jsfiddle.net/softtiny/6wvcp371/2/)

```javascript project="glMatrixArrayType" file="setMatrixArrayType.js" version=1
import {glMatrix,vec3,mat4,mat2, mat2d} from 'https://cdn.jsdelivr.net/npm/gl-matrix@3.4.4/+esm'


console.log("--- Default Array Type ---");
// By default, gl-matrix uses Float32Array if available
let defaultVec = vec3.create();
let defaultMat = mat4.create();
console.log(`Default vec3 type: ${defaultVec.constructor.name}`);//Float32Array
console.log(`Default mat4 type: ${defaultMat.constructor.name}`);//Float32Array

console.log("\n--- Setting Array Type to Array ---");
// Change the array type to a standard JavaScript Array
glMatrix.setMatrixArrayType(Array);

let arrayVec = vec3.create();
let arrayMat = mat4.create();
console.log(`New vec3 type: ${arrayVec.constructor.name}`);//Array
console.log(`New mat4 type: ${arrayMat.constructor.name}`);//Array

console.log("\n--- Setting Array Type back to Float32Array ---");
// Change the array type back to Float32Array
glMatrix.setMatrixArrayType(Float32Array);

let float32Vec = vec3.create();
let float32Mat = mat4.create();
console.log(`Restored vec3 type: ${float32Vec.constructor.name}`);//Float32Array
console.log(`Restored mat4 type: ${float32Mat.constructor.name}`);//Float32Array

// Demonstrate that existing vectors/matrices are not affected
console.log("\n--- Existing objects retain their original type ---");
console.log(`Default vec3 (created before change) type: ${defaultVec.constructor.name}`); //Float32Array
console.log(`Array vec3 (created after Array change) type: ${arrayVec.constructor.name}`); //Array
```