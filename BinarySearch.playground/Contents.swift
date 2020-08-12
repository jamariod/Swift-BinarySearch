import UIKit

// Swift Binary Search Algorithm

var hundred = [Int]()
for i in 1...100 {
    hundred.append(i)
}

func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(array[leftIndex]), [\(array[rightIndex])]")
        if middleValue == searchValue {
            return true
        }
        if searchValue < middleValue {
            rightIndex = middleValue - 1
        }
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearchForSearchValue(searchValue: 99, array: hundred))



