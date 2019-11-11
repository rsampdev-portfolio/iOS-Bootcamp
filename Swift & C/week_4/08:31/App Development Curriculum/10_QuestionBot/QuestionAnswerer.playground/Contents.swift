import Foundation
/*:
 # TextDecider
 
 In this exercise, you're going to make QuestionBot a bit smarter.
 
 Often, as a developer, you don't build a whole app from scratch. You often have to take an existing project and add features or fix problems, which is what you'll do here.
 
 You can build the brains of the app in a playground before adding it to the app. This lets you concentrate on the part you're working on right now.
 
 The "brain" of QuestionBot is anything that implements the function `responseToText`. You can make this an official rule by declaring a **protocol**:
*/
protocol TextDecider {
    func responseToText(text: String) -> String
}
//: Here's a struct that meets the rule (this is called *conforming to the protocol*)
struct NotReallyListeningTextDecider: TextDecider {
    func responseToText(text: String) -> String {
        return "Sorry, what was that?"
    }
}
//: Here's a variable that will hold our decider
var decider: TextDecider!
//: Now we can set a value to it and ask a question
decider = NotReallyListeningTextDecider()
decider.responseToText("How are you?")
decider.responseToText("I said, how are you?")
decider.responseToText("Oh, never mind.")
/*: This doesn't make for great conversation. There are more examples on the next page
 [Next](@next)
*/

/**
 Anything that implements the function `responseToText` can be used by the SimpleChatViewController to decide on an answer!
 */
NSCalendar.currentCalendar()







struct MyTextDecider: TextDecider {
    func responseToText(text: String) -> String {
        // TODO: Write a response!
        return "?"
    }
}











/**
 Here are some samples to get you started:
 */

/// A text decider that returns the same answer, no matter what the question was
struct OnlyOneResponseDecider: TextDecider {
    func responseToText(text: String) -> String {
        return "I wish I knew"
    }
}


/// A text decider that gives an answer depending only on the first word in the phrase
struct FirstWordTextDecider: TextDecider {
    
    /// Figures out & returns the first word in a phrase
    func firstWordInPhrase(phrase: String) -> String {
        let words = phrase.componentsSeparatedByCharactersInSet(.whitespaceCharacterSet())
        let lowercasedWords = words.map() { word in
            return word.lowercaseString
        }
        
        let firstWord = lowercasedWords.first
        return firstWord ?? ""
    }
    
    func responseToText(text: String) -> String {
        
        let firstWord = firstWordInPhrase(text)
        
        switch firstWord {
        case "hi":
            return "why hello"
        case "why":
            return "Time will tell"
        case "what":
            return "Pretty much everything"
        case "who", "who's", "who'll":
            return "A kindly neighbor"
        case "where":
            return "To the north!"
        case "where's":
            return "Wherever you left it"
        case "should":
            return "Probably"
        case "will":
            return "If all goes according to plan"
        case "when":
            return "In good time"
        default:
            return "That really depends"
        }
    }
}


/// A text decider that only looks at the number of characters in the string (and otherwise doesn't consider the contents at all!)
struct PhraseLengthTextDecider: TextDecider {
    func responseToText(text: String) -> String {
        switch text.characters.count {
        case 1:
            return "Is that all?"
        case 2...5:
            return "You do you"
        case 9:
            return "Oh really?"
        case 14...20:
            return "Aww :blush:"
        default:
            return "That was unexpected"
        }
    }
}

