// # Problem Solving Approach

// ## Understand the Problem


// Write a function which takes two numbers and returns their sum

// 1. Can I restate the problem in my own words
//     - figure out how many unique values in the array
// 2. What are the inputs that go into the problem?
//     sorted num array
// 3. What are the outputs that should come from the solution to the problem?
//    number
// 4. Can the outputs be determined from the inputs? In other words, do I have enough information to solve the problem? (You may not be able to answer this question until you set about solving the problem. That's okay, it's still worth considering the question at this early stage.)
    // yes, even if the array is zero length, we should assume the array is sorted
// 5. How should I label the important pieces of data that are a part of the problem?
    // arr, index, counter



// ## Explore Concrete Examples

//     Write a functionwhich takes in a string and return counts of each character in the string

//     - Start with Simple Examples
//         - countUniqueValues([1,1,1,1,1,1,2]) -> 2
//          - countUnqiueValues([-2,-1,-1,0,1]) -> 4
//     - Progress to More Complex Examples
//         - countUniqueValues([1,2,3,4,4,4,7,7,12,12,14]) ->
//     - Explore Examples with Empty Inputs
//         counUniqueValues([]) -> 0
//          we should receive null or similar value
//     - Explore Examples with Invalid Inputs
//         


// ## Break It Down

// ## Solve/Simplify

// ## Look Back and Refactor
//     - Can I check the result?
//     - Can I derive the result differently?
//     - Can you understand it at a glance?
//     - Can I use the result or method for some other problem?
//     - Can I improve the performance of your solution?
//     - Can I think of other ways to refactor?
//     - How have other people solved this problem?


function countUniqueValues(array) {
    if (array.length === 0) {
        return 0;
    }

    let index = 1;
    let counter = 1;

    while (index < array.length) {
        if (array[index] !== array[index - 1]) {
            counter++;
        }
        index++;
    }

    return counter;
}

console.log(countUniqueValues([-2,-1,-1,0,1]));
