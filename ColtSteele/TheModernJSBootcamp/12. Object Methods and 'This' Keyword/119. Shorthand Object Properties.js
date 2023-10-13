/**
 * Secret life of Objects
 */

// SHORTHAND PROPERTIES

function extremas(nums){
    const min = Math.min(...nums);
    const max = Math.max(...nums);

    const obj = {max : max, min : min};

    // return obj; // This is good but We have new Shorthand property feature in JS
    return {max, min};
}

const nums = [2, -1, 45, 90, -6];

console.log(extremas(nums));

// EXAMPLE 2
function pick(array){
    const idx = Math.floor(Math.random() * array.length);
    return array[idx];
}

function getCard(){
    const values = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'];
    const suits  = ['club', 'spades', 'hearts', 'diamonds'];

    const value = pick(values);
    const suit  = pick(suits);
    // return {value : value, suit : suit};
    return {value, suit};
}


// ROUGH WORK



 