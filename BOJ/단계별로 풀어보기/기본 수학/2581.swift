import Foundation

let M = Int(readLine()!)!
let N = Int(readLine()!)!

var prime: [Int] = []
var sum = 0

for i in M...N {

    var checker = true

    if i == 1 {
        checker = false
    } else {
        for j in 2..<i {
            if i % j == 0{
                checker = false
                break
            }
        }
    }

    if checker {
        prime.append(i)
        sum += i
    }
}

if sum == 0{
    print(-1)
} else {
    print("\(sum)\n\(prime[0])")
}