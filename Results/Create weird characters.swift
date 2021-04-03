/*
 main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12930
    정수 n을 입력받아 문자열 s는 한 개 이상의 단어로 구성되어 있습니다.
    각 단어는 하나 이상의 공백문자로 구분되어 있습니다.
    각 단어의 짝수번째 알파벳은 대문자로, 홀수번째 알파벳은 소문자로 바꾼 문자열을 리턴하는 함수,
    solution을 완성하세요.
  [comment]
  String에 배열연산이 불가능할줄알았더니 그런가도 아니네...?
  Created by 윤재필 on 2021/04/03.----------------
*/
import Foundation

func solution(_ s:String) -> String {
    var result: String = ""
    let arr = s.components(separatedBy: " ")
    
    for i in 0..<arr.count{
        if i != 0{
            result += " "
        }
        for j in 0..<arr[i].count{
            var index = arr[i].index(arr[i].startIndex, offsetBy: j)
            if j % 2 == 0 {
                result += String(arr[i][index]).uppercased()
            } else {
                result += String(arr[i][index]).lowercased()
            }
        }
    }
    return result
}
