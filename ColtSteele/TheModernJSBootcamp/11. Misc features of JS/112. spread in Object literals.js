/**
 * We can also use spread in Object literals
 */

/**
 * The spread operator in Objects copies the key value pairs from one object into the other
 */

const feline = {
    legs        : 4,
    family      : 'Felidae'
};

const canine = {
    family      : 'Caninae',
    furry       : true
};

const dog   = { // { family: 'Caninae', furry: true, isPet: true, adorable: true }
    ...canine,
    isPet       : true,
    adorable    : true
};

const houseCat = { // { legs: 4, family: 'Felidae', isGrumpy: true, personality: 'unpredicatable' }
    ...feline,
    isGrumpy    : true,
    personality : 'unpredicatable'  
};


// BUT HOW DO WE DECIDE IN CASE OF CONFLICTING PROPERTIES
/**
 * The answer is simple ==> The conflicting properties get overwritten i.e, the property that comes in last will decide the value of the conflicting attribute.
 */
const catDog = {
    ...canine,
    ...feline
}

console.log(catDog); // { family: 'Felidae', furry: true, legs: 4 }





//////////////////////////////////////////////////////  CLONING AN OBJECT  /////////////////////////////////////////////////////////////////////////////////////////////////

const catDogClone = {...catDog}; // This copies every property of catDog to catDogClone

console.log(catDog === catDogClone); // false


// We cannot spread Objects inside an array

const dogInsideArray = [...dog]; // This would give us an error

// However, We can spread arrays inside objects
const arrayInsideObject = {...[1, 2, 3]}; // {0: 1, 1:2, 2:3}
const arrayandstringInsideObjects = {...'Abhishek', ...[23, 32, 12]}; // { '0': 23, '1': 32, '2': 12, '3': 'i', '4': 's', '5': 'h', '6': 'e', '7': 'k' }



const random = [...'hello', {...catDog}];

// ROUGH WORK



