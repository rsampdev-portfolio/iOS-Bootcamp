// Arrays

let fellowship = ["Alexander", "Aaron", "Laurens", "Hercules"];

// Ordered
for member in fellowship {
    print(member)
}

// Zero-indexed
print(fellowship[0]);
print(fellowship[1]);
print(fellowship[2]);
print(fellowship[3]);

// Mutable Arrays

var favoriteFoods = ["Cheesecake", "Pizza", "Fudge cookies"];

print("my favorite foods were \(favoriteFoods.joined(separator: ", "))");

favoriteFoods.append("Ribs");
favoriteFoods[0] = "Cheerios";

print("my favorite foods are \(favoriteFoods.joined(separator: ", "))");
