/* main.swift-------------------------------------
 https://programmers.co.kr/learn/courses/30/lessons/76501
 어떤 정수들이 있습니다. 이 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와
 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다.
 실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.
 [comment]
 solution 1~3은 축약의 진행입니다.
 처음에 for문을 사용했다가 두번째엔 map과 reduce로 for문을 사용하지 않았고,
 마지막에는 count변수까지 사용하지 않는 방법으로 진행을 해 보았습니다
Created by 윤재필 on 2021/04/26.----------------*/
import Foundation

print( solution2([4,7,12], [true,false,true]) );

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum = 0
    
    for i in 0..<absolutes.count {
        sum += signs[i] == true ? absolutes[i] : -absolutes[i]
    }
    
    return sum
}


func solution2(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var count = -1
    
    return absolutes.map{
        count += 1
        return signs[count] == true ? $0 : -$0
    }.reduce(0, +)
}

func solution3(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return (0..<absolutes.count).map {
        signs[$0] ? absolutes[$0] : -absolutes[$0]
    }.reduce(0, +)
}


