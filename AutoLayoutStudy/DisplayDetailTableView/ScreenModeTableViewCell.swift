//
//  ScreenModeTableViewCell.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/05.
//

import Foundation
import UIKit

final class ScreenModeTableViewCell: UITableViewCell {
    @IBOutlet weak var darkModeButton: UIButton!
    @IBOutlet weak var lightModeButton: UIButton!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        if sender == darkModeButton {
            darkModeButton.isSelected = true
            lightModeButton.isSelected = false
            darkModeButton.setBackgroundColor(.blue, for: .selected)
        }
        else if sender == lightModeButton {
            darkModeButton.isSelected = false
            lightModeButton.isSelected = true
            lightModeButton.setBackgroundColor(.blue, for: .selected)
        }
    }
}


