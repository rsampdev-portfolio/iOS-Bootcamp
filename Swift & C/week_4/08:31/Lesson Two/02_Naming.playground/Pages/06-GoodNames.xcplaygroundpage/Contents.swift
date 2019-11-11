//: ## Choosing Good Names
//: Choosing good names is a very important part of programming. Programmers want to choose good names because even though it is important to know how to write code, it is even more important to be able to read and understand code.
//:
//: In the last section you used names like `numberOfDogs` and `numberOfCats`. These are good names because they clearly describe what they represent.
//:
//: Imagine if the names had been `nd` and `nc` instead (for **n**umber of **d**ogs and **n**umber of **c**ats).\
//: Or even less descriptive names like `n1` and `n2`.
//:
//: The computer will accept names like this without complaint. But imagine coming back to read that code after vacation. Would you remember what `nd` or `n1` meant? And if you gave the playground to other programmers, how would they figure out what those names were supposed to mean?
//:
//: - callout(Just For Fun): In Swift, you can use emoji in names. Using emoji for names is not considered good naming practice, but it can be fun.  Below is the pet problem redone using emoji for names.
let 🐶 = 8
let 🐱 = 4
let 🐹 = 2
let 🐢 = 3
let 🐍 = 1
let 🐷 = 1
let 🐟 = 1

let totalNumberOfAnimals = 🐶 + 🐱 + 🐹 + 🐢 + 🐍 + 🐷 + 🐟

let totalNumberOfMammals = 🐶 + 🐱 + 🐹 + 🐷

//: - callout(Why Not Use Emoji?): Why not use emoji for names? One reason is it can be difficult to tell emoji apart at a glance. Another reason is that there might not be an emoji for every case. In the pet example, if someone brought a pet tarantula, there is no emoji to match. Using words is a lot more flexible.
//:
//:[Previous](@previous)  |  page 7 of 14  |  [Next: Constants](@next)
