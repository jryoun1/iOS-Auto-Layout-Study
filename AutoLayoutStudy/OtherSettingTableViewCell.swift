//
//  OtherSettingTableViewCell.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/01.
//

import Foundation
import UIKit

final class OtherSettingTableViewCell: UITableViewCell {
    var settingImageView: UIImageView!
    var settingTitle: UILabel!
    
    override func awakeFromNib() {
        settingImageView = UIImageView()
        settingImageView.translatesAutoresizingMaskIntoConstraints = false
        settingImageView.image = UIImage(systemName: "arrow.forward.square.fill", withConfiguration: UIImage.SymbolConfiguration(textStyle: .largeTitle))
        settingImageView.tintColor = .gray
        
        contentView.addSubview(settingImageView)
        
        settingTitle = UILabel()
        settingTitle.translatesAutoresizingMaskIntoConstraints = false
        settingTitle.font = UIFont.preferredFont(forTextStyle: .body)
        settingTitle.textColor = .black
        
        contentView.addSubview(settingTitle)
        
        NSLayoutConstraint.activate([
            settingImageView.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: 10),
            settingImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            settingImageView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -10),
            settingImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            settingImageView.widthAnchor.constraint(equalToConstant: 30),
            settingImageView.widthAnchor.constraint(equalTo: settingImageView.heightAnchor),
            settingTitle.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: 10),
            settingTitle.leadingAnchor.constraint(equalTo: settingImageView.trailingAnchor, constant: 15),
            settingTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            settingTitle.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    func setLabel(data: String) {
        self.settingTitle.text = data
    }
}
