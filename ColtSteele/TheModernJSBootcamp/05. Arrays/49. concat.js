/**
 * concat() method is used to concat the arrays and returns a new array
 */

let even = [2, 4, 6, 8, 10];
let odd = [1, 3, 5, 7, 9];

console.log(even.concat(odd)); // [2, 4, 6, 8, 10, 1, 3, 5, 7, 9]

// The individual arrays do not get changed
console.log(even); // [2, 4, 6, 8, 10]
console.log(odd); // [1, 3, 5, 7, 9]

/**
 * We can also concat multiple arrays
 */

const num1 = [1, 2, 3];
const num2 = [4, 5, 6];
const num3 = [7, 8, 9];

console.log(num1.concat(num2, num3));


