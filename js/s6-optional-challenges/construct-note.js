// 1. Can I restate the problem in my own words
//     - The letter occur in same the same frequency in message
// 2. What are the inputs that go into the problem?
//    message, leete
// 
// 3. What are the outputs that should come from the solution to the problem?
//     - boolean true false
// 4. Can the outputs be determined from the inputs? In other words, do I have enough information to solve the problem? (You may not be able to answer this question until you set about solving the problem. That's okay, it's still worth considering the question at this early stage.)
// yes, there are sufficient guardrails in place only lowercase letters 

// 5. How should I label the important pieces of data that are a part of the problem?
// letter frequency, message frequency


// args, freq

// expamles:
// constructNote('aa', 'abc') // false
// constructNote('abc', 'dcba') // true
// constructNote('aabbcc', 'bcabcaddff') // true

function constructNote(message, letters) {

    const messageFrequency = {};

    for (let letter of message) {
        messageFrequency[letter] = (messageFrequency[letter] || 0) + 1;
    }

    const letterFrequency = {};

    for (let letter of letters) {
        letterFrequency[letter] = (letterFrequency[letter] || 0) + 1;
    }

    for (let frequency in messageFrequency) {
         
        if (!letterFrequency[frequency] || letterFrequency[frequency] != messageFrequency[frequency]) {
            return false;
        }
    }


    return true;
}

console.log(constructNote('aabbcc', 'bcabcaddff'));
