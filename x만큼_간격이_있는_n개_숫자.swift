/* main.swift-------------------------------------
 https://programmers.co.kr/learn/courses/30/lessons/12954
 함수 solution은 정수 x와 자연수 n을 입력 받아,
 x부터 시작해 x씩 증가하는 숫자를 n개 지니는 리스트를 리턴해야 합니다.
 다음 제한 조건을 보고, 조건을 만족하는 함수, solution을 완성해주세요.
    - x는 -10000000 이상, 10000000 이하인 정수입니다.
    - n은 1000 이하인 자연수입니다.
 [comment]
 Array로 처음에 빈 배열을 만들려다가...
 범위가 확실히 주어져 있는데 빈 배열을 만들 필요가 있을까 싶어서
 Array(1...n)으로 배열을 만들었습니다.
 그리고 For문으로 x만큼 곱하려고 하다가,
 map으로 표현하면 손쉽게 한줄로 표현할 수 있을거 같다! 해서
 이렇게 작성했습니다.
Created by 윤재필 on 2021/04/09.----------------*/
import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map{Int64($0 * x)}
}
