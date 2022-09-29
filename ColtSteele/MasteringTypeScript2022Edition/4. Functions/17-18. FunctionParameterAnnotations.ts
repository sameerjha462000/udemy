/**
 * In TypeScript, We can specify the type of function parameters in a function definition.
 */


// If we do not specify the type of num within the parentheses then TypeScript would automatically infer its type to be `any`.
function square(num){ // Here num is infered to be `any`
    return num * num;
}


function squareAgain(num : number){ // Here we have specified the type of num.
    return num * num;
}


function greet(person : string){
    return `Hi there, ${person}!`
}


// We can also do this in arrow functions
const multiply = (x : number, y : number) => x * y;





// ROUGH WORK



