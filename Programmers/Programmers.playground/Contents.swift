import UIKit


func solution(_ sizes:[[Int]]) -> Int {
    var width = 0
    var height = 0
    var _sizes = sizes.map { element in
        element.sorted()
    }
    for size in _sizes {
        if size[0] > width {
            width = size[0]
        }
        if size[1] > height {
            height = size[1]
        }
        
        return height * width
    }
    
    print(_sizes)
    
    
    return 0
}

solution([[60, 50], [30, 70], [60, 30], [80, 40]])
