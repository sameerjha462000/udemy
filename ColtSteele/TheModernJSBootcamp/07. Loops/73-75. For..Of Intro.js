/**
 * `for of` loop is used to iterate over an iterable
 */


/**
 * Arrays are iterable so we can use `for of` loop for arrays
 */

let nums = [2, 4, 6, 8, 10];

for(let i of nums){
    console.log(i);
}

for(let char of "Abhishek Jha"){
    console.log(char);
}

/**
 * Objects are not iterable, so we cannot use `for of` loop in them directly
 */

const student = {
    myName          : 'Abhishek Jha',
    myAge           : 23,
    mySchool        : 'GSS',
    myCollege       : 'DTU',
    myPassion       : ['Music', 'Maths', 'Chess', 'Programming'],
    emails          : {
        personal    : 'sameerjha462000@gmail.com',
        work        : 'Abhishek.Jha2@in.ey.com'
    }
}


// THIS WOULD NOT WORK
for(let i of student){
    
}
// We get the error that student is not iterable. So how do we resolve such error.

/**
 * For this we use Object.keys() method.
 * This method gives us the set of keys of the Object that is passed in as parameter
 */

for(let key of Object.keys(student)){
    console.log(key);
}

/**
 * We also have another method for getting values of an object
 * Object.values() method gives us all the values of the keys present in the Object passed in as parameter.
 */

for(let value of Object.values(student)){
    console.log(value);
}

// ROUGH WORK





