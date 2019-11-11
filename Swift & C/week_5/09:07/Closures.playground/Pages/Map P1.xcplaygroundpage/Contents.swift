let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

func doubleInput(_ input: Int) -> Int {
    return input * 2
}

func doubleList(list: [Int]) -> [Int] {
    var output: [Int] = []
    
    for item in list {
        output.append(doubleInput(item))
    }
    
    return output
}

print(doubleList(list: numbers))