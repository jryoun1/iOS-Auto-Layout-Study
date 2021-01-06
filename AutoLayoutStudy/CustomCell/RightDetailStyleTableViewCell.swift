//
//  RightDetailStyleTableViewCell.swift
//  AutoLayoutStudy
//
//  Created by Jinho Choi on 2021/01/06.
//

import UIKit

class RightDetailStyleTableViewCell: UITableViewCell {
    static let identifier = "RightDetailStyleTableViewCell"
    let titleLabel: UILabel = UILabel()
    let detailLabel: UILabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(detailLabel)
        
        titleLabel.font = UIFont(name: "System", size: 13)
        detailLabel.font = UIFont(name: "System", size: 13)
        detailLabel.textColor = UIColor.gray
        
        let titleLabelTopAnchor = titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10)
        titleLabelTopAnchor.isActive = true
        let titleLabelLeadingAnchor = titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10)
        titleLabelLeadingAnchor.isActive = true
        let titleLabelBottomAnchor = titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 10)
        titleLabelBottomAnchor.isActive = true
        
        let detailLabelTopAnchor = detailLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10)
        detailLabelTopAnchor.isActive = true
        let detailLabelTrailingAnchor = detailLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 10)
        detailLabelTrailingAnchor.isActive = true
        let detailLabelBottomAnchor = detailLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 10)
        detailLabelBottomAnchor.isActive = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
