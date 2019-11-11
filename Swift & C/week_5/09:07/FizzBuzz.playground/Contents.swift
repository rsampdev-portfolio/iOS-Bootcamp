import PlaygroundSupport

let page = PlaygroundPage.current
page.needsIndefiniteExecution = true

func fizzBuzz(_ number: Int) -> (number: Int , description: String) {
    var description = ""
    
    if number % 3 == 0 {
        description += "Fizz"
    }
    
    if number % 5 == 0 {
        description += "Buzz"
    }
    
    return (number, description)
}

for number in 0...100 {
    let info = fizzBuzz(number)
    print("\(info.number): \(info.description)")
}

page.finishExecution()
