import Foundation

let N = Int(readLine()!)!
let prime = readLine()!.split(separator: " ").map {
    Int($0)!
}
var result = 0

for x in prime {

    var checker = true

    if x == 1 {
        checker = false
    } 
    else {
        for j in 2..<x {
            if x % j == 0{
                checker = false
                break;
            }
        }
    }

    if checker {
        result += 1
    }
}

print(result)