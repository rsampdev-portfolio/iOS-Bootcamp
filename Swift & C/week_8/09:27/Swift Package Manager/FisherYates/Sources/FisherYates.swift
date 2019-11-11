import Foundation

#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif

public extension MutableCollectionType where Index == Int {
    mutating func shuffleInPlace() {
        if count <= 1 { return }
        
        for i in 0..<count - 1 {
            #if os(Linux)
                let j = Int(random() % (count - i)) + i
            #else
                let j = Int(arc4random_uniform(UInt32(count - i))) + i
            #endif
            if i == j { continue }
            swap(&self[i], &self[j])
        }
    }
}
