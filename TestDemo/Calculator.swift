//
//  Calculator.swift
//  TestDemo
//
//  Created by Vanalite on 4/17/17.
//  Copyright © 2017 Vanalite. All rights reserved.
//

import Foundation

class Calculator {
	var usageCount: Int

	init() {
		usageCount = 0
	}

	func factorial(n: Int) -> Int? {
		if n < 0 {
			return nil
		}

		usageCount += 1
		var factorial = 1
		for i in 1..<n+1 {
			factorial *= i
		}
		return factorial
	}
}
