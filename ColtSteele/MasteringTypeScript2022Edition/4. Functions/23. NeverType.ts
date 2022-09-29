/**
 * We use this to annotate a function that throws a exception, 
 * or a function that never finishes executing.
 */


const giveError = (msg : string) => { //  Here return type is automatically `never`.
    throw new Error(msg);
}

const neverStop = () => { // Here return type is automatically `never`.
    while(true){
        console.log('Gibberish!!!');
    }
}

/**
 * But as usual it is better that we specify the return type.
 */

function makeError(msg : string) : never {
    throw new Error(msg);
}

function gameLoop() {
    while(true){
        console.log('GAME IS RUNNING!');
    }
}

// ROUGH WORK



