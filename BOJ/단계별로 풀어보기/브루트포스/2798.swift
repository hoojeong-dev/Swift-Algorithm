import Foundation

let N = readLine()!.split(separator: " ").map {
    Int($0)!
}
let cards = readLine()!.split(separator: " ").map {
    Int($0)!
}

var result = 0

for i in 0..<N[0] {
    for j in i+1..<N[0] {
        for k in j+1..<N[0] {
            let temp = cards[i] + cards[j] + cards[k]

            if N[1] >= temp {
                if temp > result {
                    result = temp
                }
            }
        }
    }
}

print(result)