/**
 * We have something called as higher order function.
 */

// BUT WHAT IS A HIGHER ORDER FUNCTION ?
/**
 * These are the functions that operate on/with other functions 
 * They can :
 *  -- Accept other functions as arguments
 *  -- Return a function
 */

// EXAMPLE 1
function callTwice(func){
    func();
    func();
}

function laugh(){
    console.log('HAHA !!');
}

callTwice(laugh); // calls the laugh() function twice.



// EXAMPLE 2
function callThreeTimes(f){
    f();
    f();
    f();
}

function smile(){
    console.log('XD');
}

callThreeTimes(smile);



// EXAMPLE 3
// Function to repeat N times
function repeatNTimes(action, N){
    for(let i = 1 ; i <= N;i++){
        action();
    }
}

const rage = function (){
    console.log('KAME HAME HA...')
}

// We can also pass function expressions
repeatNTimes(rage, 3);




// ROUGH WORK




