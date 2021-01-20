//
//  TotalPhoneCountTableViewCell.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/09.
//

import Foundation
import UIKit

final class TotalPhoneCountTableViewCell: UITableViewCell {
    @IBOutlet var totalCountLabel: UILabel!
    
    func setCountLabel(data: Int) {
        self.totalCountLabel.text = "\(data)개의 연락처"
    }
}
