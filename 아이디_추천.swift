/* main.swift-------------------------------------
 https://programmers.co.kr/learn/courses/30/lessons/72410
 카카오에 입사한 신입 개발자 네오는 "카카오계정개발팀"에 배치되어,
 카카오 서비스에 가입하는 유저들의 아이디를 생성하는 업무를 담당하게 되었습니다.
 "네오"에게 주어진 첫 업무는 새로 가입하는 유저들이 카카오 아이디 규칙에 맞지 않는 아이디를 입력했을 때,
 입력된 아이디와 유사하면서 규칙에 맞는 아이디를 추천해주는 프로그램을 개발하는 것입니다.
 [comment]
 라이브러리를 엄청나게 뒤졌네요.
 새로 사용한 함수 : isLetter, isNumber, replacingOccurrences, hasPrefix, hasSuffix
Created by 윤재필 on 2021/04/20.----------------*/
import Foundation

func solution(_ new_id:String) -> String {
    var input = new_id
    var result = ""
    
    //1단계 new_id의 모든 대문자를 대응되는 소문자로 치환합니다.
    input = input.lowercased()
    
    //2단계 new_id에서 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.)를 제외한 모든 문자를 제거합니다.
    for i in input{
        if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
            result.append(i)
        }
    }
    
    //3단계 new_id에서 마침표(.)가 2번 이상 연속된 부분을 하나의 마침표(.)로 치환합니다.
    while(result.contains("..")){
        result = result.replacingOccurrences(of: "..", with: ".")
    }
    
    //4단계 new_id에서 마침표(.)가 처음이나 끝에 위치한다면 제거합니다.
    while result.hasPrefix(".") {
        result.removeFirst()
    }
    while result.hasSuffix("."){
        result.removeLast()
    }
    
    //5단계 new_id가 빈 문자열이라면, new_id에 "a"를 대입합니다.
    if result == ""{
        result = "a"
    }
    
    //6단계 new_id의 길이가 16자 이상이면, new_id의 첫 15개의 문자를 제외한 나머지 문자들을 모두 제거합니다.
    //만약 제거 후 마침표(.)가 new_id의 끝에 위치한다면 끝에 위치한 마침표(.) 문자를 제거합니다.
    if result.count >= 16 {
        let index = result.index(result.startIndex, offsetBy: 15)
        result = String(result[result.startIndex..<index])
    }
    if result.hasSuffix("."){
        result.removeLast()
    }
    
    //7단계 new_id의 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 끝에 붙입니다.
    if result.count <= 2 {
        while result.count < 3 {
            result = result + String(result.last!)
        }
    }
    
    return result
}
