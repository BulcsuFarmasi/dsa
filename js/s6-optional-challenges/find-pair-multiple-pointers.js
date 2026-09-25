// 1. Can I restate the problem in my own words
//     - Find out if there if a pair of numbers among array those difference is the other paramete
// 2. What are the inputs that go into the problem?
//    numbers, difference
// 
// 3. What are the outputs that should come from the solution to the problem?
//     - bool
// 4. Can the outputs be determined from the inputs? In other words, do I have enough information to solve the problem? (You may not be able to answer this question until you set about solving the problem. That's okay, it's still worth considering the question at this early stage.)
// if array is not array for empty return

// 5. How should I label the important pieces of data that are a part of the problem?
// numbers frequenx


// args, freq

// findPair([6,1,4,10,2,4], 2) // true
// findPair([8,6,2,4,1,0,2,5,13],1) // true
// findPair([4,-2,3,10],-6) // true
// findPair([6,1,4,10,2,4], 22) // false
// findPair([], 0) // false
// findPair([5,5], 0) // true
// findPair([-4,4], -8) // true
// findPair([-4,4], 8) // true
// findPair([1,3,4,6],-2) // true
// findPair([0,1,3,4,6],-2) // true
// findPair([1,2,3], 0) // false

function findPair(numbers, difference) {

    numbers.sort((a,b) => a - b);

    let i = 0;
    let j = 1;
    


    while(j < numbers.length) {
        if (numbers[j] - numbers[i] === Math.abs(difference)) {
            return true;
        }
        else if (numbers[j] - numbers[i] < Math.abs(difference)) {
            j++
        } else {
            i++;
        }

        if (i == j) {
            j++;
        }

    }

    return false;

}

console.log(findPair([1], 0));
