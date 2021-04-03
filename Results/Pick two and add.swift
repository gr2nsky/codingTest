/*
 main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/68644
 정수 배열 numbers가 주어집니다.
 numbers에서 서로 다른 인덱스에 있는 두 개의 수를 뽑아 더해서
 만들 수 있는 모든 수를 배열에 오름차순으로 담아 return 하도록 solution 함수를 완성해주세요.
  [comment]
  이전에 풀었던건데 업로드차 다시 풀어봤습니다.
  Created by 윤재필 on 2021/04/03.----------------
*/
import Foundation


func solution(_ numbers:[Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0 ..< numbers.count{
        for j in i + 1 ..< numbers.count{
            let num = numbers[i] + numbers[j]
            if !result.contains(num){
                result.append(num)
            }
        }
    }
    
    return result.sorted()
}
