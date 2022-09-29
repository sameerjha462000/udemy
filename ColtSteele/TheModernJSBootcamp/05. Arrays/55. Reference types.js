/**
 * We have 5 types of primitives in JS -- Number, String, Boolean, Null, Undefined 
 */
/**
 * All the reference types are made seperately.
 */

let myAge = 10;
let yourAge = myAge;

console.log(myAge + " " + yourAge);

yourAge = 23; // This would not change the myAge
console.log(myAge); // still 10 !

/**
 * But the scenerio changes in case of reference types -- Arrays and Objects
 * In their case, the memory location in which they are stored is copied. So any changes made through the any variable storing the reference
 * would be reflected in the original array.
 */

let myNums = [2, 4, 6, 8, 10]; // myNums just stores the reference of this array and not the actual array
let yourNums = myNums; // The reference which was stored in myNums would be copied to yourNums

console.log(myNums + " " + yourNums);

// Now make changes using yourNums as this also contains the reference of the original array
yourNums[0] = 34; // [34, 4, 6, 8, 10] ==> This would change the original array and thus if we try to see the array thru myNums then also we would see the changes
console.log(myNums); // [34, 4, 6, 8, 10]





// ROUGH WORK






