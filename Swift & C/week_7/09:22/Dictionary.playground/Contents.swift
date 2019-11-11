import Darwin //for arc4random_uniform

fileprivate extension BidirectionalCollection {
    //the standard library should probably have this built in
    func lastIndex(where predicate: (Self.Iterator.Element) throws -> Bool) rethrows -> Self.Index? {
        if let reversedIndex = try self.reversed().index(where: predicate)?.base {
            return self.index(before: reversedIndex)
        }
        return nil
    }
}

fileprivate struct Bucket<Key : Hashable, Value> : CustomDebugStringConvertible {
    var _contents:[(Key, Value)] = []
    
    func index(of key:Key) -> Int? {
        return index { (keyToCheck, _) in key == keyToCheck } //yup, a linear search of the array of pairs. Hash tables are O(n) when many things end up in the same bucket. This can cause a problem in cases where someone malicious can control the keys being set in a hash table. If they can force many collisions, they can cause unexpected massive slowdowns. This can be avoided using, cuckoo hashing (see comment at the bottom), trees, or various other approaches.
    }
    
    func get(key: Key) -> Value? {
        guard let index = index(of: key) else { return nil }
        return self[index].1
    }
    
    mutating func set(_ value:Value?, at index:Int) {
        precondition(index < endIndex)
        if let value = value {
            _contents[index].1 = value //replace the value for this key
        } else {
            _contents.remove(at: index) //I'm always a little dubious about the "set nil to remove" thing, but it's consistent, and it makes things a little simpler for us here
        }
    }
    
    mutating func set(_ value:Value?, for key:Key) {
        if let index = index(of: key) { //if indexOfKey() returns non-nil, then we already have a value for this key in this bucket
            set(value, at: index)
        } else if let value = value {
            _contents.append((key, value)) //not a replacement, and not a removal, so this is either a collision or the initial insert of a value. Either way, we just stick the new pair in
        }
    }
    
    var debugDescription : String {
        return "[" + _contents.map { (key, value) in "\(key) : \(value)" }.joined(separator: ", ") + "]"
    }
}

//It's convenient to be able to treat Buckets like read-only arrays, so we give 'em a RandomAccessCollection conformance
extension Bucket : RandomAccessCollection {
    func index(after i: Int) -> Int {
        return _contents.index(after: i)
    }
    
    func index(before i: Int) -> Int {
        return _contents.index(before: i)
    }
    
    var startIndex: Int {
        return _contents.startIndex
    }
    
    var endIndex: Int {
        return _contents.endIndex
    }
    
    subscript (index:Int) -> (Key, Value) {
        return _contents[index]
    }
}

//A very minimal hash table based Dictionary. Useful extra features are separated out into extensions further down the file so that this part can highlight what the core "this is a dictionary" bit looks like.
public struct MyDictionary<Key : Hashable, Value> {
    fileprivate var _buckets:[Bucket<Key, Value>]
    
    // The main desirable property of a hash table/dictionary is that looking things up in it is usually O(1), i.e. the time to look something up is roughly the same regardless of how many things are in it. This bucketIndex(for:) function is what accomplishes that magic: it quickly (i.e. O(1)) looks up a bucket from a key, with good-but-not-100% probability that different keys will end up in different buckets
    fileprivate func bucketIndex(for key:Key) -> Int {
        /*
            The only requirement for .hashValue is that if two keys are equal, they must have the same hash value.
            Ideally though (i.e. if it's a good implementation of hashValue), when the keys are different, the hash values will also be as different as possible. This lets us return a roughly even distribution of numbers from this function.
            Weirdly, hashValue can be negative in Swift. abs() isn't a great way to handle that, since it means that N and -N won't get different buckets, but it'll do.
        */
        return abs(key.hashValue) % (_buckets.count) //modular arithmetic "wraps around", so we can use it to turn an arbitrarily large hash value into a valid index into our array
    }
    
    //The load factor represents how "full" the hash table is. As it gets more full, the chance of more than one value per bucket (a "collision") increases
    fileprivate var loadFactor : Float {
        return Float(count) / Float(_buckets.count)
    }
    
    fileprivate mutating func expand() { //When the load factor gets high enough, we double the capacity of the table to decrease the number of collisions
        let oldBuckets = _buckets
        _buckets = [Bucket<Key, Value>](repeating:Bucket(), count:oldBuckets.count * 2) //doubling each time is a bit wasteful of memory, but dramatically decreases the amount of time spent resizing the table. You can increase it to save time but cost memory, or decrease it to save memory but cost time
        for bucket in oldBuckets {
            for (key, value) in bucket {
                setWithoutExpanding(value, for: key) //setting everything one by one isn't fast, but we have to re-insert things to figure out where their new positions are
            }
        }
    }

    fileprivate mutating func setWithoutExpanding(_ value:Value?, for key:Key) {
        let index = bucketIndex(for: key) //use the hash % bucket count to figure out which bucket to look in
        _buckets[index].set(value, for: key) //the Bucket struct takes care of handling collisions for us, so we get to just blindly set things in it :)
    }
    
