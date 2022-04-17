import UIKit
import Foundation

func solution(_ new_id:String) -> String {
    var id = first(new_id)
    var _id = id.second()
//    print(_id)
    var __id = _id.third()
//    print(__id)
    var ___id = __id.fourth()
//    print(___id)
    var ____id = ___id.fifth()
//    print(____id)
    var _____id = ____id.sixth()
//    print(_____id)
    seventh(&_____id)
    var a = _____id.joined(separator: "")
    return a
}

private func first(_ id: String) -> [String] {
    id.map { character in
        character.lowercased()
    }
}


fileprivate extension Array where Element == String {
    mutating func second() -> [Element] {
        let new = self.filter { element in
            if element == "-"
                || element == "_"
                || element == "."
                || (Character(element).asciiValue! > 47 && Character(element).asciiValue! <= 57)
                || (Character(element).asciiValue! >= 97 && Character(element).asciiValue! <= 122) {
                return true
            } else {
                return false
            }
        }
        return new
    }
    
    mutating func third() -> [Element] {
        var _array: Array<String?> = self
        for i in 0 ..< self.count - 1  {
            if _array[i] == _array[i + 1] {
                _array[i] = nil
            }
        }
        let a = _array.compactMap({ $0 })
        
        return a
    }
    
    mutating func fourth() -> [Element] {
        var _array: Array<String?> = self
        if let first = _array[0], first == "." {
            _array.remove(at: 0)
        }
        guard _array.count != 0 else { return [] }
        if let last = _array[_array.count - 1], last == "." {
            _array.remove(at: _array.count - 1)
        }
        return _array.compactMap({ $0 })
    }
    
    mutating func fifth() -> [Element] {
        var _array: Array<String?> = self
        if _array.count == 0 {
            _array.append("a")
        }
        return _array.compactMap({ $0 })
    }
    
    func sixth() -> [Element] {
        var _array: Array<String?> = self
        if _array.count > 15 {
            _array = Array(self[0 ... 14])
        }
        if _array[_array.count - 1] == "." {
            _array.remove(at: _array.count - 1)
        }
        
        return _array.compactMap({ $0 })
    }
}

func seventh(_ array: inout [String]) {
    if array.count <= 2 {
        while(array.count < 3) {
            array.append(array[array.count - 1])
        }
    }
}



//solution("...!@BaT#*..y.abcdefghijklm")
print(solution("=.="))
