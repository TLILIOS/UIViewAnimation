//
//  MyTableView.swift
//  UIViewAnimation
//
//  Created by HTLILI on 26/05/2024.
//

import UIKit

class MyTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var arrayCapital = ["Amsterdam", "La Haye", "Ankara", "Athènes", "Bangkok", "Belgrade", "Berlin", "Berne", "Bogota", "Bratislava", "Le Caire", "Canberra", "Copenhague", "Dakar", "Hanoï", "Jakarta", "Kuala Lumpur", "Rome", "Séoul", "Singapour", "Sofia", "Tokyo", "Tunis"
    ]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCapital.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Mycell")!
        cell.textLabel?.text = arrayCapital[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.layer.transform = CATransform3DMakeScale(0.1, 0.1, 1)
        UIView.animate(withDuration: 0.8) {
            cell.layer.transform = CATransform3DMakeScale(1, 1, 1)
        }
    }

}