    public var count : Int {
        // Our count is the sum of the counts of all its buckets
        return _buckets.reduce(0) { (runningTotal, bucket) in
            runningTotal + bucket.count
        }
    }
    
    public init<Seq:Sequence>(pairs:Seq) where Seq.Iterator.Element == (Key, Value) {
        let sizeEstimate = Swift.max(pairs.underestimatedCount, 1)
        _buckets = [Bucket](repeating:Bucket(), count:sizeEstimate) //attempt to presize our array so we don't have to resize repeatedly. Not all SequenceType-conforming types know how long they are up front though, so we have to use underestimateCount(). For common ones like Array that will just return the count.
        for (key, value) in pairs {
            self[key] = value
        }
    }
    
    public subscript(key: Key) -> Value? {
        get {
            let bucket = _buckets[bucketIndex(for: key)] //use the hash % bucket count to figure out which bucket to look in
            return bucket.get(key: key) //then search it for the key
        }
        set {
            if loadFactor > 0.75 { //0.75 is an arbitary number. You can increase it to save memory but cost time, or decrease it to save time but cost memory. Try changing it to 1.5 if you want to see the collision handling code run.
                expand()
            }
            setWithoutExpanding(newValue, for: key)
        }
    }
}

// Make print(someMyDictionary) do something useful
extension MyDictionary : CustomDebugStringConvertible {
    public var debugDescription : String {
        let contentsDesc = _buckets.map { $0.debugDescription }.joined(separator: ", ")
        return "MyDictionary(count:\(count), capacity:\(_buckets.count), contents:\(contentsDesc))"
    }
}

// Allow for var foo:MyDictionary<Foo, Bar> = [ a : b, c : d]
extension MyDictionary : ExpressibleByDictionaryLiteral {
    public init(dictionaryLiteral elements: (Key, Value)...) {
        self.init(pairs: elements)
    }
}

public struct MyDictionaryIndex : Comparable {
    fileprivate var bucketIndex:Int
    fileprivate var bucketContentsIndex:Int
    
    public static func ==(lhs:MyDictionaryIndex, rhs:MyDictionaryIndex) -> Bool {
        return lhs.bucketIndex == rhs.bucketIndex && lhs.bucketContentsIndex == rhs.bucketContentsIndex
    }
    
    public static func <(lhs:MyDictionaryIndex, rhs:MyDictionaryIndex) -> Bool {
        if lhs.bucketIndex < rhs.bucketIndex {
            return true
        }
        if lhs.bucketIndex > rhs.bucketIndex {
            return false
        }
        if lhs.bucketContentsIndex < rhs.bucketContentsIndex {
            return true
        }
        return false
    }
}

// Adds support for for(in), map, filter, and a multitude of other handy things
// We could conform to BidirectionalCollection, but it's not clear that things like reverse enumeration are meaningful for a dictionary
extension MyDictionary : Collection {
    //"Start" and "end" are funny concepts on a collection like a dictionary; we don't guarantee stable ordering across mutations, so we just define start/end/iteration order in the most efficient way: whatever order the buckets happened to end up in
    public var startIndex: MyDictionaryIndex {
        return MyDictionaryIndex(bucketIndex: 0, bucketContentsIndex: 0)
    }
    
    public var endIndex: MyDictionaryIndex {
        //This is not ideal for performance, since endIndex is supposed to be O(1), but in practice there will usually be a non-empty bucket fairly near the end of the list, and the isEmpty check is pretty quick
        if let lastNonEmptyBucketIndex = _buckets.lastIndex(where: { !$0.isEmpty }) {
            //our end index is the end index of the last non-empty bucket inside the dictionary
            return MyDictionaryIndex(bucketIndex: lastNonEmptyBucketIndex, bucketContentsIndex: _buckets[lastNonEmptyBucketIndex].endIndex)
        }
        //if no buckets have anything in them, then start == end
        return startIndex
    }
    
    public func index(after i: MyDictionaryIndex) -> MyDictionaryIndex {
        //Bounds checking is done in the subscript implementation
        if i.bucketContentsIndex + 1 == _buckets[i.bucketIndex].endIndex {
            //find the next non-empty bucket
            if let newBucketIndex = _buckets
                .suffix(from: i.bucketIndex + 1)
                .index(where: { !$0.isEmpty }) {
                //Start at the first thing in that bucket
                return MyDictionaryIndex(bucketIndex: newBucketIndex, bucketContentsIndex: 0)
            } else {
                //If there aren't any more non-empty buckets, then we're at the end
                return endIndex
            }
        } else {
            //If the current bucket has more stuff in it, go through that before moving on to the next bucket
            return MyDictionaryIndex(bucketIndex: i.bucketIndex, bucketContentsIndex: i.bucketContentsIndex + 1)
        }
    }

