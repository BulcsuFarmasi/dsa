// 1. Can I restate the problem in my own words
//     - compare if an array contains the same number of numbers sqaured
// 2. What are the inputs that go into the problem?
//     - two array, what is they are not number, check?
// 
// 3. What are the outputs that should come from the solution to the problem?
//     - what if the some of the array are not - >
// 4. Can the outputs be determined from the inputs? In other words, do I have enough information to solve the problem? (You may not be able to answer this question until you set about solving the problem. That's okay, it's still worth considering the question at this early stage.)
// yes if both arrays we return false other wise or though
// 5. How should I label the important pieces of data that are a part of the problem?

// expamles:
// [1, 2, 2], [1, 4, 4]   // true
// [1, 2, 2], [1, 4]      // false
// [], [1]                 // false
// [], []                  // decide from the contract
// [2, 3], [4, 9]          // true
// "abc", [1, 2] // Exception: Both arguments must be arrays 
// [1, "2"], [1, 4] // Arrays must contain only numbers

function same(arr1, arr2) {
    // check for arrays
    if (!Array.isArray(arr1) || !Array.isArray(arr2)) {
        throw new TypeError("Both arguments must be arrays.")
    }
    // check for numbers in arrays
    if (!arr1.every(Number.isFinite) || !arr2.every(Number.isFinite)) {
        throw new TypeError("Array must contain only numbers.")
    }
    // check for array length
    if (arr1.length !== arr2.length) {
        return false;
    }

    // loop over the first array
    for (let i = 0; i < arr1.length; i++) {
        let foundIndex;
        for (let j = 0; j < arr2.length; j++) {
            if (arr1[i] ** 2 === arr2[j]) {
                foundIndex = j;
                break;
            }
        }

        if (typeof foundIndex !== "undefined") {
            arr2.splice(foundIndex, 1)
        } else {
            return false;
        }
        console.log(arr2);
        
    }


    return arr2.length === 0;

}



console.log(same([1,2,"3"], [1,2,3]));
