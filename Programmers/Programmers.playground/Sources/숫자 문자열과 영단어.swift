import Foundation
var words: [String: String] = [
    "zero": "0",
    "one": "1",
    "two": "2",
    "three": "3",
    "four": "4",
    "five": "5",
    "six": "6",
    "seven": "7",
    "eight": "8",
    "nine": "9"
]


func solution(_ s:String) -> Int {
    var currentWord: String = ""
    var result: String = ""
    
    for char in s {
        
        if char.isNumber {
            if let word = words[currentWord] {
                result.append(word)
            }
            result.append(char)
            currentWord = ""
            
        } else {
            currentWord.append(char)
            if let word = words[currentWord] {
                result.append(word)
                currentWord = ""
            }
        }
    }
    
    print(result)
    
    return 0
}


//solution("one4seveneight")
