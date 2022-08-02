import Foundation

let N = Int(readLine()!)!

func printStar(count: Int, pattern: [String]) {

    if count == 1 {
        pattern.forEach{ print($0) }
        return
    }

    let row1: [String] = pattern.map{ $0 + $0 + $0 }
    let row2: [String] = pattern.map{ $0 + String(repeating: " ", count: $0.count) + $0 }
    let newPattern: [String] = row1 + row2 + row1

    printStar(count: count/3, pattern: newPattern)
}

printStar(count: N, pattern: ["*"])