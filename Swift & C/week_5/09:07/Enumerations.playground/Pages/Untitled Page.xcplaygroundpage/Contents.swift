
enum Boolean {
    case truth
    case falsity
    case maybe
}

func respond(to input: Boolean) {
    switch input {
    case .truth:
        print("true")
    case .falsity:
        print("false")
    case .maybe:
        print("maybe")
    }
}

let value = Boolean.truth
respond(to: value)