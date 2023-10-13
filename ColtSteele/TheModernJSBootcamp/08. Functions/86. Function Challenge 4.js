/**
 * Write a getCard() function which returns a random playing card object, like
 * {
 *      value : 'K',
 *      suit  : 'clubs'
 * }
 * 
 * Pick a random value from :
 * --- 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A
 * 
 * Pick a random suit from :
 * --- club, spades, hearts, diamonds
 * 
 * Return both in an object
 */

function getCard(){
    const values = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'];
    const suits  = ['club', 'spades', 'hearts', 'diamonds'];

    const valIndex = Math.floor(Math.random() * values.length);
    const suitIndex = Math.floor(Math.random() * suits.length);

    return {
        value : values[valIndex],
        suit  : suits[suitIndex]
    };
}


console.log(getCard());

// APPROACH 2

function pick(array){
    const idx = Math.floor(Math.random() * array.length);
    return array[idx];
}

function getCard(){
    const values = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'];
    const suits  = ['club', 'spades', 'hearts', 'diamonds'];

    return {value : pick(values), suit : pick(suits)};
}


// ROUGH WORK




