import Foundation

let test = Int(readLine()!)!
var size = Array(repeating: Array(repeating: 0, count: 2), count: test)
var count = Array(repeating: 1, count: test)

for i in 0..<test {
    size[i] = readLine()!.split(separator: " ").map{ Int($0)! }
}

for i in 0..<test {
    for j in 0..<test {
        if size[i][0] < size[j][0] && size[i][1] < size[j][1] {
            count[i] += 1
        }
    }
}

for i in 0..<test {
    print("\(count[i])", terminator: " ")
}