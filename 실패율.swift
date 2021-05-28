/* main.swift-------------------------------------
 https://programmers.co.kr/learn/courses/30/lessons/42889
 실패율은 다음과 같이 정의한다.
 스테이지에 도달했으나 아직 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어 수
 전체 스테이지의 개수 N,
 게임을 이용하는 사용자가 현재 멈춰있는 스테이지의 번호가 담긴 배열 stages가 매개변수로 주어질 때,
 실패율이 높은 스테이지부터 내림차순으로 스테이지의 번호가 담겨있는 배열을 return 하도록 solution 함수를 완성하라.
 [comment]
 1. stages를 오름차순으로 정렬해 낮은단계의 실패율부터 구하도록 한다.
 2. 실패율은 클리어 못한 사람 / 도달한 사람 이므로, 낮은 스테이지부터 구해야 한다.
 3. 탐색은 n : 0...N으로 돌아 n == stages으로
 4. 아니지, N + 1개의 정수배열을 만들어서 stages를 for-each로 돌려서 해당하는 인덱스에 +를 하자.
 5. 그리고 배열을 오름차순으로 순회해 최초 실패율은 1스테이지 클리어 못한사람 / stages.count로 구하고 이를 a라 하면,
 6. 2스테이지의 실패율은 2스테이지 클리어 못한사람 / stages.count - a, 이런식으로 쭉쭉
 7. 도달한 유저가 없거나 모두가 클리어했다면 실패율은 0 이다.
 8. 실패율 선서대로 내림차순 정렬을 하고, 중복된 스테이지는 '낮은'스테이지가 먼저 오도록 한다.
 9. '낮은' 스테이지가 먼저 오므로, 값으로 정렬해 해당값을 firstIndex로 탐색하면 될 듯 하다.
 프로그래머스 통과 안되길래 userStopedStages[i] = 0이면 stageToCountStopped[i] = 0세팅 후 continue. 역시나 이거였다
Created by 윤재필 on 2021/05/06.----------------*/
import Foundation

solution(5, [2, 1, 2, 6, 2, 4, 3, 3])

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    //실패율 연산시 연산마다 형변환을 하지 않도록 미리 형변환
    var countedPlayingUsers: Double = Double(stages.count)
    var userStopedStages: [Double] = Array(repeating: 0, count: N + 1)
    var failRatioByStage: [Double] = Array(repeating: 0.0, count: N)
    var result: [Int] =  Array(repeating: 0, count: N)
    
    for i in stages {
        userStopedStages[i - 1] += 1
    }
    
    for i in 0..<result.count {
        if userStopedStages[i] == 0 {
            failRatioByStage[i] = 0
            continue
        }
        failRatioByStage[i] = userStopedStages[i] / countedPlayingUsers
        countedPlayingUsers -= userStopedStages[i]
    }
    
    var tempArr = failRatioByStage.sorted(by: >)
    for i in 0..<tempArr.count{
        result[i] = failRatioByStage.firstIndex(of: tempArr[i])!
        failRatioByStage[result[i]] = -1
    }
    
    return result.map{ $0 + 1 }
}
