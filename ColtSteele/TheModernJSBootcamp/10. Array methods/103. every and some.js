/**
 * every() accepts a boolean callback().
 * If all the elements pass the testing callback(), then it returns true.
 * Otherwise, false.
 */

const words = ['dog', 'dig', 'log', 'bag', 'wag'];

// does every word in words contains exactly 3 letters?

const allThree = words.every(word => word.length === 3); // true

// Does every letter has 'g; as last character

const allLastg = words.every(word => word[word.length-1] === 'g'); // true



/////////////////////////////////////////////////////  SOME  ////////////////////////////////////////////////////////////////////////////////////////////////

/**
 * some() is same as every. It is just that it returns true even if one of the elements passes the test of callback() method
 */

// Does there exists a word in words which has 'd' in it?
const someHasd = words.some(word => word.includes('d'));


// Does there exist a word in words which starts with 'd?
const someStartsWithd = words.some(word => word[0] === 'd');

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



// Does there exist a book which has 2 authors in it?

const hasTwoAuthors = books.some(book => book.authors.length === 2); // true



// ROUGH WORK










