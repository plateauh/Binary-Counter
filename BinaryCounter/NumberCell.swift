//
//  NumberCell.swift
//  BinaryCounter
//
//  Created by Najd Alsughaiyer on 26/12/2021.
//

import UIKit

class NumberCell: UITableViewCell {
    
    var delegate: NumberCellDelegate?

    @IBAction func plusButtonPressed(_ sender: UIButton) {
        let amountToInt = Int(numberLabel.text!)
        delegate?.increaseTotalBy(amount: amountToInt!)
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
    }
    
    @IBOutlet weak var numberLabel: UILabel!

}
