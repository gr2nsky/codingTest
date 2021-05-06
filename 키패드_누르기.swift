/* main.swift-------------------------------------
 https://programmers.co.kr/learn/courses/30/lessons/67256
 문제가 너무 길어 링크를 참조하시기 바랍니다.
 [comment]
 2차원 배열을 쓸까 쓰지말까 하다가 시간을 너무많이 썻습니다.
 쓸거면 쓰고! 안쓰면 안쓰고!
 잘못 선택했다면 다음엔 선택하지 말고!
 겁내지 않고 진행하는 마음가짐이 필요한것 같습니다.
Created by 윤재필 on 2021/05/06.----------------*/
import Foundation

/**
 - Parameters :
 - numbers : 입력할 숫자의 배열
 - hand : 주로 사용하는 손 (right || left)
 */
func solution(_ numbers:[Int], _ hand:String) -> String {
    //결과값은 result를 빈 문자열로 선언하고, 이후 키패드를 누를때 L 또는 R로 더해 구합니다.
    var result: String = ""
    // 왼손, 오른손의 현재 좌표를 나타내는 값입니다. 초기 위치는 *, #이며, 키패드를 누를때마다 갱신됩니다.
    var rightHand = (3, 2)
    var leftHand = (3, 0)
    
    //numbers 전체를 순차루프하며, 숫자는 좌표화 된 후에,
    //y = 0, 무조건 왼손 y = 2는 무조건 오른손으로 치니 분기하고,
    //y = 1일 경우에 왼손과 오른손중 해당 패드와의 거리가 가까운 쪽이 사용하는것으로 조건을 달았습니다.
    for i in numbers {
        let location = (returnLocation(i))
        switch location.1 {
        case 0:
            leftHand = location
            result += "L"
            continue
        case 2:
            rightHand = location
            result += "R"
            continue
        default:
            let intervalRightHand = intervalToHand(location, rightHand)
            let intervalLeftHand = intervalToHand(location, leftHand)
            if intervalLeftHand > intervalRightHand  {
                rightHand = location
                result += "R"
            } else if intervalLeftHand < intervalRightHand {
                leftHand = location
                result += "L"
            } else {
                if hand == "right" {
                    rightHand = location
                    result += "R"
                } else {
                    leftHand = location
                    result += "L"
                }
            }
        }
    }
    
    return result
}

//키패드의 좌표값으로 변환된 숫자 Location과 현재 손과의 거리를 계산해 반환해줍니다.
func intervalToHand(_ location: (Int, Int), _ hand: (Int, Int)) -> Int{
    let intervalX = abs(location.0 - hand.0)
    let intervalY = abs(location.1 - hand.1)
    
    return intervalX + intervalY
}

//정수를 받아 키패드를 참조한 좌표값으로 변환해 반환합니다.
// 123 456 789 *0# 에서 1(0,0)을 기준으로 3(0,2), 9(2,2)입니다.
func returnLocation(_ num: Int) -> (Int, Int){
    var x: Int
    var y: Int
    
    if (num == 0) {
        return (3, 1)
    }
    
    switch num {
    case 1...3:
        x = 0
    case 4...6:
        x = 1
    case 7...9:
        x = 2
    default:
        x = 999
    }
    
    switch num%3 {
    case 1:
        y = 0
    case 2:
        y = 1
    case 0:
        y = 2
    default:
        y = 999
    }
    
    return (x, y)
}


