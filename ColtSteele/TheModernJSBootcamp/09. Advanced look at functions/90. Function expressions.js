// NORMAL FUNCTIONS
function add(x, y){
    return x + y;
}
console.log(add(2,4)); // 6
/**
 * In JS, functions are also like objects so we store them in some other variable
 */

/**
 * When functions are declared in this way, we call them function expressions.
 * The RHS of the function expression in this case is an anonymous function
 */

/**
 * The `sum` bucket just stores the reference to this anonymous function.
 */
const sum = function (x, y){
    return x + y;
}

// To call the above function, We can use the name of the anonymous variable
console.log(sum(2,3)); // 5

/**
 * However, There is a slight difference between normal functions and function expressions.
 */



/**
 * Named function expression
 */

// We also have something like named function expression.
const product = function multiply(x, y){
    return x * y;
}

console.log(product(2,3)); // 6
console.log(multiply(2,3)); //  error

// The above is still a function expression but this time it is named.



// ROUGH WORK
