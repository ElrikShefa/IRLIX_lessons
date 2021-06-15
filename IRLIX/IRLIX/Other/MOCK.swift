//
//  MOCK.swift
//  IRLIX
//
//  Created by Матвей Чернышев on 15.06.2021.
//

import Foundation

struct Office {
	let title: String
}


final class MOCK {

	static func createListOffice() -> [Office] {
		return [Office(title: "Офис в Ульяновске"),
				Office(title: "Офис в Димитровграде"),
				Office(title: "Офис в Самаре"),
				Office(title: "Офис в Казани"),
				Office(title: "Офис в Los-Angeles"),]
	}
}
