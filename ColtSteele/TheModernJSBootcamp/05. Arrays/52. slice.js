/**
 * slice()  method is used for extracting subarray
 */

let animals = ['shark', 'salmon', 'whale', 'bear', 'lizard', 'tortoise'];

let swimmers = animals.slice(0,3); // ['shark', 'salmon', 'whale']

swimmers[1] = 'abhishek';

console.log(animals); //  does not change the original array

let reptiles = animals.slice(4); // starts from 4 and goes all the way upto the end of the array

/**
 * We can also pass in negative index 
 */

console.log(animals.slice(-3)); // ['bear', 'lizard', 'tortoise']

/**
 * We can also make a copy of array using slice
 */

let animalsCopied = animals.slice(0); 




