/**
 * We can also annotate the return type of a function
 * Even though TypeScript can often infer this, We should prefer the explicit annotations.
 */

function multiply(x : number, y : number) : number {
    // return `${x * y}`; // This would give us an error as return type is a string and not a number.
    return x * y;
}

multiply(5, 5); // 25


// We can also have multiple parameters as return type

function randomGenerate(num : number) : string | number{
    let decider = Math.random();
    if(decider < 0.5){
        return num.toString();
    }else{
        return num;
    }
}


console.log(randomGenerate(45));



// Return type annotations also work in arrow functions

const add = (x : number, y : number) : number => {
    return x + y;
}

console.log(add(3, 4));



// ROUGH WORK





