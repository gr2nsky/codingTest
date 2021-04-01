//
//  main.swift
//  testProject
//
//  Created by 윤재필 on 2021/03/25.
//

import Foundation

//1. 2부터 n까지의 수를 나열한다.
//2. 2는 소수이므로, 이후 2의 배수를 모두 지운다.
//3. 지워지지 않은 다음 수의 배수를 모두 지운다.
//4. n의 제곱근전의 최대 소수까지 반복해준다.

func solution(_ n:Int) -> Int {
    var primeCount = 0
    var arr:[Int] = Array(repeating: 0, count: n+1)
    
    for i in 2...n{
        arr[i] = i
    }
    
    for i in 2...n {
        if arr[i] == 0 {
            continue
        }
        var j = i + i
        while j <= n {
            arr[j] = 0
            j += i
        }
        
    }
    
    for i in 2...n {
        if arr[i] != 0{
            primeCount += 1
        }
    }
    
    return primeCount
}
