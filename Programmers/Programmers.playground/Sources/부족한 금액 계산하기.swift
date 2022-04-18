import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer: Int64 = 0
    var resultPrice: Int64 = 0
    
    
    for i in 0 ..< count {
        resultPrice += Int64((i + 1) * price)
        print(resultPrice)
    }
    
    answer = Int64(money) - Int64(resultPrice)
    if answer < 0 {
        answer = abs(answer)
    }
    
    return answer
}

print(solution(3, 20, 4))
