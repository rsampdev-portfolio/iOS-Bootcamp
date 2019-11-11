// Tuples

let name: String = "Sampson";
let nameAndAge: (String, Int) = (name, 14);

func printFirstInTuple(tuple: (String, Int)) {
    print(tuple.0);
}

func printSecondInTuple(tuple: (String, Int)) {
    print(tuple.1);
}

printFirstInTuple(tuple: nameAndAge);
printSecondInTuple(tuple: nameAndAge);

// Named members

let entry: (name: String, age: Int, email: String, siblingCount: Int);

entry = ("rsampdev", 14, "rsampdev@gmail.com", 5);
entry.age;
entry.email;