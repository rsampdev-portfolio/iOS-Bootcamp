let names = [
    "Rexy",
    "Sally",
    "Tom",
    "Jerry"
]

func doItAll1(list: [String]) -> [(String, Int)] {
    var output: [(String, Int)] = []
    
    for item in list {
        let count = item.characters.count
        
        if count % 2 == 0 {
            output.append((item, count))
        }
    }
    
    return output
}

func doItAll2(list: [String]) -> [(String, Int)] {
    var output1: [String] = []
    
    for item in list {
        let count = item.characters.count
        if count % 2 == 0 {
            output1.append(item)
        }
    }
    
    var output: [(String, Int)] = []
    for item in list {
        output.append((item, item.characters.count))
    }
    
    return output
}

func doItAll3(list: [String]) -> [(String, Int)] {
    var output1: [String] = []
    
    for item in list {
        let count = item.characters.count
        if count % 2 == 0 {
            output1.append(item)
        }
    }
    
    return output1.map({item in (item, item.characters.count)})
}

print(doItAll1(list: names))
print(doItAll2(list: names))
print(doItAll3(list: names))