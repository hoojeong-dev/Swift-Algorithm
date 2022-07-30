import Foundation

let N = Int(readLine()!)!

print(factorial(N))

func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    }

    return n * factorial(n - 1)
}