//  QUES 1 := 

const age = "3"+"4";
console.log(age); // 34

// QUES 2 := 
console.log("pecan pie"[7]); // i

// QUES 3 := 
console.log("PUP"[3]); // undefined

// QUES 4 := 
let song = "london calling";
song.toUpperCase();
console.log(song); // "london calling" as strings are immutable

// QUES 5 := 
let userInput = "       TODD@gmail.com";
console.log(userInput.trim().toLowerCase()); // todd@gmail.com

// QUES 6 := 
let park = "Yellowstone";
const index = park.indexOf("Stone"); // -1 as "Stone" is not present in "Yellowstone"

// QUES 7 := 
let yell = "GO AWAY!!";
console.log(yell.indexOf("!")); // 7 -- as  "!" is first found at 7th index

// QUES 8 := 
"GARBAGE!".slice(2).replace("B",""); // "RAGE!"