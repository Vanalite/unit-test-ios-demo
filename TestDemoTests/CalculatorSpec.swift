//
//  CalculatorSpec.swift
//  TestDemo
//
//  Created by Vanalite on 4/17/17.
//  Copyright © 2017 Vanalite. All rights reserved.
//

@testable import TestDemo
import Quick
import Nimble

class CalculatorSpec: QuickSpec {
	override func spec() {
		super.spec()

		describe("#factorial") {
			let cal = Calculator()
			beforeEach {
				cal.usageCount = 2
			}

			context("input is a negative integer") {
				it("returns nil and doesn't increase usage count") {
					expect(cal.factorial(n: -3)).to(beNil())
					expect(cal.usageCount) == 2
				}
			}

			context("input is a non-negative integer") {
				it("returns the natural factorial of the input and increase usage count") {
					expect(cal.factorial(n: 5)) == 120
					expect(cal.usageCount) == 3
				}
			}
		}
	}
}
