/**
 * Write a function isPangram() to check if a sentence is a pangram
 * 
 * NOTE := 
 * A pangram is a sentence which contains all the letters of the english alphabet atleast once
 * 
 * Example := 'The quick brown fox jumps over the lazy dog'
 */

function isPangram(sentence){
    sentence = sentence.toLowerCase(sentence);
    for(let char of 'abcdefghijklmnopqrstuvwxyz'){
        if(sentence.indexOf(char) === -1) // We could have also used includes() method.
            return false;
    }

    return true;
}

console.log(isPangram('The quick brown fox jumps over the lazy dog'));


