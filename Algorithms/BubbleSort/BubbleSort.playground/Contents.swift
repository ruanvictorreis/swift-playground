import UIKit

// MARK: - Simple Bubble Sort O(nˆ2)

func bubbleSort(arr: [Int]) -> [Int] {
    var arr = arr
    
    for _ in 0..<arr.count {
        for j in 0..<arr.count - 1 {
            if arr[j] > arr[j+1] {
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            }
        }
    }
    
    return arr
}

// MARK: - Better Bubble Sort O(nˆ2)

func betterBubbleSort(arr: [Int]) -> [Int] {
    var arr = arr
    
    for i in 0..<arr.count {
        for j in 0..<arr.count - i - 1 {
            if arr[j] > arr[j+1] {
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            }
        }
    }
    
    return arr
}

// MARK: - Bubble Sort Examples

let resultOne = bubbleSort(arr: [8, 9, 6, 0, 4, 5, 1, 3, 2, 7])
print(resultOne)

let resultTwo = betterBubbleSort(arr: [8, 9, 6, 0, 4, 5, 1, 3, 2, 7])
print(resultTwo)
