// 1. Can I restate the problem in my own words
//     - Return the array of numbers which only occur exactly
// 2. What are the inputs that go into the problem?
//    number
// 
// 3. What are the outputs that should come from the solution to the problem?
//     - array
// 4. Can the outputs be determined from the inputs? In other words, do I have enough information to solve the problem? (You may not be able to answer this question until you set about solving the problem. That's okay, it's still worth considering the question at this early stage.)
// if there are invalid or empty input return with an empty 

// 5. How should I label the important pieces of data that are a part of the problem?
// numbers frequenx


// args, freq

// expamles:
// findAllDuplicates([4,3,2,7,8,2,3,1]) // array with 2 and 3
// findAllDuplicates([4, 3, 2, 1, 0]) // []
// findAllDuplicates([4, 3, 2, 1, 0, 1, 2, 3]) // array with 3, 2, and 1
// findAllDuplicates([]) -> []
// findAllDuplicess(null) -> []


function findAllDuplicates(numbers) {
    if (!Array.isArray(numbers) || !numbers.every(Number.isFinite) || numbers.length == 0) {
        return [];
    }

    const numberFrequency = {};

    // create frequency

    for (let number of numbers) {
        numberFrequency[number] = (numberFrequency[number] || 0) + 1;
    }

    const desiredCount = 2;



    const duplicates = [];



    for (let number in numberFrequency) {
        if (numberFrequency[number] == desiredCount) {
            duplicates.push(parseInt(number));
        }
    }

    return duplicates;
}

console.log(findAllDuplicates([4, 3, 2, 1, 0, 1, 2, 3]));
