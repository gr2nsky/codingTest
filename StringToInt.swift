/*
 작성 : 2021.3.31
 작성자 : greensky
 기능 : 문자열 s를 받아 정수로 변환한다.
 comment : .
 */


import Foundation

var a = "0123"
print(Int(a))

/**
 - Parameter s : 1~5길이의 문자열이고 맨 앞에 부호 (+, -)가 올 수 있습니다. 부호 및 숫자루면 이루어지고, 0으로 시작하지 않습니다.
 문자열 s를 받아 숫자로 변환합니다.
 
 문자열을 받아 정수로 변환해 출력합니다.
 */
func solution(_ s:String) -> Int {
    //변환을 할 첫번째 인덱스 주소. 부호가 있다면 1부터 시작합니다.
    var sign = 1
    //문자열을 배열연산을 할 수 있도록 character배열로 변환
    var chars: [Character] = Array(s)
    
    //부호가 존재한다면, 해당 부호값을 저장(+: 1, -: -1)하고 배열에서 제외
    if chars[0] == "+"{
        chars[0] = "0"
        sign = 1
    } else if chars[0] == "-" {
        chars[0] = "0"
        sign = -1
    }
    //출력
    return Int(String(chars))!*sign
}
