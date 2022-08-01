import Foundation

let N = Int(readLine()!)!

var underLine: String = "____"
var list: [String] = [
    "어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.",
    "\"재귀함수가 뭔가요?\"",
    "\"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.",
    "마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.",
    "그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.\"",
    "\"재귀함수는 자기 자신을 호출하는 함수라네\"",
    "라고 답변하였지."
]

print(list[0])
chatBot(0)


func chatBot(_ count: Int) {
    
    print(String(repeating: underLine, count: count) + list[1])

    if count == N {
        print(String(repeating: underLine, count: count) + list[5])
        print(String(repeating: underLine, count: count) + list[6])

        return
    }

    print(String(repeating: underLine, count: count) + list[2])
    print(String(repeating: underLine, count: count) + list[3])
    print(String(repeating: underLine, count: count) + list[4])

    chatBot(count + 1)

    print(String(repeating: underLine, count: count) + list[6])
}