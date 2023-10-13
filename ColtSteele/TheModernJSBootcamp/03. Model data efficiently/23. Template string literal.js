/**
 * TEMPLATE STRING LITERAL
 * This is another way of escaping quotation marks problem
 * This is written by using back ticks ``
 */

console.log(`My name is "Abhishek Jha" and I have just recently graduated from 'DTU'.`);

/**
 * In template literals we can also use placeholder for variables which would be a very cumbersome task if we use double qoutes string and single quote string
 */

let myName = "Abhishek Jha"
let myAge = 23;

console.log("My name is " + myName + " and my age is " + myAge); // This is very lengthy to write
console.log(`My name is ${myName} and this is ${myName.length} characters long.`);

/**
 * VS 
 */

console.log(`My name is ${myName} and my age is ${myAge}`); // Much cleaner and simple

/**
 * ${} evaluates the expression inside the curly braces and converts that into a string.
 * NOTE := This could only be used with template string literal and not with normal quotes sting
 */
console.log(`${478 ** 2}`); // '228484'