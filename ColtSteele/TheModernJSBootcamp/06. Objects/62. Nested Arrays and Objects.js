/**
 * Just like we nested arrays inside another array, We can nest an object inside an array or maybe inside an object as well
 */

// CASE 1 := NESTING INSIDE AN OBJECT
const student = {
    firstName       : 'David',
    lastName        : 'Jones',
    strengths       : ['Music', 'Art'], // Array inside an object
    exams           : { // object inside an object
        midterm     : 92,
        final       : 88
    }
};

const avg = (student.exams.midterm + student.exams.final)/2;
console.log(avg); // This would give average grade of 'David Jones'


// CASE 2 : NESTING OF OBJECTS INSIDE AN ARRAY
const shoppingCart = [
    {
        product     : 'Jenga Classic',
        price       : 6.88,
        quantity    : 1
    },
    {
        product     : 'Echo Dot',
        price       : 29.99,
        quantity    : 3
    },
    {
        product     : 'Fire Stick',
        price       : 39.99,
        quantity    : 2
    }
];


console.log(shoppingCart[0].price); // 6.88
console.log(shoppingCart[1].quantity); // 3
console.log(shoppingCart[2].product); // 'Fire Stick'


