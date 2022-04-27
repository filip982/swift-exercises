import Cocoa
import Foundation
import XCTest

// MARK: - Assignment

/// Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum

// MARK: - Code

func tripleSum(a: Int, b: Int) -> Int {
    if a==b {
        return (a+b)*3
    } else {
        return a+b
    }
}

// MARK: - Example

let example = tripleSum(a:1, b:1)
print(example)

// MARK: - Tests

class TestCase: XCTestCase {
    func test_example_one() {
        XCTAssertEqual(3, tripleSum(a: 1, b: 2))
    }

    func test_example_two() {
        XCTAssertEqual(5, tripleSum(a: 3, b: 2))
    }

    func test_example_three() {
        XCTAssertEqual(12, tripleSum(a: 2, b: 2))
    }
}

TestCase.defaultTestSuite.run()
