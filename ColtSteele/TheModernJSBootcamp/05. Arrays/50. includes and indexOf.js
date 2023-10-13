/**
 * inlcudes() method checks whether an element is present in the array or not
 */

let ingredients = ['water', 'corn starch', 'flour', 'cheese', 'brown sugar', 'shrimp', 'eel', 'butter'];

console.log(ingredients.includes('water')); // true
console.log(ingredients.includes('fish')); // false

/**
 * We can also pass the starting index from where we want to check
 */

console.log(ingredients.includes('water', 1)); // false
console.log(ingredients.includes('cheese',1)); // true as 'cheese' is present if we start searching from 1st index
  
if(ingredients.includes('flour')){
    console.log('I do not eat flour, PLEASE!');
}

/**
 * indexOf() method gives the index of first occurence of an element. If the element is not present, then it returns -1.
 */

console.log(ingredients.indexOf('maple syrup')); // -1 as it is not present in the array 'ingredients'
console.log(ingredients.indexOf('water')); // 0

/**
 * We can also pass the starting index in indexOf() method
 */

console.log(ingredients.indexOf('water',1)); // -1 as  'water' is not present in the array from 1st index.



