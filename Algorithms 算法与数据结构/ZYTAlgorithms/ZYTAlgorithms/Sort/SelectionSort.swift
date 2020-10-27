//
//  SelectionSort.swift
//  ZYTAlgorithms
//
//  Created by 张玉涛 on 2020/10/19.
//

import Foundation

class Solution_SelectionSort {
    func selectionSort(_ array: inout [Int]) {
        let n = array.count
        for i in 0..<n {
            var min = i
            
            for j in i+1..<n {
                if array[min] > array[j] {
                    min = j
                }
            }
            
            if min != i {
                array.swapAt(min, i)
            }
        }
    }
    
    func test() {
        var array: [Int] = [4, 2, 5, 3, 1]
        selectionSort(&array)
        print(array)
    }
}
