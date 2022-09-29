/**
 * Block scope means the scope of loops and conditionals
 * That is -- The scope of while, for and if_else blocks
 */

/**
 * const and let buckets are block scoped
 */

/**
 * But buckets declared using var are not block scoped.
 * They are nearest function scoped
 */

if(true){
    let myName      = 'Abhishek';
    const age       = 23;
    var mySchool    = 'GSS';
}

console.log(age); // not defined
console.log(animal); // not defined
console.log(mySchool); // 'GSS' -- as it is a bucket declared using var so it is function scoped



// var should not be used as it has multiple problems
