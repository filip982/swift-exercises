import Foundation
import XCTest

// MARK: - Assignment

/// Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20

// MARK: - Code

func calculate(a: Int, b: Int) -> Bool {
    return a==20 || b==20 || a+b==20
}

// MARK: - Example

let example = calculate(a: 6, b: 5)
print(example)

// MARK: - Tests

class TestCase: XCTestCase {
    func test_example_one() {
        XCTAssertEqual(true, calculate(a: 20, b: 5))
    }

    func test_example_two() {
        XCTAssertEqual(true, calculate(a: 6, b: 20))
    }

    func test_example_three() {
        XCTAssertEqual(true, calculate(a: 14, b: 6))
    }

    func test_example_four() {
        XCTAssertEqual(false, calculate(a: 29, b: 10))
    }
}

TestCase.defaultTestSuite.run()
