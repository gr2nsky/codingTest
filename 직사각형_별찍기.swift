/* main.swift-------------------------------------
 https://programmers.co.kr/learn/courses/30/lessons/12969
 이 문제에는 표준 입력으로 두 개의 정수 n과 m이 주어집니다.
 별(*) 문자를 이용해 가로의 길이가 n, 세로의 길이가 m인 직사각형 형태를 출력해보세요.
 [comment]
Created by 윤재필 on 2021/04/19.----------------*/
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for i in 0..<b {
    for j in 0..<a{
        print("*", terminator: "")
    }
    print()
}

print("--------------------")

var starArr = Array(repeating: Array(repeating: "*", count: a), count: b)

for i in 0..<b{
    print(starArr[i].reduce(""){$0 + $1})
}

for _ in 0..<b {
    print(Array(repeating: "*", count: a).joined())
}
