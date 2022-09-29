/**
 * The value of "this" depends on the invocation context the function is used in.
 */


// The way we invoke the function will change the value off this.
const obj = {
    check(){
        console.log(this);
    }
}
obj.check(); // This will print the "obj" as check was called using "obj". So the value of "this" is set to "obj".

const checkOutside = obj.check; // store the reference of obj.check
checkOutside(); // This "checkOutside" is in global window object. Thus, it will set the value of "this" to "window".




/**
 * Arrow functions do not behave the way normal methods do.
 * They do not have their own version of "this".
 */

const person = {
    laugh : () =>{
        console.log(this); // Here "this" refers to the "window" object.
    }
}


person.laugh();


// ROUGH WORK



