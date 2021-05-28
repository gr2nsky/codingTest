/* main.swift-------------------------------------
 https://www.programmers.co.kr/learn/courses/30/lessons/12912﻿
 두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
 예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.
  - a와 b가 같은 경우는 둘 중 아무 수나 리턴하세요.
  - a와 b는 -10,000,000 이상 10,000,000 이하인 정수입니다.
  - a와 b의 대소관계는 정해져있지 않습니다.
 [comment]
 Array로 배열을 생성할 수 있으며, reduce로 시작값은 0으로 모든 원소를 더했습니다.
Created by 윤재필 on 2021/05/10----------------*/
import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {

    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
}
