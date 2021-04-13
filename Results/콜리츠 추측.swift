/* main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12943
     1-1. 입력된 수가 짝수라면 2로 나눕니다.
     1-2. 입력된 수가 홀수라면 3을 곱하고 1을 더합니다.
     2. 결과로 나온 수에 같은 작업을 1이 될 때까지 반복합니다.
     위 작업을 몇 번이나 반복해야하는지 반환하는 함수, solution을 완성해 주세요.
     단, 작업을 500번을 반복해도 1이 되지 않는다면 –1을 반환해 주세요.
  [comment]
     재귀함수를 쓸까 하다가, 작업횟수가 최대 500번인것을 보고
    for문이 가장 알맞다 생각해 for문으로 구현하였습니다.
     반복회수제한없이 1이 나올때까지 무한히 돌린다면, 작업횟수 제한이 넘는 순간
    바로 리소스 낭비이기 때문에, 정확히 루프횟수를 안다면
    가장 직관적인 코드는 for문이기 때문입니다.
  Created by 윤재필 on 2021/04/12.---------------- */

import Foundation

func solution(_ num:Int) -> Int {
    var x: Int = num
    
    if num == 1 {
        return 0
    }
    
    for i in 0..<500{
        x = x % 2 == 0 ? (x / 2) : (x * 3) + 1
        
        if x == 1 {
            return i + 1
        }
    }
    
    return -1
}
