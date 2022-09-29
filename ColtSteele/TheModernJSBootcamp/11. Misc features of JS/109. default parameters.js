/**
 * we can set default value for a parameter in a function definition
 */

const multiply = (x, y = 1) => x * y; // If we do not pass in the value for y, then our function would use the default value of y which is 1.

console.log(multiply(45));
console.log(multiply(4, 5));


function greet(person, greeting = 'YO '){
    console.log(`${greeting} ${person}`);
}

greet('HI','TIM'); // 'HI TIM'


// ROUGH WORK



