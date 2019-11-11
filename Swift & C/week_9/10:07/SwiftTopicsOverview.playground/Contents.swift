// Question 1

var bbl = ["big": 123, "bad": 456, "lichen": 789]

bbl.updateValue(123, forKey: "big")

// Question 1


// Questing 2

let set1: Set = [10, 20, 30, 40]
let set2: Set = [10, 20, 30, 42]

let set3 = set1.symmetricDifference(set2)

print(set3)

// Question 2


// Question 3

var arr = [1, 2, 3]

defer {
    print(arr)
}

arr.append(4)

// Question 3


// Question 4

class Person {
    var age: Int = 0
    
    init(age: Int) {
        self.age = age
    }
}

func birthdayPrint(_ closure: @autoclosure () -> Person) {
    let person: Person = closure()
    person.age += 1
    print(person.age)
}

let jim = Person(age: 22)
birthdayPrint (jim)

// Question 4
