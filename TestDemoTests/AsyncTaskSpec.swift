//
//  AsyncTaskSpec.swift
//  TestDemo
//
//  Created by Vanalite on 4/18/17.
//  Copyright © 2017 Vanalite. All rights reserved.
//

@testable import TestDemo
import Quick
import Nimble

class AsyncTaskSpec: QuickSpec {
	override func spec() {
		describe("async test") {
			var array = [String]()
			it("wait for the completed async thread") {
				DispatchQueue.main.async {
					array.append("Coke")
					array.append("Milk")
				}
				expect(array).toEventually(contain("Coke", "Milk"))
			}

			it("wait until callback") {
				var number = 1
				waitUntil(timeout: 3, action: { done in
					Thread.sleep(forTimeInterval: 2)
					expect(number) == 1
					number = 2
					done()
				})
				expect(number) == 2
			}
		}
	}
}
