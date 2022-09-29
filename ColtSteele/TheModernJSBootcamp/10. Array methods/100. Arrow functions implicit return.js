/**
 * Implicit return
 */

// HAVE A LOOK AT FOLLOWING -- ALL THE FUNCTIONS HERE DO THE SAME THING

var isEven = function(num){ // Regular function expression
    return num % 2 === 0;
}

var isEven = (num) => { // arrow function with parens around param
    return num % 2 === 0;
}

var isEven = num => {   // removed the parens around param as there was only 1 param
    return num % 2 === 0;
}

var isEven = num => ( // Now, this is what we call implicit return. In this we only have a single return statement inside the function
    num % 2 === 0 // remember to NOT use the return keyword here
    // Also, remember to NOT use the semicolon in this
)

var isEven = num => num % 2 === 0; // one-liner implicit return


// RULE EXTRA -- Whenever we have only a single statement inside the function then we can remove the curly braces.

const greet = (myName) => console.log("Hi", myName+"!"); //  We can also put this statement inside the brackets
// const greet = (myName) => (console.log("Hi", myName+"!"));


// EXAMPLE 2 :

const nums = [1,2,3,4,5,6,7,8];

const doubles1 = nums.map(function(n) {
    return n * 2;
});

const doubles2 = nums.map((n) => {
    return n * 2;
});

const doubles3 = nums.map(n => {
    return n * 2;
});

const doubles4 = nums.map(n => (
    n * 2
));

const doubles5 = nums.map(n => n * 2);


console.log(doubles1, doubles2, doubles3, doubles4, doubles5);



// EXAMPLE 3 :

const parityList1 = nums.map(function(n) {
    if(n % 2 === 0)
        return 'even';
    return 'odd';
});

const parityList2 = nums.map((n) => {
    if(n % 2 === 0)
        return 'even';
    return 'odd';
});

const parityList3 = nums.map(n => {
    if(n % 2 === 0)
        return 'even';
    return 'odd';
});

// THIS IS WRONG
// const parityList4 = nums.map(n =>(
//     if(n % 2 === 0)
//         return 'even'
//     return 'odd'
// ))

const parityList4 = nums.map(n => (
    n % 2 === 0 ? 'even':'odd'
));

const parityList5 = nums.map(n => n % 2 === 0 ? 'even':'odd');

console.log(parityList1, parityList2, parityList3, parityList4, parityList5);



