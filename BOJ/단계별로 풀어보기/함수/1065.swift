import Foundation

let N = Int(readLine()!)!
var count: Int = 0

for i in 1...N {
    if checkHanSu(i) {
        count += 1
    }
}

print(count)

func checkHanSu(_ number: Int) -> Bool {
    
    if number < 10 {
        return true
    }

    var num = number
    let d = num%10 - (num%100)/10 // 등차
    var n = num%10                // 1의 자리 수

    num /= 10

    while num > 0 {
        if d != n - num%10 {
            return false
        }

        n = num%10
        num /= 10
    }

    return true

}