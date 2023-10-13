/**
 * functions as return values
 */

// returns multiplier function of num
function factory(num){
    return function (x){
        return num * x;
    }
}


const tripler = factory(3);
const doubler = factory(2);
const halver  = factory(0.5);


console.log(tripler(5));
console.log(doubler(5));
console.log(halver(5));


// EXAMPLE 2

function makeBetweenFunc(x, y){
    return function(num){
        return (num >= x && num <= y);
    }
}


const isChild = makeBetweenFunc(0, 18); // This function checks if a person is below 18 or not
console.log(isChild(15)); // true
console.log(isChild(19)); // false


// ROUGH WORK



