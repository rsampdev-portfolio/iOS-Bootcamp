//: ## Naming Things
//: When you give a value a name, you can use that name to refer to that value. If the value changes, you can update it in one place and not have to update in multiple places, where it is easy to make a mistake.  Also, using names helps keep track of what is what, just like the names you give things in real life.
//:
//: In Swift you can use use the `let` keyword to define a name and the equal sign `=` to give a value to that name:
let numberOfDogs = 6 + 2

let numberOfCats = 5 - 1

let numberOfTurtles = 2 + 1

let numberOfHamsters = 1 + 1

//: Once you define a name and assign a value to it, you can use the name wherever you would have used the value, including in mathematical calculations that define the value of a new name:

let totalNumberOfAnimals = numberOfDogs + numberOfCats + numberOfTurtles + numberOfHamsters

let totalNumberOfMammals = numberOfDogs + numberOfCats + numberOfHamsters

//: - experiment: As the week goes on, you get even more information about peoples' pets.  Update the code above for the changes.
//:
//: Now when the number of a certain kind of animal changes you only have to update it in one place, where the name is defined.
//:
//: You can even let the playground do the math for you by adding or subtracting to the right of the equal sign. For instance, if two more people were bringing a dog you could type:
//:
//: `let numberOfDogs = 6 + 2`
//:
//: Please experiment by making the following updates:
//: - Two more people are bringing a dog.
//: - The sick turtle is feeling much better and will be coming to the pet show.
//: - One of the cats cannot make it.
//: - Another person is bringing a hamster.
//:
//: Once you're done with the experimenting, move ahead.
//:
//:[Previous](@previous)  |  page 4 of 14  |  [Next: Typing Names and Autocompletion](@next)
