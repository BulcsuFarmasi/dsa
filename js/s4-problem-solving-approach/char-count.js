function charCount(str) {
    // make object
    const result = {};
    // loop over string, for each character
    for (let i = 0; i < str.length; i++) {

       let char = str[i];
        // if the char is a number / letter AND a key in object, add one to count
        if (result[char] > 0) {
            result[char]++;
        
        // if the char is a number / letter AND  not in object, add it and set value to 1
        } else {
            result[char] = 1;
        }
    }

        // if character is something else (space, period, etc. ) don't do anything
    // return object at end
    return result;
}

console.log(charCount("hello"));
