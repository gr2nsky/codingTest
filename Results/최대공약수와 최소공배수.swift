/*
 main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12940
 두 수를 입력받아 두 수의 최대공약수와 최소공배수를 반환하는 함수, solution을 완성해 보세요.
 배열의 맨 앞에 최대공약수, 그다음 최소공배수를 넣어 반환하면 됩니다.
 예를 들어 두 수 3, 12의 최대공약수는 3, 최소공배수는 12이므로
 solution(3, 12)는 [3, 12]를 반환해야 합니다.
  [comment]
    재귀함수를 활용해 보았습니다.
  Created by 윤재필 on 2021/04/11.----------------
*/
import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    var result =  [Int]()
    let min = n >= m ? m : n
    let max = min == n ? m : n
    
    return [GCD(min, max), LCM(min, max)]
}
func GCD(_ min: Int, _ max: Int) -> Int {
    let remain = min % max
    return remain == 0 ? max : GCD(max, remain)
}

func LCM(_ a: Int, _ b:Int) -> Int {
    return a * b / GCD(a,b)
}
