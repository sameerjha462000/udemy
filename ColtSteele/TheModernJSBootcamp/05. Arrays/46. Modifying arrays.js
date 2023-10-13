/**
 * In JS, arrays are mutable unlike strings
 */

let nums = [2, 3, 5, 7, 11];

nums[0] = 'Even prime number'; // nums = ['Even prime number', 3, 5, 7, 11]


/**
 * To add an element at the last of the array we can directly do by using the index after the last index of array
 */

nums[nums.length] = 13; // ['Even prime number', 3, 5, 7, 11, 13]
nums[nums.length] = 17; // ['Even prime number', 3, 5, 7, 11, 13, 17]
nums[nums.length] = 19; // ['Even prime number', 3, 5, 7, 11, 13, 17, 19]

console.log(nums);


