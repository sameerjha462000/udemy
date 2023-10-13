/**
 * In this section we would discuss why don't arrow functions have their own "this".
 */

const annoyer = {
    phrases :   ["literally", "cray cray", "I can't even", "Totes!", "YOLO", "Can't Stop, Won't Stop"],
    pickPhrase(){

        const idx = Math.floor(Math.random() * this.phrases.length);
        return phrases[idx];
    },
    start(){
        setInterval(this.pickPhrase, 3000);
    },
    stop(){

    }
};





// ROUGH WORK




