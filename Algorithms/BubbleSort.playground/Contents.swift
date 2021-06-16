import UIKit

// MARK: - Simple Bubble Sort

func bubbleSort(arr: inout [Int]) -> [Int] {
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

// MARK: - Better Bubble Sort

func betterBubbleSort(arr: inout [Int]) -> [Int] {
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

// MARK: - Examples

var inputOne = [8, 9, 6, 0, 4, 5, 1, 3, 2, 7]
var inputTwo = [8, 9, 6, 0, 4, 5, 1, 3, 2, 7]
print(bubbleSort(arr: &inputOne))
print(betterBubbleSort(arr: &inputTwo))
