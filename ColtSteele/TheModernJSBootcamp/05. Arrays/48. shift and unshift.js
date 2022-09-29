/**
 * unshift() method adds an element at the start of the array
 * shift() removes an element from the end of the array
 */

let nums = [1, 2, 3];

nums.unshift(4, 5); // returns the length of the array after updating

console.log(nums); // [4, 5, 1, 2, 3]


/**
 * shift() method removes an element from the start of the array
 * It also returns the removed element
 */

nums.shift(); // removes and returns 4 

console.log(nums); // [5, 1, 2, 3]



