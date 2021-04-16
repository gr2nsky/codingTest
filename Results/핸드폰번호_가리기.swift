/* main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12948
    프로그래머스 모바일은 개인정보 보호를 위해 고지서를 보낼 때 고객들의 전화번호의 일부를 가립니다.
    전화번호가 문자열 phone_number로 주어졌을 때, 전화번호의 뒷 4자리를 제외한 나머지 숫자를
    전부 *으로 가린 문자열을 리턴하는 함수, solution을 완성해주세요.
  [comment]
    String에서 []를 사용해 인덱스로 원소에 접근하는 방법은 불가하지만,
    index 메서드를 사용해 인덱스에 접근하는것은 가능합니다.
    그리고 String(repeating: String, count: Int)를 사용해 별을 찍고,
    접미사를 가져오는 suffix(_:int)를 사용해 뒤에서 4번째까지의 문자열값을
    가져오는 방법도 있습니다.
  Created by 윤재필 on 2021/04/15.---------------- */

import Foundation

func solution(_ phone_number:String) -> String {
    let result: [Character] = Array(repeating: "*", count: phone_number.count - 4)
    let startIndex = phone_number.index(phone_number.endIndex, offsetBy: -4)
    let endIndex = phone_number.index(phone_number.endIndex, offsetBy: 0)
    let subString = phone_number[startIndex..<endIndex]
    return "\(String(result))"+"\(String(subString))"
}

func solution2(_ phone_number:String) -> String {
    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
}
