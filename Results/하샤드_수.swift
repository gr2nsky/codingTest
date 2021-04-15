/* main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12947
 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다.
 예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수입니다.
 자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, solution을 완성해주세요.
  [comment]
 배열에서 반복문을 대체할 고차함수가 있다면 사용을 고려해보는 자세가 필요힙니다.
  Created by 윤재필 on 2021/04/13.---------------- */

import Foundation

func solution(_ x:Int) -> Bool {
    var sum = 0
    var temp = x
    while(temp > 0) {
        sum += temp % 10
        temp /= 10
    }
    return x % sum == 0 ? true : false
}

func solution2(_ x: Int) -> Bool {
    
    var sum = String(x).map{Int(String($0))!}.reduce(0, +)
    
    return x % sum == 0
}

func slution3(_ x: Int) -> Bool {
    return x % String(x).reduce(0, {$0 + Int(String($1))!}) == 0
}
