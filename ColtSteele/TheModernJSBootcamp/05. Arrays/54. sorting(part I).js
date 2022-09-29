/**
 * In JS, sorting works very weirdly. No one really uses this directly. We usually pass a comparator() function to tell it how to sort
 * but we would learn that in the later sections of the course.
 */

let names = ['Abhishek', 'Sparsh', 'Rohit', 'Himanshu', 'Joe'];
names.sort();
console.log(names); // ['Abhishek', 'Himanshu', 'Joe', 'Rohit', 'Sparsh']

let nums = [1, 100000, 2, 3, 45, 67];

nums.sort();
console.log(nums); // [1, 100000, 2, 3, 45, 67] ===> This is weird, But what happened ?

// Actually, the sort() function works by converting all the elements into string and then sorts them lexicographically.
// DONT KNOW WHY IT IS THE WAY IT IS, BUT NEVERTHELESS WE WOULD USE comparator() function in later sections.


