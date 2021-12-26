//
//  NumberCellDelegate.swift
//  BinaryCounter
//
//  Created by Najd Alsughaiyer on 26/12/2021.
//

import Foundation
import UIKit
protocol NumberCellDelegate: AnyObject {
    
    func increaseTotalBy(amount: Int)
    
    func decreaseTotalBy(amount: Int)
    
}
