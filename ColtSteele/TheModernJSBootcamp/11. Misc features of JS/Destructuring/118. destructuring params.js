/**
 * destructuring parameters
 */

 const runner = {
    first       : 'Eliud',
    last        : 'Kipchoge',
    country     : 'Kenya',
    title       : 'Elder of the Order of the Golden Heart of Kenya'
};

// METHOD 1
function print(person){
    const {first, last} = person;

    console.log(`${first} ${last}`);
}

// OR WE COULD HAVE DESTRUCTURED RIGHT AT THE BEGINNING
function print({first, last}){
    console.log(`${first} ${last}`);
}

print(runner);




// ROUGH WORK





