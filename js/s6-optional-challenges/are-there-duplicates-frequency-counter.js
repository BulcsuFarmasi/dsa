// 1. Can I restate the problem in my own words
//     - Check if there are duplicates among the parameter
// 2. What are the inputs that go into the problem?
//    args dynamic variables
// 
// 3. What are the outputs that should come from the solution to the problem?
//     - boolean true false
// 4. Can the outputs be determined from the inputs? In other words, do I have enough information to solve the problem? (You may not be able to answer this question until you set about solving the problem. That's okay, it's still worth considering the question at this early stage.)
// yes, in every case

// 5. How should I label the important pieces of data that are a part of the problem?


// args, freq

// expamles:
// areThereDuplicates(1, 2, 3) // false
// areThereDuplicates(1, 2, 2) // true 
// areThereDuplicates('a', 'b', 'c', 'a') // true 

function areThereDuplicates(...args) {
    const frequency = {};

    for (let arg of args) {
        frequency[arg] = (frequency[arg] || 0) + 1;

        if (frequency[arg] > 1) {
            return true;
        }
    }
    return false;
}

console.log(areThereDuplicates('a', 'b', 'c', 'a'));
