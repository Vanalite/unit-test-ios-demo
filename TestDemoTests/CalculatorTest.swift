//
//  CalculatorTest.swift
//  TestDemo
//
//  Created by Vanalite on 4/17/17.
//  Copyright © 2017 Vanalite. All rights reserved.
//

@testable import TestDemo
import XCTest

class CalculatorTest: XCTestCase {

	lazy var calculator = Calculator()

	override func setUp() {
		super.setUp()
		calculator.usageCount = 2
	}

	override func tearDown() {
		super.tearDown()
	}

	func testFactorialOfNegativeInteger() {
		XCTAssert(calculator.factorial(n: -3) == nil)
		XCTAssert(calculator.usageCount == 2)
	}

	func testFactorialOfNonNegativeInteger() {
		XCTAssert(calculator.factorial(n: 3) == 6)
		XCTAssert(calculator.usageCount == 3)
		XCTAssert(calculator.factorial(n: 0) == 1)
		XCTAssert(calculator.usageCount == 4)
	}

}
