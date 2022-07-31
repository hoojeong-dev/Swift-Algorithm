import Foundation

let N = Int(readLine()!)!

print(fibonacci(N))

func fibonacci(_ n: Int) -> Int {
    if n <= 1 { return n }

    return fibonacci(n-1) + fibonacci(n-2)
}