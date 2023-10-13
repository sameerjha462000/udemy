/**
 * The keyword "this" can be a major point of confusion and misery and hardship and general suffering in the life of a new JS developer.
 */


// this refers to the current execution scope and it gives us an object back.

console.log(this); // at this point we are in the window object. So "this" here refers to window object.


/// When we write functions like "sayHi()" it looks like they are in the middle of nowhere whereas in actual they are inside the global object (which is called "window" in browser).
function sayHi() {
    console.log(this); // Here also "this" refers to the window object
}

// In node, we do not have "window" but we there have a global object as well. It is not called "window" though.
sayHi(); // This is a method in "window" object.

// So we can also call "sayHi" using "window" as well

// let and const values are not added to the "window" as property. However, var variables are added to the window.

let num = 90;

console.log(window.num); // This would be "undefined" as "num" is not a property in "window".

const Pi = 3.14;
console.log(window.PI); // This would be "undefined" as "PI" is not a property in "window".

// However variables created using "var" are added as a property to the "window".
var nums = [1, 3, 5, 7];
console.log(window.nums); // [1, 3, 5, 7] as "nums" has been added to the "window".

// ROUGH WORK



