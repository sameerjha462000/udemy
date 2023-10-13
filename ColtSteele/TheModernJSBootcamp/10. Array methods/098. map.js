/**
 * map() is used to create an array from an existing array
 * It accepts a callback and then builds an array from the values returned by that callback().
 */

const numbers = [20, 21, 22, 23, 24, 25, 26, 27];
const words   = ['asap', 'byob', 'rsvp', 'diy'];

const doubles = numbers.map(function(num){
    return num * 2; // If we would have not returned a value then map automatically takes undefined.
});


console.log(doubles);

// PROBLEM 2

const info = numbers.map(function(num) {
    return {
        num     : num,
        isEven  : (num % 2 === 0)
    };
});


console.log(info);

// PROBLEM 3
// CONVERT EACH WORD IN words INTO AN ABBREVIATION


// .split('') (.split on empty string splits each character and places them in an array)
const abbs = words.map(function(word) {
    return word.split('').join('.').toUpperCase();
});

console.log(abbs);





// PROBLEM 4
const books = [
    {
        title       : 'Good Omens',
        authors     : ['Terry Pratchett', 'Neil Gaiman'],
        rating      : 4.25
    },
    {
        title       : 'Bone: The Complete Edition',
        authors     : ['Jeff Smith'],
        rating      : 4.42
    },
    {
        title       : 'American Gods',
        authors     : ['Neil Gaiman'],
        rating      : 4.11
    },
    {
        title       : 'A Gentleman in Moscow',
        authors     : ['Amor Towles'],
        rating      : 4.36
    }
];


const titles = books.map(function(book){
    return book.title;
});


console.log(titles);


// ROUGH WORK




