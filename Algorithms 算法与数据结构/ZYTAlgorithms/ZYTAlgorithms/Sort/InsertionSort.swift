//
//  InsertionSort.swift
//  ZYTAlgorithms
//
//  Created by 张玉涛 on 2020/10/19.
//

import Foundation

class Solution_InsertionSort {
    func insertionSort(_ array: inout [Int]) {
        let n = array.count
        for i in 1..<n {
            var j = i
            while j > 0 {
                if array[j] < array[j-1] {
                    array.swapAt(j, j-1)
                    j -= 1
                } else {
                    break
                }
            }
        }
    }
    
    func test() {
        var array: [Int] = [4, 2, 5, 3, 1]
        insertionSort(&array)
        print(array)
    }
}
