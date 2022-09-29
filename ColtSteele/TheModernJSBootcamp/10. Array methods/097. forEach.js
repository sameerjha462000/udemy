/**
 * The foreach method accepts a callback function and calls the element once per element in the array.
 */
/**
 * The first element of the callback function is element of the array and the second value is the index.
 */


const nums = [9, 8, 7, 6, 5, 4, 3, 2, 1];

nums.forEach(function (n) {
    console.log(n);
});

// COUNT THE NUMBER OF EVEN VALUES IN AN ARRAY
let count = 0;

nums.forEach(function(n) {
    if(n  % 2 === 0)
        count++;
});

console.log(count);


// PRINT TRIPLE THE VALUE OF EACH ELEMENT IN THE ARRAY
function printTriple(n) {
    console.log(3 * n);
}
nums.forEach(printTriple);





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

// PRINT THE TITLE OF EACH BOOK IN CAPITAL
books.forEach(function(book, idx) {
    console.log(book.title.toUpperCase(), idx);
});












