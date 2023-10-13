/**
 * The `for in` loop directly iterates over the keys of an Object.
 */

const jeopardyWinnings = {
    regularPlay             : 2522700,
    watsonChallenge         : 300000,
    tournamentOfChampions   : 500000,
    battleOfTheDecades      : 100000
};

for(let prop in jeopardyWinnings){
    console.log(prop + "   " + jeopardyWinnings[prop]);
}


// FINDING THE TOTAL EARNINGS OF JEOPARDY WINNINGS
let total = 0;

for(let prop in jeopardyWinnings){
    total += jeopardyWinnings[prop];
}

console.log(`Ken Jennings Total Earnings: ${total}`);

// NOTE : VERY VERY IMPORTANT
/**
 * Technically speaking, arrays are just objects in JS. So we can use `for in` loop to
 * iterate over the keys of arrays but that is just of no use since what would we want to do with keys of arrays
 * Better not to use `for in` loop with arrays.
 * Also, the MDN browser documentation says that the order of the keys is arbitrary in case of `for in` and also depends on browser.
 */

// DO NOT DO THIS -- USELESS
for(let key in [2, 3, 45, 6, 89, 7]){
    console.log(key);
}

// ROUGH WORK





