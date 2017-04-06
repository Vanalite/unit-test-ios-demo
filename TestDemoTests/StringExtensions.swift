//
//  StringExtensions.swift
//  TestDemo
//
//  Created by Vanalite on 4/6/17.
//  Copyright © 2017 Vanalite. All rights reserved.
//

@testable import TestDemo
import Quick
import Nimble

class StringExtensionsSpec: QuickSpec {
	override func spec() {
		super.spec()

		describe("#humanShortName") {
			context("this string is empty") {
				it("returns itself") {
					let name = ""
					expect(name.humanShortName()) == name
				}
			}

			context("this string is not empty") {
				it("returns short name") {
					let name = "Lilian Winter Falstaff"
					let expecttedShortName = "Lilian W.F."
					expect(name.humanShortName()) == expecttedShortName
				}
			}
		}
	}
}
