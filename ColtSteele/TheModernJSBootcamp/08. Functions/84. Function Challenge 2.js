/**
 * Write a function to find the average value in an array of number
 * avg([0, 50]) // 25
 * avg([75, 76, 80, 95, 100]) // 85.2
 */

function average(nums){
    let total = 0;

    for(let val of nums)
        total += val;

    return total/nums.length;
}