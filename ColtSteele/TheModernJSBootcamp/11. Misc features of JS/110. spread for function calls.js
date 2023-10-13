/**
 * The spread() syntax is basically for functions, array and objects.
 * In this we are going to study it for functions
 */

// Consider the following function 
console.log(Math.max(3, 45));
console.log(Math.max(3, 89, 12, 1, 2, 32, 4545, 56, 50));

// The Math.max() function can take in as many arguments as we want but it wants them to be numbers
console.log(Math.max([3, 89, 12, 1, 2, 32, 4545, 56, 50])); // This would not work

// Then how do we resolve the above problem ?

console.log(Math.max(...[3, 89, 12, 1, 2, 32, 4545, 56, 50])); // Now this works as ... operator spreads the array

// We can also spread strings using spread operator
console.log(...'GOAT'); // === console.log('G', 'O', 'A', 'T');




// ROUGH WORK





