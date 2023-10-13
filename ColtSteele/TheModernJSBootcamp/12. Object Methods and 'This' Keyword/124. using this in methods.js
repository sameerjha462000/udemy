/**
 * "this" in methods
 */

function check(){
    console.log(this); // Here it refers to the global object which is called "window" in browser.
}


const person = {
    first           : 'Cherilyn',
    last            : 'Sarkisian',
    nickName        : 'Cher',
    fullName(){
        console.log(this); // Here "this" refers to the "person"
        const {first, last, nickName} = this;
        return `${first} ${last} AKA ${nickName}`;
    },
    printBio(){
        const fullName = this.fullName(); // Here "this" refers to the "person" object.
        console.log(`${fullName} is a person!`);
    }
};


// ROUGH WORK



