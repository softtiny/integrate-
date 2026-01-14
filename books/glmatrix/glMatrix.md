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