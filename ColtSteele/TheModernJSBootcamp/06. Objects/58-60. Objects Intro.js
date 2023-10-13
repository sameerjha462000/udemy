/**
 * objects are collection of properties
 * Each property is a key value pair.
 * Whatever be the key it would automatically be converted to a string
 */

/**
 * objects are created using curly braces
 */

/**
 * When we create an object using {}, it is called object literal
 */

let obj = {}; // This is empty object

// METHOD 1

let student = {
    myName              : 'Abhishek Jha',
    myAge               : 23,
    myCollege           : 'DTU',
    mySchool            : 'GSS',
    100                 : 'sigma rule',
    'my second name'    : 'sameer jha'
};

/**
 * We can access the properties using the dot operator
 */
// We cannot have a number or string after the dot operator, this is the reason we do not want to use it
console.log(student.myName);
console.log(student.myAge);
console.log(student.myCollege);
console.log(student.mySchool);
// console.log(student.100); // This is not allowed
// console.log(student.my second name); // This is also a pproblem
// console.log(student.'my second name'); // Not allowed


/**
 * We can also access the properties using the squqre bracket operator which takes a string
 * This is the best way, this works fine in all the cases ==> just convert the key into a string and pass inside the square bracket
 */

console.log(student['myName']);
console.log(student['myAge']);
console.log(student['myCollege']);
console.log(student['mySchool']);
console.log(student['my second name']);
console.log(student['100']);
console.log(student[100]); // Although this works, BUT PLEASE DON'T USE THIS KYUNKI YAAD BHI TO RKHNA HE NA XD


/**
 * There is indeed one more reason to use square bracket and that is when we do not know about the property that we are going to access
 * For example := Consider an object called 'palette' and a variable called color.
 */

const palette = {
    red    : '#eb4d4b',
    yellow : '#f9ca24',
    blue   : '#30336b'
};

let color = 'blue';

console.log(palette[color]);


// ROUGH WORK

