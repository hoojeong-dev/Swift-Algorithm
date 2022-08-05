import Foundation

let N = Int(readLine()!)!
var result = 0

for i in 0...N {
    var number = i
    var sum = 0

    while(number != 0) {
        sum += number%10
        number /= 10
    }

    if i + sum == N {
        result = i
        break
    }
}

print(result)