# glMatrix.equals(a, b, tolerance) :Boolean

This function is used to test whether two numerical arguments have approximately the same value, considering an absolute or relative tolerance

### Example:

```js
import * as glMatrix from 'gl-matrix';

// Example 1: Numbers within tolerance
let num1 = 0.1 + 0.2; // This will be approximately 0.30000000000000004 due to floating point precision
let num2 = 0.3;
let tolerance = 0.0001;

console.log(`Comparing ${num1} and ${num2} with tolerance ${tolerance}:`);
console.log(`glMatrix.equals(num1, num2, tolerance): ${glMatrix.equals(num1, num2, tolerance)}`); // true

// Example 2: Numbers outside tolerance
let num3 = 10.0;
let num4 = 10.5;
let smallTolerance = 0.1;

console.log(`\nComparing ${num3} and ${num4} with tolerance ${smallTolerance}:`);
console.log(`glMatrix.equals(num3, num4, smallTolerance): ${glMatrix.equals(num3, num4, smallTolerance)}`); // false

// Example 3: Numbers within a larger tolerance
let largeTolerance = 0.6;
console.log(`\nComparing ${num3} and ${num4} with tolerance ${largeTolerance}:`);
console.log(`glMatrix.equals(num3, num4, largeTolerance): ${glMatrix.equals(num3, num4, largeTolerance)}`); // true
```

