import UIKit

// MARK: - Recursive O(2^n)

func recursiveFibonacci(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    }
    
    return recursiveFibonacci(n-1) + recursiveFibonacci(n-2)
}

// MARK: - Iterative O(n)

func iterativeFibonacci(_ n: Int) -> Int {
    var a = 0
    var b = 1
    
    for _ in 0..<n {
        let c = a + b
        a = b
        b = c
    }
    
    return a
}

// MARK: - Fibonnaci Examples

print(recursiveFibonacci(0), 0)
print(recursiveFibonacci(1), 1)
print(recursiveFibonacci(2), 1)
print(recursiveFibonacci(3), 2)
print(recursiveFibonacci(4), 3)
print(recursiveFibonacci(5), 5)
print(recursiveFibonacci(6), 8)
print(recursiveFibonacci(7), 13)
print(recursiveFibonacci(8), 21)
print(recursiveFibonacci(9), 34)
print(recursiveFibonacci(10), 55)

print("=======================")

print(iterativeFibonacci(0), 0)
print(iterativeFibonacci(1), 1)
print(iterativeFibonacci(2), 1)
print(iterativeFibonacci(3), 2)
print(iterativeFibonacci(4), 3)
print(iterativeFibonacci(5), 5)
print(iterativeFibonacci(6), 8)
print(iterativeFibonacci(7), 13)
print(iterativeFibonacci(8), 21)
print(iterativeFibonacci(9), 34)
print(iterativeFibonacci(10), 55)
