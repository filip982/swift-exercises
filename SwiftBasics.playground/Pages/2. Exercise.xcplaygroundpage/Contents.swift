import Foundation
import XCTest

// MARK: - Assignment

/// Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference

// MARK: - Code

func diff_51(x: Int) -> Int {
    if x > 51 {
        return (x-51)*2
    } else {
        return 51-x
    }
}

// MARK: - Example

let example = diff_51(x: 53)
print(example)

// MARK: - Tests

class TestCase: XCTestCase {
    func test_example_one() {
        XCTAssertEqual(6, diff_51(x: 45))
    }

    func test_example_two() {
        XCTAssertEqual(20, diff_51(x: 61))
    }

    func test_example_three() {
        XCTAssertEqual(30, diff_51(x: 21))
    }
}

TestCase.defaultTestSuite.run()
