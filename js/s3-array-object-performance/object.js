let instructor = {
    firstName: "Kelly",
    isInstructor: true,
    favoriteNumbers: [1,2,3,4]
}

//        ■                 ■                   ■  
//    firstName        isInstructor        favoriteNumbers

console.log(Object.keys(instructor));
console.log(Object.entries(instructor));
console.log(instructor.hasOwnProperty("firstName"));

