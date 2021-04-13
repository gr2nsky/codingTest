/*
 main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12934
 임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지 판단하려 합니다.
 n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴하고, n이 양의 정수 x의 제곱이 아니라면
 -1을 리턴하는 함수를 완성하세요.
  [comment]
입력받은 n을 sqrt함수로 제곱근을 구해 int로 형변환시켜
 다시 곱해 입력받은 값과 같은지를 비교합니다.
  Created by 윤재필 on 2021/04/07.----------------
*/
import Foundation

print(solution(121))
print(solution(3))
print(solution(43614361))


func solution(_ n:Int64) -> Int64 {
    var sqrtN: Int64 = Int64( sqrt( Double(n) ) )
    
    return sqrtN * sqrtN == n ? (sqrtN+1) * (sqrtN+1) : -1
}
