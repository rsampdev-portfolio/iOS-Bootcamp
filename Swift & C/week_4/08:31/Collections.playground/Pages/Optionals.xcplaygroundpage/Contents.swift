// Optionals

// Motivation
// What type should we return when we are trying to parse an int 'Int' from a 'String'? Remember to condider that the string might be "food"

/*
func parse(input: String) -> Int {
    var result: Int;
    
    if input == "food" {
        result = -3;
    } else if input == "-3" {
        reslut = // what goes here???
    }
    
    return result;
}
 */

func stringOnlyIfTrue(input: Bool) -> String? {
    return input ? "true" : nil; 
}

// Unwrapping
let scores: [String: Int] = ["TJ" : 30, "Princess" : 35, "Sampson" : 40];

let optionalResult = scores["TJ"];

if optionalResult == nil {
    print("We didn't find a score");
} else {
    // force unwrap waith '!'
    let result = optionalResult!;
    print("We found a score! \(result)");
}

let thisIsNeverNil : String? = nil;
// let unwrappedThingIsNeverNil = thisIsNeverNil!; CRASHES

// Unwrapping (without force)
// defination: pulling the not nil value out

// only create result if optionalResult is not nil
if let result = optionalResult {
    print("We found a score! \(result)");
} else {
    print("We didn't find a score");
}

//: Optional Chaining

extension Int {
    
    func sucessor() -> Int {
        return self + 1;
    }
    
}

let three = 3;
three.sucessor();

let optionalThree: Int? = 3;
let optionalThreeSuccessor = optionalThree?.sucessor();

let optionalFour: Int? = nil;
let optionalFourSuccessor = optionalFour?.sucessor();

// You can chain multiple times
extension Int {
    
    func optionalSucessor() -> Int? {
        return self + 1;
    }
    
}

let optionalFive: Int? = 3;
let optionalFiveSuccessor = optionalFive?.sucessor().description;

// Avoid force unwrapping in general. Only use to indicate error in programme's logic

//: #Implicily Unwrapped Optionals (IUOs)
func onlyAcceptsNonoptionalInit(input: Int) {
    print(input);
}

let acutalOptional: String? = "hello";
let iuoEmpty: String! = nil;
let iuoFull: String! = "Hello";

// let full1: String = acutalOptional;
let full2: String = iuoFull;
