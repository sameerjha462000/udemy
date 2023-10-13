/**
 * Array.find() method receives a boolean callback as a param and returns the first value for which the callback gives true
 */

const movies = [
    "The Fantastic Mr. Fox",
    "Mr. and Mrs. Smith",
    "Mrs. Doubtfire",
    'Mr. Deeds'
];

// Find the movie which has 'Mrs' in its title
const movie = movies.find(movie => {
    return movie.includes('Mrs'); // includes() and indexOf() are also availiable in strings
});


// Find the movie which starts from 'Mrs' -- 'Mrs. Doubtfire'
const movie2 = movies.find(movie => {
    movie.indexOf('Mrs') === 0;
})

///////////////////////////////////////////// BOOKS DATA ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

const books = [
  {
    title: 'Good Omens',
    authors: ['Terry Pratchett', 'Neil Gaiman'],
    rating: 4.25
  },
  {
    title: 'Bone: The Complete Edition',
    authors: ['Jeff Smith'],
    rating: 4.42
  },
  {
    title: 'American Gods',
    authors: ['Neil Gaiman'],
    rating: 4.11
  },
  {
    title: 'A Gentleman in Moscow',
    authors: ['Amor Towles'],
    rating: 4.36
  }
]

// Find the first movie whose rating is atleast 4.3
const goodBook = books.find(book => book.rating >= 4.3);


// First book where 'Neil Gaiman' is the author
const neilBook = books.find(book => book.authors.includes('Neil Gaiman'));




