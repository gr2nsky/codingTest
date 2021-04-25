/* main.swift-------------------------------------
 https://programmers.co.kr/learn/courses/30/lessons/12982/solution_groups?language=swift
 어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다.
 예를 들어 "AB"는 1만큼 밀면 "BC"가 되고, 3만큼 밀면 "DE"가 됩니다.
 "z"는 1만큼 밀면 "a"가 됩니다.
 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.
 [comment]
 1. 대문자 / 소문자를 구분한다.
 2. n을 더한 후 '몇 번째' 알파벳인지 unicode scalar를 활용해 계산한다.
 3. 계산 결과를 다시 unicode scalar로 변환한다.
 4. 변환된 unicode scalar에 대응하는 character들을 String으로 변환해 출력한다.
Created by 윤재필 on 2021/04/25.----------------*/
import Foundation

//for문 사용
func solution(_ s:String, _ n:Int) -> String {
    var str = ""
    
    for codeUnit in s.unicodeScalars {
        var temp = 0;
        let charToUnicode = Int(codeUnit.value)
        
        switch charToUnicode{
        case 65...90:
            temp = (charToUnicode - 65 + n) % 26 + 65
        case 97...122:
            temp = (charToUnicode - 97 + n) % 26 + 97
        default:
            temp = 32
        }
        
        str += String(Character.init(Unicode.Scalar.init(temp)!))
    }
    
    return str
}

//for 대신 map 사용
func solution2(_ s:String, _ n:Int) -> String {
    
    let chars = s.unicodeScalars.map{ charToUnicode -> Int in
        let temp = Int(charToUnicode.value)
        switch temp{
        case 65...90:
            return (temp - 65 + n) % 26 + 65
        case 97...122:
            return (temp - 97 + n) % 26 + 97
        default:
            return 32
        }
    }
    .map{Unicode.Scalar.init($0)!}
    .map{Character.init($0)}
    
    return String(chars)
}

