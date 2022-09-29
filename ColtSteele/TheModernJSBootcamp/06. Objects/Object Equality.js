/**
 * When we compare arrays using === operator, We usually compare their references
 */

console.log([1, 2, 3] === [1, 2, 3]); // false as both of them are formed at diff memory locations
console.log([] === []); // false ==> same reason as above

let nums = [1, 2, 3];
let nums2 = [1, 2, 3];
let moreNums = nums;

console.log(nums === moreNums); // true as they both are reffering to the same array
console.log(nums === nums2); // false as they both are pointing at diff locations

/**
 * comparing objects
 */

console.log({} === {}); // false as they both are formed at diff mem locations
console.log({a : 1} === {a : 1}); // false as they both are formed at diff mem locations

let obj1 = {a : 1};
let obj2 = {a : 1};
let obj3 = obj1;

console.log(obj1 === obj2); // false
console.log(obj1 === obj3); // true as they both are reffering to the same mem location



