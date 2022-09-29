/**
 * When TypeScript can infer how an unnamed function is going to be called, 
 * it can automatically infer its parameters' types.
 */

const colors = ['red', 'orange', 'yellow'];

/**
 * Here since map is called on string[], TypeScript automatically knows that color is going to be string.
 * So we do not need to specifically mention this.
 */
const upperColors = colors.map(color => color.split('').join('.').toUpperCase());
console.log(upperColors);



// ROUGH WORK





