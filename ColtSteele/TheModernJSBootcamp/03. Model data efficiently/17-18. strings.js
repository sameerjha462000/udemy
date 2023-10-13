/**
 * In JS, strings are used for pieces of text.
 */

/**
 * We wrap them around quotes -- single or double (does not matter much)
 * (But we should be consistent)
 * 
 * We cannot have strings like this "My name is Abhishek Jha' -- This is wrong as on 1 side we have double quotes and on other side we have single quote
 */

/**
 * We can also have string template literal -- This is done by using back ticks and ${} placeholders.
 */


let firstName = "ziggy"; //  This also works fine

let msg = "Please do not feed chimps!";

let lastName = 'Abhishek'; // This works fine 

console.log(typeof firstName); // 'string'

/**
 * If our text has single quotes then use string in double quotes
 * If our text has double quotes then use string in single quotes
 */

let singleQuoteString = "Hello I'm Abhishek Jha";
let doubleQuoteString = 'His name was "Abhishek" and he is good person';


/**
 * string operations - concatenation
 */

console.log("Abhishek" + "jha");

console.log("")


////////////////////////////////////////////////////////  STRING INDICES  //////////////////////////////////////////////////////////////////////



/**
 * In JS string indices start from 0 and goes upto str.length-1
 */

console.log("hello"[3]); // l

/**
 * Every string has a property called length
 * 
 */

console.log("hello".length); // gives the length of string

let mySong = "Surfin' USA";

console.log(mySong[2]); // r
console.log(mySong[4]); // i

console.log(mySong[mySong.length]); // undefined -- as index === mySong.length


/**
 * 
 * strings in JS are immutable -- that is once created we cannot change the character at an index or  add some new character
 */

mySong[0] = "D"; // This would NOT change the mySong to "Durfin' USA" as strings are immutable




