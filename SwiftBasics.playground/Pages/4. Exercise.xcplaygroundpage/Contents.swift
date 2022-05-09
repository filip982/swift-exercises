import Foundation
import XCTest

// MARK: - Assignment

/// Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.

// MARK: - Code

func calculate(a: Int, b: Int) -> Bool {
    return a<0 && b>0 || a>0 && b<0 || a<0 && b<0
}

// MARK: - Example

let example = calculate(a: 12, b: -5)
print(example)

// MARK: - Tests

class TestCase: XCTestCase {
    func test_example_one() {
        XCTAssertEqual(true, calculate(a: 12, b: -5))
    }

    func test_example_two() {
        XCTAssertEqual(true, calculate(a: -12, b: 5))
    }

    func test_example_three() {
        XCTAssertEqual(true, calculate(a: -12, b: -5))
    }

    func test_example_four() {
        XCTAssertEqual(false, calculate(a: 12, b: 5))
    }
}

TestCase.defaultTestSuite.run()
