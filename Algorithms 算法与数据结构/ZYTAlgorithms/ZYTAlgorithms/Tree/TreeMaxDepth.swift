//
//  TreeMaxDepth.swift
//  ZYTAlgorithms
//
//  Created by 张玉涛 on 2020/10/20.
//

import Foundation

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


class Solution_TreeMaxDepth {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        var currentHeight = 0 // 当前高度
        var maxHeight = 0 // 最大层数
        
        findMaxHeight(root, &currentHeight, &maxHeight)
        
        return maxHeight
    }
    
    // 递归一个节点
    func findMaxHeight(_ root: TreeNode, _ currentHeight: inout Int, _ maxHeight: inout Int) {
        // 每进入一层，高度 +1
        currentHeight += 1
        
        if root.left != nil || root.right != nil { // 非叶子节点（有左右子树）
            // 如果不是叶子节点，尝试递归 left 或 right
            
            if root.left != nil {
                findMaxHeight(root.left!, &currentHeight, &maxHeight)
                currentHeight -= 1 // 递归完成后，要返回这一层，高度 -1
            }
            
            if root.right != nil {
                findMaxHeight(root.right!, &currentHeight, &maxHeight)
                currentHeight -= 1 // 递归完成后，要返回这一层，高度 -1
            }
            
        } else { // 叶子节点
            // 如果是叶子节点，计算保存最大高度
            maxHeight = max(currentHeight, maxHeight)
            return
        }
    }
}


class Solution_TreeMaxDepth1 {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard root != nil else {
            return 0
        }
        return max(maxDepth(root?.left), maxDepth(root?.right)) + 1
    }
}


class Solution_TreeMaxDepth2 {
    func maxDepth(_ root: TreeNode?) -> Int {
        return root == nil ? 0 : max(maxDepth(root?.left), maxDepth(root?.right)) + 1
    }
}
