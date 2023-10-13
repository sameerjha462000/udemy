/**
 * STRING METHODS
 * 
 * We have 2 types of methods := 
 *  (a) Which do not take a parameter -- toUpperCase(), toLowerCase(), trim()
 *  (b) Which take a parameter -- indexOf(), replace(), slice()
 */


/**
 * toUpperCase() and toLowerCase() methods
 */

let msg = "you are so grounded mr";

console.log(msg.toUpperCase()); // "YOU ARE SO GROUNDED MR"
console.log(msg); // "you are so grounded mr" as strings are immutable in JS

/**
 * To convert msg into uppercase we need to assign it to the msg again
 */

msg = msg.toUpperCase(); // Now msg = "YOU ARE SO GROUNDED MR"

console.log(msg.toLowerCase()); // "you are so grounded mr"
console.log(msg); // "YOU ARE SO GROUNDED MR"

/**
 * to make msg lowercase we assign msg.toLowerCase() into msg
 */

msg = msg.toLowerCase();







////////////////////////////////////////////////////  trim() ///////////////////////////////////////////////////////////////////////////////////

/**
 * The trim() method removes all the left and right white spaces
 */

let color = "              purple                              ";

console.log(color.trim()); // "purple"

let myName = "              My name is Abhishek Jha                      ";

console.log(myName.trim()); // "My name is Abhishek Jha"














