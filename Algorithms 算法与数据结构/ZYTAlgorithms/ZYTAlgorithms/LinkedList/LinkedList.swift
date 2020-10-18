//
//  LinkedList.swift
//  ZYTAlgorithms
//
//  Created by 张玉涛 on 2020/10/18.
//

import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution_ReverseListNode {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        if head?.next == nil {
            return head
        }
        
        let newHead = reverseList(head?.next)
        
        head?.next?.next = head
        head?.next = nil
        
        return newHead
    }
    
    func test() {
        let node5 = ListNode(5)
        node5.next = nil

        let node4 = ListNode(4)
        node4.next = node5

        let node3 = ListNode(3)
        node3.next = node4

        let node2 = ListNode(2)
        node2.next = node3

        let node1 = ListNode(1)
        node1.next = node2
        
        var newNode = reverseList(node1)
        while newNode != nil {
            print(newNode?.val ?? "")
            newNode = newNode?.next
        }
        
    }
}


