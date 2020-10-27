//
//  ZYTAlgorithmsTests.swift
//  ZYTAlgorithmsTests
//
//  Created by 张玉涛 on 2020/10/18.
//

import XCTest
@testable import ZYTAlgorithms

class ZYTAlgorithmsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    // 反转链表
    func testReverseLinkedList() {
        let so = Solution_ReverseListNode()
        so.test()
    }
    
    // 反转字符串
    func testReverseString() {
        let so = Solution_ReverseString()
        so.test()
    }
    
    // 冒泡排序
    func testBubbleSort() {
        let so = Solution_BubbleSort()
        so.test()
    }
    
    // 选择排序
    func testSelectionSort() {
        let so = Solution_SelectionSort()
        so.test()
    }
    
    // 插入排序
    func testInsertionSort() {
        let so = Solution_InsertionSort()
        so.test()
    }
}
