/**
 * The filter() method receives a boolean callback and then adds all the values for which the callback function gives true to an answer array.
 */

const nums = [9, 8, 7, 6, 5, 4, 3, 2, 1];

const odds  = nums.filter(num => {
    return n % 2 === 1;
})

console.log(odds);

const evens = nums.filter(num => num % 2 === 0);

/////////////////////////////////////////  MEGA  EXAMPLE (BOOKS)  //////////////////////////////////////////////////////////////////////////////////////////////////////////////
const books = [
  {
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


// Find all books which have rating > 4.3
const goodBooks = books.filter(book => book.rating > 4.3);

// Find all 'fantasy' books
const fantasyBooks = books.filter(book => book.genres.includes('fantasy'));

// Find all books which are 'essays' or 'short stories'
const shortBooks = books.filter(book => {
    return book.includes('short stories') || book.includes('essays');
});

// Find all the books which have 'the'(case insensitive) in them
let query = 'the';
const results = books.find(book => {
    return book.title.toLowerCase().includes(query.toLowerCase());
});




// ROUGH WORK





