import Foundation

let X = readLine()!.split(separator: " ").map {
    Int($0)!
}

var prime = [Bool](repeating: true, count: X[1]+1)
prime[1] = false

for i in 2...X[1] {
    if !prime[i] { continue }

    for j in stride(from: i + i, through: X[1], by: i) {
        prime[j] = false
    }
}

for i in X[0]...X[1] {
    if prime[i] {
        print(i)
    }
}