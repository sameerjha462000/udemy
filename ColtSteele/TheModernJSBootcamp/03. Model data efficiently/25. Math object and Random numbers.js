/**
 * Math objects and random numbers
 */

console.log(Math.PI);
console.log(Math.round(4.9));
console.log(Math.floor(4.99999));

console.log(Math.pow(5,6));


/**
 * Math.random() -- generates random number between [0,1)
 */
console.log(Math.random());

// suppose we want a random number from 1 to 10

const step1 = Math.random(); // random number from [0,1)
const step2 = step1 * 10; // random number from [0,10)
const step3 = step2 + 1; // random number from [1,11)
const step4 = Math.floor(step3); // random number in {1,...,10}

/**
 * simulate a die roll from 1 to 6
 */

const dieNumber = Math.floor(Math.random() * 6) + 1; // {1,...,6}





