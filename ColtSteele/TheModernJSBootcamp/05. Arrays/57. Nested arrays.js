/**
 * We can have arrays inside arrays
 */

const animalPairs = [
    ['doe', 'buck'],
    ['ewe', 'ram'],
    ['peahen', 'peacock']
];

console.log(animalPairs[1][0]); // 'ewe'
console.log(animalPairs[2][0]); // 'peahen'
console.log(animalPairs[1][1]); // 'ram'


/**
 * We can also model tic-tac-toe board using nested arrays
 */

const board = [
    ['0', null, 'X'],
    [null, 'X', '0'],
    ['X', '0', null]
];





