/**
 * Destructuring arrays
 */

const raceResults = [
    'Eliud Kipchoge',
    'Feyisa Lelisa',
    'Galen Rupp',
    'Ghirmay Ghebreslassie',
    'Alphonce Simbu',
    'Jared Ward'
];

const [gold, bronze, silver] = raceResults;

console.log(gold, bronze, silver); // 'Eliud Kipchoge' 'Feyisa Lelisa' 'Galen Rupp'


// Let us say I wanted only the first and the third names from raceResults

const [first, , third] = raceResults;
// first => 'Eliud Kipchoge'
// third => 'Galen Rupp'


// We can also use rest params while destructuring
const [winner, ...others] = raceResults; // winner =>  'Eliud Kipchoge' , others => ['Feyisa Lelisa', 'Galen Rupp', 'Ghirmay Ghebreslassie', 'Alphonce Simbu', 'Jared Ward']

// ROUGH WORK





