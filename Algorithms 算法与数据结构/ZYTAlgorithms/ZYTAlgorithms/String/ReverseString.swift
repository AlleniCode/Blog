//
//  ReverseString.swift
//  ZYTAlgorithms
//
//  Created by 张玉涛 on 2020/10/18.
//

import Foundation


class Solution_ReverseString {
    func reverseString(_ s: inout [Character]) {
        guard !s.isEmpty else {
            return
        }
        
        var left = 0
        var right = s.count - 1
        
        while left < right {
            s.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
    
    func test() {
        var str:[Character] = ["h", "e", "l", "l", "o"]
        reverseString(&str)
        print(str)
    }
}
