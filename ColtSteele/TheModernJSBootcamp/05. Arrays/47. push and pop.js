/**
 * push and pop
 */

/**
 * The push() method add one or methods at the end of the array
 */

let topSongs = ['First Time Ever I Saw Your Face', 'God Only Knows', 'A  Day In The Life', 'Life On Mars'];

topSongs.push('Fortunate Son'); // ['First Time Ever I Saw Your Face', 'God Only Knows', 'A  Day In The Life', 'Life On Mars', 'Fortunate Son']

/**
 * pushing multiple elements simply adds concatenates the elements at the end of the array
 * NOTE := This is different from unshift() method which we shall discuss later
 */

let nums = [1, 3, 56];

nums.push(3,4,6,"Heaven");

console.log(nums); // [1, 3, 56, 3, 4, 6, "Heaven"]


// The push method after pushing returns us the length of the array

let ans = topSongs.push(true);

/**
 * pop() method pops an element from the end and returns that element
 */

let poppedElement = topSongs.pop(); // 'true'
topSongs.pop(); // 'Fortunate Son'

/**
 * Let us say we want to empty the array
 */

while(topSongs.length > 0){
    topSongs.pop();
}

console.log(topSongs); // []


