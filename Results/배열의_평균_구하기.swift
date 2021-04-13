/* main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12944
 정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요
  [comment]
     reduce를 활용해 코드를 최대한 줄여보았습니다.
  Created by 윤재필 on 2021/04/13.---------------- */

import Foundation

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0,+))/Double(arr.count)
}
