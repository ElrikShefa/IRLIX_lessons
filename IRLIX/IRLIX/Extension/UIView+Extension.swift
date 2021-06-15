//
//  UIView+Extension.swift
//  IRLIX
//
//  Created by Матвей Чернышев on 15.06.2021.
//

import UIKit

extension UIView {

	static var reuseIdentifier: String {
		return String(describing: self)
	}

	static var nibName: String {
		return String(describing: self)
	}
}
