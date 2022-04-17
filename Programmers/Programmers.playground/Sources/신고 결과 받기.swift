import Foundation
import UIKit

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var result = Array(repeating: 0, count: id_list.count)
    var answer: [Int] = Array(repeating: 0, count: id_list.count)
    var resultDictionary: [String:Set<String>] = [:]
    var willReportedAnswerList: [String] = []
    for i in report {
        let _report = i.split(separator: " ")
        if resultDictionary[String(_report[0])] == nil {
            resultDictionary[String(_report[0])] = .init()
        }
        resultDictionary[String(_report[0])]?.insert(String(_report[1]))
    }

    for (i, v) in id_list.enumerated() {
        for j in resultDictionary {
            if j.value.contains(v) {
                result[i] += 1
            }
        }
    }

    print(result)
    print(resultDictionary)
    for (i, v) in result.enumerated() {
        if v >= k {
            willReportedAnswerList.append(id_list[i])
        }
    }
    print(willReportedAnswerList)
    for (i, v) in id_list.enumerated() {
        for j in willReportedAnswerList {
            if let dic = resultDictionary[v], dic.contains(j) {
                answer[i] += 1

            }
        }
    }
    
    
    return answer
}


//solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2)
