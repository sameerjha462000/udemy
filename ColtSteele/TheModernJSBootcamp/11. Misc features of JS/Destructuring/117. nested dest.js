/**
 * Nested destructuring
 */

const results = [
    {
        first       : 'Eliud',
        last        : 'Kipchoge',
        country     : 'Kenya'
    },
    {
        first       : 'Feyisa',
        last        : 'Lilesa',
        country     : 'Ethiopia'
    },
    {
        first       : 'Galen',
        last        : 'Rupp',
        country     : 'United States'
    }
];

//  Get the name of the first person and the country of the last person using destructuring

const [{first : nameOfFirstPerson}, ,{country : countryOfLastPerson}] = results;


console.log(nameOfFirstPerson, countryOfLastPerson);

// ROUGH WORK




