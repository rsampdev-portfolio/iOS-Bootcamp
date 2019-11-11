let numbers: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

func doubleInput(_ input: Int) -> Int {
    return input * 2
}

func apply( fn: (Int) -> Int, to list: [Int]) -> [Int] {
    var output: [Int] = []
    
    for item in list {
        output.append(fn(item))
    }
    
    return output
}

let first = apply(fn: doubleInput, to: numbers)
let second = apply(fn: { input in input * 5}, to: numbers)

first
second