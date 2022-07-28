import Foundation

var n = Int(readLine()!)!
var i = 0

var checker = [Bool](repeating: true, count: n + 1)
var prime: [Int] = []

if n == 1 { print("") }

else {
    for i in 2...n {
        if !checker[i] { continue }

        for j in stride(from: i + i, through: n, by: i) {
            checker[j] = false
        }
    }

    for i in 2...n {
        if checker[i] { prime.append(i) }
    }

    while n != 1 {
        if n % prime[i] == 0 {
            n = n / prime[i]
            print(prime[i])
        } else {
            i += 1
        }
    }
}