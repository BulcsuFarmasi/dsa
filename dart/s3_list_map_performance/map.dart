final Map<String, dynamic> instructor = {
  "firstName": "Kelly",
  "isInstructor": true,
  "favoriteNumbers": [1, 2, 3, 5],
};

//        ■                 ■                   ■
//    firstName        isInstructor        favoriteNumbers

void main() {
  print(instructor.keys);
  print(instructor.entries);
  print(instructor.containsKey("firstName"));
}
