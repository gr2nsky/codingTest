//  main.swift-------------------------------------
//  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12928
//  정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
//  단, n은 0이상 3000이하인 정수입니다.
//  [comment]
//  Array(1...n).filter{n % $0 == 0}.reduce(0,+) 분석할 것
//  Created by 윤재필 on 2021/04/01.----------------

import Foundation

func solution(_ n:Int) -> Int {
    var sum: Int = 0
    var num: Int = 1

    while(num <= n){
        if n % num == 0 {
            sum += num
        }
        num += 1
    }
    return sum
}
