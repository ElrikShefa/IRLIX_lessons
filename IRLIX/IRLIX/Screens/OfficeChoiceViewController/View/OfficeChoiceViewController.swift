//
//  OfficeChoiceViewController.swift
//  IRLIX
//
//  Created by Матвей Чернышев on 11.06.2021.
//

import UIKit

final class OfficeChoiceViewController: UIViewController {

	@IBOutlet var containerView: UIView!
	@IBOutlet var tableView: UITableView!

	private var offices: [Office] = MOCK.createListOffice(){
		didSet {
			DispatchQueue.main.async {
				self.tableView.reloadData()
			}
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		setupLayout()
	}
}


extension OfficeChoiceViewController: UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return offices.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return tableView.dequeueReusableCell(withIdentifier: OfficeChoiceTableCell.reuseIdentifier, for: indexPath)
	}
}

extension OfficeChoiceViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 49
	}

	func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		guard let castedCell = cell as? OfficeChoiceTableCell,
			  let office = offices[safe: indexPath.row]
		else { return }

		castedCell.setupCell(model: office, index: indexPath)
	}

	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
}

private extension OfficeChoiceViewController {

	func setupLayout() {

		tableView.dataSource = self
		tableView.delegate = self
		tableView.register(UINib(nibName: OfficeChoiceTableCell.nibName, bundle: nil), forCellReuseIdentifier: OfficeChoiceTableCell.reuseIdentifier)


	}
}
