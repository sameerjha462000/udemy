/**
 * Void is a return type for functions that don't return anything.
 * 
 * Usually, TypeScript can infer this type fairly well, but sometimes it may want you to annotate 
 * a function with a void return explicitly.
 */

function printTwice(msg : string) : void { //  Even if we do not explicitly write a type here, then also TypeScript can infer the return type as void.
    console.log(msg);
    console.log(msg);
}


// ROUGH WORK




