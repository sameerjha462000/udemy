/**
 * sort() method receives a callback which tells it how to sort a given array
 */

const prices = [400.50, 3000, 99.99, 35.99, 12.00, 9500];

/**
 * If we do not pass a callback(), it sorts them lexicographically
 */
const badSort = prices.slice().sort();

/**
 * We need to pass a comparator callback
 */

const ascSort = prices.slice().sort((a, b) => a - b); // sorts in ascending order
const descSort = prices.slice().sort((a, b) => b - a); // sorts in descending order

console.log(badSort); // [12, 3000, 35.99, 400.5, 9500, 99.99]
console.log(ascSort); // [12, 35.99, 99.99, 400.5, 3000, 9500]
console.log(descSort); // [9500, 3000, 400.5, 99.99, 35.99, 12]


//////////////////////////////////////////////////// BOOKS ////////////////////////////////////////////////////////////////////////
const books = [{
    title: 'Good Omens',
    authors: ['Terry Pratchett', 'Neil Gaiman'],
    rating: 4.25,
    genres: ['fiction', 'fantasy']
  },
  {
    title: 'Changing My Mind',
    authors: ['Zadie Smith'],
    rating: 3.83,
    genres: ['nonfiction', 'essays']
  },
  {
    title: 'Bone: The Complete Edition',
    authors: ['Jeff Smith'],
    rating: 4.42,
    genres: ['fiction', 'graphic novel', 'fantasy']
  },
  {
    title: 'American Gods',
    authors: ['Neil Gaiman'],
    rating: 4.11,
    genres: ['fiction', 'fantasy']
  },
  {
    title: 'A Gentleman in Moscow',
    authors: ['Amor Towles'],
    rating: 4.36,
    genres: ['fiction', 'historical fiction']
  },
  {
    title: 'The Name of the Wind',
    authors: ['Patrick Rothfuss'],
    rating: 4.54,
    genres: ['fiction', 'fantasy']
  },
  {
    title: 'The Overstory',
    authors: ['Richard Powers'],
    rating: 4.19,
    genres: ['fiction', 'short stories']
  },
  {
    title: 'The Way of Kings',
    authors: ['Brandon Sanderson'],
    rating: 4.65,
    genres: ['fantasy', 'epic']
  },
  {
    title: 'Lord of the flies',
    authors: ['William Golding'],
    rating: 3.67,
    genres: ['fiction']
  }
]

// sort the books based on their ratings
books.sort((a, b) => a.rating > b.rating);





// ROUGH WORK







