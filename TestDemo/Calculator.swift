//
//  Calculator.swift
//  TestDemo
//
//  Created by Vanalite on 4/17/17.
//  Copyright © 2017 Vanalite. All rights reserved.
//

import Foundation

class Calculator {


	static func factorial(n: Int) -> Int? {
		if n < 0 {
			return nil
		}
		var factorial = 1
		for i in 1..<n+1 {
			factorial *= i
		}
		return factorial
	}
}
