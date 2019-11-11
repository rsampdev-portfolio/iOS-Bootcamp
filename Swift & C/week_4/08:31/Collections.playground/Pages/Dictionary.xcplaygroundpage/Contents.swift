// - Dictionaries

let favoriteColors: [String:String] = [
    "Sampson" : "Green",
    "Princess" : "Purple",
    "Ed" : "Blue",
    "Neil" : "Blue-green",
    "John" : "Pink"
]

// Unordered
for (name, color) in favoriteColors {
    print("\(name) likes \(color)");
}

// Key based access
print(favoriteColors["Sampson"]);
print(favoriteColors["Princess"]);
print(favoriteColors["Ed"]);
print(favoriteColors["Neil"]);
print(favoriteColors["John"]);

// Manually turning a dictionary into an arrray

var prettyStrings: [String] = [];

for tuple in favoriteColors {
    prettyStrings.append(("\(tuple.key) likes \(tuple.value)"));
}

print(prettyStrings);

// Mutability
var addressBook: [String : String] = ["Tim" : "tim@tim.com", "TJ" : "TJ@TJ.com"];
addressBook["Sue"] = "sue@sue.com";
print(addressBook);

// Key not present
let result: String? = addressBook["Barack Obama"];

let scores: [String: Int] = ["TJ" : 32, "Princess" : 33, "Sampson" : 32];

let result2: Int? = scores["TJ"];

// Removing keys