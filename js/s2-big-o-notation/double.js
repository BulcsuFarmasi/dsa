function double(arr) {
    const newArr = [];

    for (let i = 0; i < arr.length; i++) {
        newArr.push(2 * arr[i]);
    }

    return newArr;
}

console.log(double([10,30,40,50,60,2]))