import Foundation

let N = Int(readLine()!)!
var count = 0

func hanoiCount(_ n: Int) -> Int {

    if n == 1 {
        return 1
    } else {
        return hanoiCount(n-1) * 2 + 1
    }
}

func hanoi(_ n: Int, _ start: Int, _ end: Int) {

    if n == 1 {
        print("\(start) \(end)")
        return
    }
    
    hanoi(n-1, start, (6 - start - end))
    print(start, end)
    hanoi(n-1, (6 - start - end), end)
}

print(hanoiCount(N))
hanoi(N, 1, 3)