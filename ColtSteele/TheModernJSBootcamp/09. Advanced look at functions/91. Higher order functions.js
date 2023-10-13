/**
 * functions are objects -- Treat them the same way as you would treat other objects.
 */

function add(x, y){
    return x + y;
}

const subtract = function (x, y){
    return x - y;
}

function multiply(x, y){
    return x * y;
}

const divide = function (x, y){
    return x / y;
}

/**
 * This array stores functions and function expressions.
 */
const operations = [add, subtract, multiply, divide];

console.log(operations[0](2, 3)); // add(2, 3) -- 6
console.log(operations[1](2, 3)); // subtract(2, 3) -- (-1)
console.log(operations[2](2, 3)); // multiply(2, 3) -- 6
console.log(operations[3](2, 3)); // divide (2, 3) -- 0.66


for(let func of operations){
    let result = func(30, 5);
    console.log(result);
}

/**
 * We can also set a function to be a value of a key in an object
 */
const thing = {
    doSomething : multiply // Here multiply is a function and We have set it as value of the key `doSomething`
}


console.log(thing.doSomething(3, 4)); // multiply(3, 4) -- 12







