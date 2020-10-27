//
//  BubbleSort.swift
//  ZYTAlgorithms
//
//  Created by 张玉涛 on 2020/10/19.
//

import Foundation

class Solution_BubbleSort {
    func bubbleSort(_ array: inout [Int]) {
        let n = array.count
        for i in 0..<n-1 {
            for j in 0..<n-i-1 {
                if array[j+1] < array[j] {
                    array.swapAt(j, j+1)
                }
            }
        }
    }
    
    func test() {
        var array: [Int] = [4, 2, 5, 3, 1]
        bubbleSort(&array)
        print(array)
    }
}
