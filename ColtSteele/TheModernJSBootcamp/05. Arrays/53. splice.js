/**
 * splice() is used to delete some elements from the array and then add some new elements back into the array
 * it takes atleast 2 arguments.
 * The first argument takes the starting element. The second arguments takes how may elements we want to delete from the array starting from the start index
 */

 let animals = ['shark', 'salmon', 'whale', 'bear', 'lizard', 'tortoise'];

 /**
  * splice() method returns the deleted elements in an array and it also modifies the original array
  */
 animals.splice(1, 0, 'octopus'); // go to 1st index('salmon') + delete 0 elements + add 'octopus' ===> ['shark', 'octopus', 'salmon', 'whale', 'bear', 'lizard', 'tortoise']

 let deletedAnimals = animals.splice(3,2); // go to 3rd index and delete 2 elements. ===> ['shark', 'octopus', 'salmon', 'lizard', 'tortoise']

 console.log(deletedAnimals); // ['whale', 'bear']





 