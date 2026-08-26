// 1. Can I restate the problem in my own words
//     - Check if two numbers contain the same number of digits in the same frequency
// 2. What are the inputs that go into the problem?
//     - two numbers check are not
// 
// 3. What are the outputs that should come from the solution to the problem?
//     - boolean true false
// 4. Can the outputs be determined from the inputs? In other words, do I have enough information to solve the problem? (You may not be able to answer this question until you set about solving the problem. That's okay, it's still worth considering the question at this early stage.)
// yes, if they are both numbers other then excpetion 
// 5. How should I label the important pieces of data that are a part of the problem?

// number other number number as string other number as string lookup

// expamles:
// sameFrequency(182,281) // true
// sameFrequency(34,14) // false
// sameFrequency(3589578, 5879385) // true
// sameFrequency(22,222) // false

function sameFrequency(number, otherNumber) {

    if (!Number.isInteger(number) || !Number.isInteger(otherNumber)) {
        throw new TypeError("Both parameters should be numbers");
    }

    const numberString = number.toString();
    const otherNumberString = otherNumber.toString();

    if (numberString.length !== otherNumberString.length) {
        return false;
    }

    const lookup = {};

    for (let digit of numberString) {
        lookup[digit] = (lookup[digit] || 0) + 1;
    }

    for (let digit of otherNumberString) {
        if (!lookup[digit]) {
            return false;
        }
        lookup[digit]--;


        return true;
    }
}

console.log(sameFrequency(34, 14));