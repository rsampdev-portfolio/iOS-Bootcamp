/*:
 ## Putting It All Together
 - callout(Exercise): In this final exercise you’ll combine the things you’ve learned over the last few pages. Update this `responseToQuestion` function so that it gives the answers specified below. It’s okay to go back and look and code from earlier pages.
*/
func responseToQuestion(question: String) -> String {
    return "?"
}
//: 👇These answers should be **Why, hello there!**
responseToQuestion("Hello there")
responseToQuestion("hello there")
//: 👇These answers should be **To the North!**
responseToQuestion("Where should I go on holiday?")
responseToQuestion("where can I find the North Pole?")
//: 👇This answer should be **In the cookie jar!**
responseToQuestion("Where are the cookies?")
/*: 
 Any other question can have any answer you'd like. You can also make new rules or conditions so different questions have different answers!
 
 👇 Below are some example questions for you to test the final part. You can add or change the test questions if you like.
*/
responseToQuestion("Can I have a cookie?")
responseToQuestion("CAN I HAVE A COOKIE?!?")
responseToQuestion("Should I go?")

/*:
 - note:
 You'll be cutting and pasting the body of the `responseToQuestion` function above. When you highlight it to copy over, your function body will be different, but it'll look something like this: ![](copy-paste-example.png)
 */

//:[Previous](@previous)  |  page 6 of 7  |  [Next: Wrap up](@next)
