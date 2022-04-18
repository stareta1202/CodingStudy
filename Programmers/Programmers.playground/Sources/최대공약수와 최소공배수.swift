import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    var a = GCD(n, m)
    var b = LCM(n, m)
    return [a, b]
}

func GCD(_ min: Int, _ max: Int) -> Int {
    let remain = min % max
    if remain == 0 {
        return max
    } else {
        return GCD(max, remain)
    }
}

func LCM(_ n: Int, _ m: Int) -> Int {
    return n * m / GCD(n,m)
}
