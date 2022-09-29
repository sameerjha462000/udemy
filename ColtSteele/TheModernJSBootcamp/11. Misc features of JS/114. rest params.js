/**
 * Thankfully, We have something called as rest parameters.
 */

// The rest params actually collect all the remaining arguments into an array.

function sum(...nums){
    return nums.reduce((total, currValue) => total + currValue);
}


function fullName(first, last, ...rest){
    console.log(first);
    console.log(last);
    console.log(rest); //  takes the rest of the parameters and makes an array.
}

fullName('Abhishek', 'Jha', 'is' , 'a', 'very', 'cool', 'guy.'); // first => 'Abhishek', last => 'Jha', rest => ['is' , 'a', 'very', 'cool', 'guy.']

// Also, one thing to keep in mind is that rest is used to capture the remaining parameters. This means that it should always be at the last

// function fullName(first, ...rest, last); // This is wrong
// function fullName(...rest, first, last); // This is wrong

/**
 * We can have rest parameters within an arrow function as well.
 */

const multiply = (...nums) => nums.reduce((total, currValue) => total * currValue);

console.log(multiply(4, 5, 6, 7)); // 840
console.log(multiply(2, 3, 4)); // 24

// ROUGH WORK






