import Foundation

var check = [Bool](repeating: true, count: 10001)


for i in 0...10000 {
    let sum = checkSelfNumber(i)

    if sum < 10001 {
        check[sum] = false
    }
}

for i in 0...10000 {
    if check[i] {
        print(i)
    }
}

func checkSelfNumber(_ number: Int) -> Int {
    var sum = number
    var n = number
    
    while n != 0 {
        sum += n%10
        n /= 10
    }

    return sum
}