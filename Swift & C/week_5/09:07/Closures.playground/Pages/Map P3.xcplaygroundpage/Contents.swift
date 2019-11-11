let numbers: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

func myApply(list: [Int], fn: (Int) -> Int) -> [Int] {
    var output: [Int] = []
    for item in list {
        output.append(fn(item))
    }
    return output
}

let triple: (Int) -> Int = { input in
    return input * 3
}

myApply(list: numbers, fn: triple)

myApply(list: numbers, fn: {input in
    input * 3
})

myApply(list: numbers, fn: {input in
    input * 3
})

myApply(list: numbers, fn: {
    $0 * 3
})

myApply(list: numbers) {
    $0 * 3
}

numbers.map {
    $0 * 3
}

// all the same

["Rex", "Dex", "Flex"].map {
    $0.characters.count
}
