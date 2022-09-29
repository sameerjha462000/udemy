/**
 * We also have spread in array literals
 */

const cephalopods = ['dumbo octopus', 'humboldt squid', 'flamboyant cuttlefish'];

const gastropods = ['giant african snail', 'banana slug', 'variable neon slug'];

const cnidaria = ['fire coral', 'moon jelly'];


// cephalopods and gastropods together are called as mollusca
const mollusca = [...cephalopods, ...gastropods]; // Note that here order DOES matter
const molluscaAgain = [...gastropods, ...cephalopods]; // This is different from mollusca

const extendedMollusca = ['garden slug', ...gastropods, ...cephalopods];

// cephalopods, gastropods and cnidaria together are called inverts
const inverts = [...cephalopods, ...gastropods, ...cnidaria];



///////////////////////////////////////////////////////////  COPYING AN ARRAY USING ...  /////////////////////////////////////////////////////////////////////////////////////////
/**
 * This just copies on one level
 */
const cephCopy = [...cephalopods]; // This would copy the contents of cephalopods into the cephCopy.
console.log(cephCopy === cephalopods); // false 



// PROBLEM 1
// Convert 'Abhishek' into 'A.B.H.I.S.H.E.K'

// Method 1
console.log('Abhishek'.split('').join('.').toUpperCase());

// Method 2 using spread operator
console.log([...'Abhishek'].join('.').toUpperCase());

// ROUGH WORK




