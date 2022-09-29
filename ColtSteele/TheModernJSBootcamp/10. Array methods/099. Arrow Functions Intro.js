/**
 * Arrow functions are a newish way to write regular function expressions
 */

/**
 * The arrow functions are not supported in Internet Explorer
 */

const square = function(x) {
    return x * x;
}

const squareArrow = (x) => {
    return x * x;
}

console.log(square(2));
console.log(squareArrow(22));



// EXAMPLE 2 :
const isEven = (num) => {
    return num % 2;
}

console.log(isEven(23)); //  false
console.log(isEven(34)); //  true



//////////////////////////////////////////////  RULES FOR ARROW FUNCTIONS  ///////////////////////////////////////////////////////////////////////////////////

// 1. When we only have 1 argument

const cube = x => { // Here we could have also written (x) => {} but the parentheses around x are optional
    return x * x * x;
}

// 2. When there is no parameter then parentheses are compulsary
const greeting = () => { // Here () is COMPULSARY
    console.log("HELLO");
}


// ROUGH WORK




