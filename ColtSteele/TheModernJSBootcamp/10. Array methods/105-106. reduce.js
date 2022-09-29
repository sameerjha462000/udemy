/**
 * reduce() is the most trickier than all of 'em.
 * It takes an array of values and reduces them into a single value
 */

const nums = [3, 4, 5, 6, 7];

const product = nums.reduce((total, currValue) => {
    return total * currValue;
});

/** Initially the total is at 3 and currValue is at 4. 
 * Then when we return the value it gets stored in total. 
 * So now total becomes 12 and currValue becomes 5 and then this process goes on till currValue crosses the array.
 * 
 * NOTE := One thing to note here is that currValue starts from 4 and not 3.
*/

// Find the max value in an array

const maxNum = nums.reduce((max, currValue) => {
    return Math.max(max, currValue);
})




///////////////////////////////////////////////////////////////  EXTRA PARAMETER IN REDUCE()  ////////////////////////////////////////////////////////////////////////////////////////

/**
 * The extra parameter after the callback() function is the initivial value with which you want to initialize the accumulator.
 */


// Example with initial Value

/**
 * In the example below we have initialized the accumulator with an initial value, then the currValue starts from the 0th index.
 * In case when we do not provide the initial value, the currValue starts from the 1st index and since we have not given the accumulator an initial value,
 * JS automatically iniitializes it with the value at 0th index of the array.
 */
const sum = nums.reduce((accumulator, currValue) => {
    return accumulator + currValue;
}, 0);



// Find all the numbers which are atleast 5

const atLeastFive = nums.reduce((accumulator, currValue) => {
    if(currValue >= 5)
        accumulator.push(currValue);
    
    return accumulator;
}, [])

console.log(atLeastFive);


// Make the parityList using reduce
// DO NOT DO THIS AS array.push() returns the final size of the array after inserting.
// const parityList = nums.reduce((accumulator, currValue) => {
//     if(currValue % 2 === 0)
//     {
//         return accumulator.push('even');
//     }else{
//         return accumulator.push('odd');
//     }
// }, []);

const parityList = nums.reduce((accumulator, currValue) => {
    if(currValue % 2 === 0)
        accumulator.push('even');
    else
        accumulator.push('odd');
    return accumulator;
}, []);





// ROUGH WORK






