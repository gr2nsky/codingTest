/* main.swift-------------------------------------
 https://programmers.co.kr/learn/courses/30/lessons/77484
6개 : 1등, 5개 : 2등 , ... , 2개 5등 , 외 낙첨
 [comment]
 1. 각 원소 정렬 (+ 0제외 및 카운트 저장)
 2. win_num이 lottos에 얼마나 있는지 countedWins에 저장
 3. 0이  win_nums일 경우 / 아닐경우로 등수 책정 후 반환
 이중 for문을 사용하지만, 그나마 좀 효율적으로 돌릴수 있기 하기 위해서 정렬을 먼저 실행했습니다.
 이후 0(알아보지못하는 번호)는 식별후 바로 continue로 낭비없이 빠르게 다음 단계로 넘어가도록 하였습니다.
 lottos가 win_nums에 존재한다면 countedWins에 기록이 되고, 0은 countedZero에 기록되게 됩니다.
 마지막 정답을 출력하는 부분은 switch-case문으로 당첨등수를 분기하였습니다.
Created by 윤재필 on 2021/05/03.----------------*/
import Foundation

print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]));

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var countedWins = 0;
    var countedZero = 0
    var sortedWinNum = win_nums.sorted(by: <)
    var sortedLottos = lottos.sorted(by: <)
    
    for i in sortedLottos {
        if i == 0 {
            countedZero += 1
            continue
        }
        for j in sortedWinNum {
            if i == j {
                countedWins += 1
            }
        }
    }
    
    return [winRank(countedWins + countedZero), winRank(countedWins)]
}

func winRank(_ countedWinNumber: Int) -> Int{
    switch countedWinNumber {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}
