const role = 'host';
const person = 'Jools Holland';

const team = {
    // role : person // If we do like this then it would form a property with key as role but we don't want that.
}

// To make key as 'host' we need to do something like below
team[role] = person;
console.log(team);

// To resolve this we have a syntax enhancement called computed properties wherein the value of the key is calculated first.

const obj = {
    [role]  : person,
};

console.log(obj);


// EXAMPLE
// Make a function that will take in a key and a value and add this to a passed object and then returns us a new object.
function addProp(obj, key, value){
    return {
        ...obj, // This is object spreading
        [key] : value // This is the concept of computed properties
    };
}



// ROUGH WORK




