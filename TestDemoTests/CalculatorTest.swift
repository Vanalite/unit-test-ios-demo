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

	override func setUp() {
		super.setUp()
	}

	override func tearDown() {
		super.tearDown()
	}

	func testFactorialOfNegativeInteger() {
		XCTAssert(Calculator.factorial(n: -3) == nil)
	}

	func testFactorialOfNonNegativeInteger() {
		XCTAssert(Calculator.factorial(n: 3) == 6)
		XCTAssert(Calculator.factorial(n: 0) == 0)
	}

}
