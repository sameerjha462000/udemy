/**
 * The reverse() method reverses the array in place.
 */

let letters = ['T', 'C', 'E', 'P', 'S', 'E', 'R'];
console.log(letters.reverse()); // ['R', 'E', 'S', 'P', 'E', 'C', 'T']
console.log(letters); // ['R', 'E', 'S', 'P', 'E', 'C', 'T']

/**
 * join() method joins all the elements of the array and returns a string
 * The default seperator in case of joins is ','
 */

letters.join(); // "R,E,S,P,E,C,T"

/**
 * We can also specifally pass in the seperator in join()
 */

letters.join('-'); // "R-E-S-P-E-C-T"

/**
 * We can also combine methods
 */

letters.reverse().join('#'); // "T#C#E#P#S#E#R"



