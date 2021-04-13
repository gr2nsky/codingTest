/*
 main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12932
   자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요.
  예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.
  [comment]
  swift5에 추가된 character 속성인 wholeNumberValue를 사용해 보았습니다.
  정수를 캐릭터로 형변환 후 뒤집어서 wholeNumberValue로 정수로 반환했습니다.
  Created by 윤재필 on 2021/04/05.----------------
*/
import Foundation


print( solution(12345) )

func solution(_ n:Int64) -> [Int] {
    var str: [Character] = Array( String(n) )
    str = str.reversed()
    
    return	str.map{$0.wholeNumberValue!}
}
