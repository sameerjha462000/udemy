// Lexical scope is the ability for a function scope to access variables from the parent scope. 
// We call the child function to be lexically bound by that of the parent function.

/**
 * We can also say that nested functions are lexically bounded.
 */
/**
 * But this is one-way relationship 
 */
function outer(){
    let movie = 'Amadeus';
    function inner(){
        /**
         * The reason why we are able to access movie inside the inner() is because it is
         * lexically bounded to the outer(). 
         * Thus every variable from the parent scope is availiablle to it.
         */
        var x = 10; // as it is function scoped -- so only limited to inner()
        console.log(movie.toUpperCase());
    }

    /**
     * Whenever we make a function inside another function, we can call the inner function only from inside.
     */


    inner();
    console.log(x); // not defined
}

outer();