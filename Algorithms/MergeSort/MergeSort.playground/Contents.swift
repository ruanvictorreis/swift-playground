import UIKit

func mergeSort(arr: [Int]) -> [Int] {
    if arr.count == 0 || arr.count == 1 {
        return arr
    }
    
    let size = arr.count
    let middle = size / 2
    let left = mergeSort(arr: Array(arr[0..<middle]))
    let right = mergeSort(arr: Array(arr[middle..<size]))
    
    return merge(left: left, right: right)
}

// MARK: - Auxiliary Functions

private func merge(left: [Int], right: [Int]) -> [Int] {
    var a = 0
    var b = 0
    var result: [Int] = []
    
    while a < left.count && b < right.count {
        if left[a] < right[b] {
            result.append(left[a])
            a += 1
        } else {
            result.append(right[b])
            b += 1
        }
    }
    
    while a < left.count {
        result.append(left[a])
        a += 1
    }
    
    while b < right.count {
        result.append(right[b])
        b += 1
    }
    
    return result
}

// MARK: - Merge Sort Examples

print(mergeSort(arr: []))
print(mergeSort(arr: [9, 8, 7, 6, 5, 4, 3, 2, 1]))
print(mergeSort(arr: [8, 8, 3, 2, 5, 6, 9, 1, 3]))
