/**
 * thing.method(arg)
 */

/**
 * thing.indexOf(arg) finds the starting index of first occurence of arg in thing.
 * It is case sensitive and if nothing is found it returns -1
 */
let tvShow = "catdog";
console.log(tvShow.indexOf("cat")); // 0
console.log(tvShow.indexOf("dog")); // 3
console.log(tvShow.indexOf("Cat")); // -1 -- as it is case sensitive


/**
 * thing.slice() is used to get a substring of the string
 * It has 2 versions
 * -- one arg version := In this it takes only one parameter that is starting index of the substring
 * -- two arg version := In this it takes starting index and ending index(exclusive).
 */

console.log("baseball".slice(4)); // "ball"
console.log("baseball".slice(0,4)); // "base"

console.log("baseball".slice(40)); // "" -- empty string as 40 is way beyond "baseball".length-1

console.log("$50.60".slice(1)); // "50.60"


/**
 * thing.replace(arg1,arg2) replaces the first instance of arg1 in thing with arg2
 */

console.log("Hello Everyone, My name is Abhishek Jha.".replace("Jha","Sharma")); // "Hello Everyone, My name is Abhishek Sharma"
console.log("Hello Everyone, My name is Abhishek Jha".replace("haha","huehue")); // "Hello Everyone, My name is Abhishek Jha" -- as there is no "haha" in the string


