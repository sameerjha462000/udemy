/**
 * We can also specify a default value for a parameter along with its parameter
 */

function multiply(x : number, y : number = 1){
    return x * y;
}

console.log(multiply(34)); // 34

const printName = (first : string = 'Thomas', last : string = 'David') => {
    console.log(`${first} ${last}`);
}

printName('John');

// ROUGH WORK



