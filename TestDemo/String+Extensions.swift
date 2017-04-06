//
//  String+Extensions.swift
//  TriCura
//
//  Created by eastagile on 5/11/16.
//  Copyright © 2016 EastAgile. All rights reserved.
//

import Foundation
import SwiftString3

extension String {

	func humanShortName() -> String {
		if self.isEmpty {
			return self
		}

		let firstName = split(" ")[0]
		let lastName = chompLeft(firstName).trimmed()
		var shortName = ""
		for word in lastName.split(" ") {
			shortName += word.initials() + "."
		}
		return "\(firstName) \(shortName)"
	}
}

