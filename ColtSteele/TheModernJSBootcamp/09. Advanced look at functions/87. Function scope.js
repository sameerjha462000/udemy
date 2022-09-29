/**
 * We have three type of scopes in JS -- function scope, Block scope and Lexical scope
 */

// Consider this example
function helpMe(){
    let msg = "I'm on fire!";

    msg; // "I'm on fire!"
}

msg; // NOT DEFINED -- undefined


// EXAMPLE 2
function lol(){
    let person  = 'Tom';
    const age   = 45;
    var color   = 'teal';
    console.log(age);
}

function changeColor(){
    let color   = 'purple';
    const age   = 19;
    console.log(age);
}

lol(); // 45
changeColor(); // 19

// EXAMPLE 3

let bird = 'manadarin duck'; //  Has been defined in global scope

function birdWatch(){
    let bird = 'golden pheasent';
    console.log(bird); // This would refer to the local bird in this scope
}

birdWatch();
console.log(bird); // This would print the bird of the global scope and not the one in the birdWatch()



// DOUBT 

// PLEASE CLEAR THIS DOUBT OF MINE -- WHY DOES THIS NOT PRINT bird in birdWatch() 
// WHY DO WANT IT TO BE PRINTED ? -- AS bird of birdWatch() would not be hoisted so maybe it should use bird of global scope
// let bird = 'mandarin duck';
// function birdWatch(){
//     console.log(bird);
//     let bird = 'golden pheasent';
// }

// birdWatch();



