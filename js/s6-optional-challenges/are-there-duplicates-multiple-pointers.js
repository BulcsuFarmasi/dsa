function areThereDuplicates(...args) {
    args.sort();

    let left = 0;
    let right = 1;

    while (right < args.length) {
        if (args[left] === args[right]) {
            return true;
        }

        left++;
        right++;
    }

    return false;
}

console.log(areThereDuplicates());
