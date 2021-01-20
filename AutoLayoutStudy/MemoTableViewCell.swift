//
//  MemoTableViewCell.swift
//  AutoLayoutStudy
//
//  Created by Jinho Choi on 2021/01/13.
//

import UIKit

class MemoTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
