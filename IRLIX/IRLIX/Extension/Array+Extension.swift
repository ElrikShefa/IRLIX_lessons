//
//  Array+Extension.swift
//  IRLIX
//
//  Created by Матвей Чернышев on 15.06.2021.
//

import Foundation

extension Array {

	subscript(safe index: Int) -> Element? {
		guard index >= 0 else { return nil }

		return self[safe: UInt(index)]
	}

	subscript(safe index: UInt) -> Element? {
		guard isNotEmpty,
			  index < count
		else { return nil }

		return self[index]
	}

	subscript(index: UInt) -> Element {
		return self[Int(index)]
	}
}
