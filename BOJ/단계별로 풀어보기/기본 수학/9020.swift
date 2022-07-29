import Foundation

let N = Int(readLine()!)!

for _ in 1...N {
    let x = Int(readLine()!)!
    
    var checker = [Bool](repeating: true, count: x + 1)
    var prime: [Int] = []

    for i in 2...x {
        if !checker[i] { continue }

        for j in stride(from: i + i, through: x, by: i) {
            checker[j] = false
        }

        if checker[i] {
            prime.append(i)
        }
    }

    let mid = x / 2
    var min_idx = 0
    var max_idx = 0

    for i in 0...prime.count {
        
        if prime[i] == mid {
            if mid * 2 == x {
                prime.removeAll()
                break
            }
        }
        
        if prime[i] > mid {
            max_idx = i
            min_idx = i-1

            break
        }
    }

    if prime.isEmpty {
        print("\(mid) \(mid)")
        continue
    }

    while true {
            
        if prime[min_idx] + prime[max_idx] > x {
            min_idx -= 1
        }

        else if prime[min_idx] + prime[max_idx] < x {
            max_idx += 1
        }

        else if prime[min_idx] + prime[max_idx] == x {
            print("\(prime[min_idx]) \(prime[max_idx])")
            break
        }
    }
}