    public subscript(index: MyDictionaryIndex) -> (Key, Value) {
        //Our index struct stores exactly where it's supposed to go, so we can use it to look up the value directly
        return _buckets[index.bucketIndex][index.bucketContentsIndex]
    }
}

var test:MyDictionary = ["a":"b", "cow":"dog", "e":"f", "abc":"def"]
test["foo"] = "bar"
print(test)
test["a"] = "abababa"
let success = test["a"]
let failure = test["NotFound"]
test["foo"] = nil
let shouldBeNil = test["foo"]

for (key, value) in test {
    print(key, value)
}

let test2 = MyDictionary(pairs: test) //Since MyDictionary is a Collection (and therefore Sequence) of pairs, we can use it to construct another MyDictionary… of course that doesn't accomplish anything that simply assigning it wouldn't, since it's a struct, but it is neat that it works :)

let test3 = test2.map { (key, value) in (key, value.uppercased()) } //woo protocol extensions! We get map() for free
for (key, value) in test3 {
    print(key, value)
}

//These two structs demonstrate what happens when you use an ok hash function (XORing each character together isn't great, but it's a lot better than just always returning 7!) vs when you use a terrible one
//Compare in the playground sidebar how often the == function runs for each one. == runs an additional time for each collision as it searches linearly through the bucket.
struct ExampleSoSoKey : Hashable {
    let value:String
    var hashValue:Int {
        return value.utf8.reduce(0, { (result, nextCharacter) in
            return result ^ Int(nextCharacter)
        })
    }
    
    static func ==(lhs:ExampleSoSoKey, rhs:ExampleSoSoKey) -> Bool {
        return lhs.value == rhs.value
    }
}


struct ExampleBadKey : Hashable {
    let value:String
    var hashValue:Int {
        return 7
    }
    
    static func ==(lhs:ExampleBadKey, rhs:ExampleBadKey) -> Bool {
        return lhs.value == rhs.value
    }
}

var soSoDict = MyDictionary<ExampleSoSoKey, Int>()
var badDict = MyDictionary<ExampleBadKey, Int>()

func randomAlphaNumericString(length: Int) -> String {
    
    let allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    let allowedCharsCount = UInt32(allowedChars.characters.count)
    var randomString = ""
    
    for _ in (0..<length) {
        let randomNum = Int(arc4random_uniform(allowedCharsCount))
        let newCharacter = allowedChars[allowedChars.index(allowedChars.startIndex, offsetBy: randomNum)]
        randomString += String(newCharacter)
    }
    
    return randomString
}


for i in 1...40 {
    let str = randomAlphaNumericString(length: 10)
    soSoDict[ExampleSoSoKey(value: str)] = i
    badDict[ExampleBadKey(value: str)] = i
}

/*
There's a ton of things we could improve here…

The "hang a list off of each bucket" approach to dealing with hash collisions is called "separate chaining". There's an alternative scheme called "open addressing" that works by storing a single element in each bucket, and jumping to a new bucket if the first one we try is full (and jumping again if subsequent ones are). This can be significantly more efficient in some cases, since it stores everything in a single flat array. However, there's also some subtleties to it; in particular, how do you decide which bucket to jump to if there's a collision? Popular approaches include:
    • "Linear probing", where you just try the next bucket in the array. This is simple, and makes great use of cpu caches, but is vulnerable to hashValue implementations that mostly return numbers that are very close to each other, since they lead to "clusters" of full buckets with many empty useless buckets between them.
    • "Exponential/quadratic probing", where you skip an increasing number of buckets with each collision. This can avoid some of the places linear probing falls down.
    • "Double hashing", where you find the next bucket to jump to by hashing the previous hash value. This increases the overhead of probing, but can reduce the number of probes by improving distribution.
    • Hybrid schemes like "probe linearly for the size of one cpu cacheline, then do an exponential jump, then linear again, and so on".

Another set of approaches to reducing the cost of collisions is to try to reduce the number of checks (the size of N in O(N)) we have to make for some values, at the expense of slowing down other values. These include cuckoo hashing (https://en.wikipedia.org/wiki/Cuckoo_hashing) and Robin Hood hashing (http://sebastiansylvan.com/2013/05/08/robin-hood-hashing-should-be-your-default-hash-table-implementation/)

Storing the hash value alongside the key can be an easy way to reduce the cost of expand() (since you don't have to call .hashValue again for each element), and can speed up open addressing (since you can check for equal hashValues before calling the potentially slow == implementation of the key)

Some probing schemes work best if the number of buckets is prime, due to the way they "loop around" in their search. For a simple example of why, consider a simple probing scheme that hops over one bucket per check, and the following table:
    
    [empty, collision, empty, collision]
               ^
              start here

    if we start with the second bucket as shown above, then we'll incorrectly conclude that the table is full, and we have to resize. If we had used a count of 5 instead, the "every other bucket" probing scheme would search every slot before concluding it had failed to find an empty one. If you search for "prime" on http://www.opensource.apple.com/source/CF/CF-855.11/CFBasicHash.c you can see one approach to doing this.
*/
