import Foundation

func solution(_ new_id:String) -> String {
    var id = first(new_id)
    print(id)
    
    
    return ""
}

private func first(_ id: String) -> [String] {
    id.map { character in
        character.lowercased()
    }
}

solution("...!@BaT#*..y.abcdefghijklm")
