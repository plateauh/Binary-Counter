//
//  NumbersListViewController.swift
//  BinaryCounter
//
//  Created by Najd Alsughaiyer on 26/12/2021.
//

import UIKit

class NumbersListViewController: UITableViewController, NumberCellDelegate {
    
    var numbers = [1]
    var totalAmount = 0
    @IBOutlet weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "Total: \(totalAmount)"
        generateNumbers()
    }
    
    func increaseTotalBy(amount: Int) {
        totalAmount += amount
        totalLabel.text = "Total: \(totalAmount)"
    }
    
    func decreaseTotalBy(amount: Int) {
        totalAmount -= amount
        totalLabel.text = "Total: \(totalAmount)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NumberCell
        cell.numberLabel.text = "\(numbers[indexPath.row])"
            cell.delegate = self
            return cell
        }


    func generateNumbers() {
        for i in 1...15 {
            numbers[i] = numbers[i-1] * 10
        }
    }
    
}
