/*
 main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12937
 정수 num이 짝수일 경우 "Even"을 반환하고 홀수인 경우 "Odd"를 반환하는 함수, solution을 완성해주세요.
  [comment]
 입력받은 수와 2의 나머지연산의 결과값으로 짝수 홀수를 판별하였습니다.
 if문 대신 삼항연산자를 사용해 코드의 직관성을 높여 작성하였습니다.
  Created by 윤재필 on 2021/04/09.----------------
*/
import Foundation

func solution(_ num:Int) -> String {
    return num % 2 == 0 ? "Even" : "Odd"
}
