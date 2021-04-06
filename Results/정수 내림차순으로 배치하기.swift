/*
 main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12933
 함수 solution은 정수 n을 매개변수로 입력받습니다. n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 예를들어 n이 118372면 873211을 리턴하면 됩니다.
  [comment]
Array(String(n).sorted{ $0 > $1 }로 간략화가 가능했었다.
 이걸 다시 string으로 형변환하고 Int64로 형변환 하면 됬었다.
 char까진 좀 ㅎ
  Created by 윤재필 on 2021/04/06.----------------
*/
import Foundation

func solution(_ n:Int64) -> Int {
    var str: [Character] = Array( String(n) )
    str.sort(by: >)
    
    return Int( String(str) )!
}
