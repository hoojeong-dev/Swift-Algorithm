import Foundation

let n = readLine()!.split(separator: " ").map {
    Double($0)!
}

let result = ceil((n[2] - n[1]) / (n[0] - n[1]))

print(Int(result))
