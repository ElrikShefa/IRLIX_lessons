//
//  OfficeChoiceTableCell.swift
//  IRLIX
//
//  Created by Матвей Чернышев on 15.06.2021.
//

import UIKit

final class OfficeChoiceTableCell: UITableViewCell {

	@IBOutlet var label: UILabel!

	override func prepareForReuse() {
		super.prepareForReuse()
		label.text = nil
	}

	func setupCell(model: Office, index: IndexPath) {
		label.text = "\(index.row + 1). \(model.title)"
		label.font = UIFont(name: "Montserrat-Medium", size: 16)
	}

}

private extension OfficeChoiceTableCell {
	func setupUI() {
		contentView.backgroundColor = UIColor(red: 0.098, green: 0.75, blue: 0.437, alpha: 1)
	}
}
