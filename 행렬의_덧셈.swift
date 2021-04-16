/* main.swift-------------------------------------
  codingTest - https://programmers.co.kr/learn/courses/30/lessons/12950
    행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다.
    2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요
  [comment]
  첫번째 방법으론,
 입력받은 배열의 크기만큼 새 배열을 만들고
 2중포문으로 입력받은 배열들의 자리의 합을 더한 결과를 새 배열에 입력해
 행렬의 덧셈을 수행하였습니다.
 
  두번쨰 고차함수를 사용한 방법은 블로그에 로그를 찍어 자세한 설명을 기입해뒀습니다.
 https://greensky0026.tistory.com/95
Created by 윤재필 on 2021/04/16.---------------- */

import Foundation

var arr1:[[Int]] = [[1,2],[2,3]]
var arr2:[[Int]] = [[3,4],[5,6]]

print(solution2(arr1, arr2))

func solution1(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var result: [[Int]] = Array(repeating: [0], count: arr1.count)
    
    for i in 0..<arr1.count {
        var temp: [Int] = Array(repeating: 0, count: arr1[i].count)
        for j in 0..<arr1[i].count{
            temp[j] = arr1[i][j] + arr2[i][j]
        }
        result[i] = temp
    }
    
    
    return result
}

func solution2(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    print( zip(arr1, arr2) )
    print("--------------------------------------")
    print( zip(arr1, arr2).map{zip($0,$1)} )
    print("--------------------------------------")
    print(zip(arr1, arr2).map{zip($0,$1).map{$0+$1}})
    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
}
