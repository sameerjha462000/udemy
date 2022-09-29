/**
 * In every function, We have something called as arguments object.
 * This object is not present in arrow functions.
 */

/**
 * It is an array-like object but do keep in mind that it is NOT an array.
 * -- It has length property as that of the array.
 * -- Does not have methods like push/pop
 */

function sum() {
    console.log(arguments);
}

sum(1, 2, 3, 4, 5); // [1, 2, 3, 4, 5] -- NOT AN ARRAY

// WE CANNOT DO THIS
function sum(){
    // This is not possible as arguments is not an array. Thus we would not be able to use reduce method with it.
    let total = arguments.reduce((accumulator, currValue) => {
        return accumulator + currValue;
    })
    return total;
}



// Also, We do not have arguments object inside an arrow function
const multiply = () => {
    console.log(arguments); // This is an error as we do not have arguments inside an arrow function
}


// Also, One thing to keep in mind is that arguments takes all the parameters that we pass in a function and not works according to us.
function printMyName(first, last){
    console.log(first);
    console.log(arguments[0]); // This still captures the `first`
}





// ROUGH WORK



