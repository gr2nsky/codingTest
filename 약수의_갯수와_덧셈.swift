/* main.swift-------------------------------------
 https://programmers.co.kr/learn/courses/30/lessons/77884
 두 정수 left와 right가 매개변수로 주어집니다.
 left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고,
 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.
 (단, 1 ≤ left ≤ right ≤ 1,000)
 [comment]
 1. 범위는 left ~ right
 2. 약수의 개수를 구하는 로직 필요
 3. 위 로직의 결과를 바탕으로 계산해 정수를 반환
Created by 윤재필 on 2021/05/28----------------*/
import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result: Int = 0
    
    if left == right {
        if numOfDivisor(left) % 2 == 0{
            return left
        } else {
            return right
        }
    }
    
    for i in left...right{
        if  numOfDivisor(i) % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    
    return result
}

func numOfDivisor(_ input: Int) -> Int{
    if(input == 1){
        return 1
    }
    var count: Int = 1
    for i in 2...input{
        if input % i == 0 {
            count += 1
        }
    }
    return count
}
