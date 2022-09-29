/**
 * We can also destructure objects
 */
const runner = {
    first       : 'Eliud',
    last        : 'Kipchoge',
    country     : 'Kenya',
    title       : 'Elder of the Order of the Golden Heart of Kenya'
}

// While destructuring an object, instead of [] we use {} and write the name of the properties that we want to capture

const {first, last} = runner;

console.log(first, last);



// We can also change the name with which we want to capture them using semicolon

const {country : nation, title : honorific} = runner; //  This means that capture property with key as `country` and store its value in `nation`.

console.log(nation, honorific);


// ROUGH WORK




