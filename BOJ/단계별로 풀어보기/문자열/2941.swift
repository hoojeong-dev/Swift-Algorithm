import Foundation

var string = readLine()!
let alphabet: [String] = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

for i in alphabet {
    string = string.replacingOccurrences(of: i, with: "A")
}

print(string.count)