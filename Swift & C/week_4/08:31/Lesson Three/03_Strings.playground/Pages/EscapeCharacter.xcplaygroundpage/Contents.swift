//: ## The Great Escape
//: You’ve defined a lot of strings by putting characters between quotation marks. But what if you want a string that includes a quotation mark?
//:
//: You could try just adding quotation marks in the middle of a string.
//:
//: Uncomment the `badString` line of code below to see what happens:
// let badString = "He said, "Hi there!" as he passed by."
//: You get an error because Swift thinks the string definition is finished at the second quotation mark, just before the `Hi`. Then it does not know how to interpret the rest of the line of code.
//:
//: When you are done exploring, comment the code again, so the error goes away.
//: ### The Solution
//: You include a quotation mark in a string by typing a backslash before the quotation mark:
let stringWithQuotationMarks = "He said, \"Hi there!\" as he passed by."
//: The backslash informs Swift to treat what comes next as special. Since the quotation mark character follows the backslash, Swift treats it differently. It includes the quotation mark in the string, rather than ending the string.
//:
//:Because the backslash character is how you “escape” from the normal behavior of a string, it is called an _escape character_.
//:
//: Now learn about more things you can do with the escape character.
//:
//:[Previous](@previous)  |  page 10 of 16  |  [Next: Escape Sequences](@next)
