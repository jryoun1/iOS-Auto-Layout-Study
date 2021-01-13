//
//  PersonInfoTableViewCell.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/01.
//

import Foundation
import UIKit

final class PersonInfoTableViewCell: UITableViewCell {
    var personInfoImageView: UIImageView!
    var personInfoTitle: UILabel!
    var personInfoSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        personInfoImageView = UIImageView()
        personInfoImageView.translatesAutoresizingMaskIntoConstraints = false
        personInfoImageView.image = UIImage(systemName: "person.circle.fill", withConfiguration: UIImage.SymbolConfiguration(textStyle: .largeTitle))
        personInfoImageView.tintColor = .gray
        contentView.addSubview(personInfoImageView)
        
        personInfoTitle = UILabel()
        personInfoTitle.translatesAutoresizingMaskIntoConstraints = false
        personInfoTitle.font = UIFont.preferredFont(forTextStyle: .title3)
        personInfoTitle.adjustsFontForContentSizeCategory = true
        personInfoTitle.textColor = .systemBlue
        
        personInfoSubtitle = UILabel()
        personInfoSubtitle.translatesAutoresizingMaskIntoConstraints = false
        personInfoSubtitle.font = UIFont.preferredFont(forTextStyle: .caption1)
        personInfoSubtitle.adjustsFontForContentSizeCategory = true
        personInfoSubtitle.numberOfLines = 0
        personInfoSubtitle.textColor = .gray
        
        let stackView = UIStackView(arrangedSubviews: [personInfoTitle, personInfoSubtitle])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            personInfoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            personInfoImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            personInfoImageView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -10),
            personInfoImageView.widthAnchor.constraint(equalToConstant: 80),
            personInfoImageView.widthAnchor.constraint(equalTo: personInfoImageView.heightAnchor),
            personInfoImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            stackView.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: personInfoImageView.trailingAnchor, constant: 10),
            stackView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -10),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setLabel(data: String) {
        self.personInfoTitle.text = data
        self.personInfoSubtitle.text = "Set up iCloud, the App Store, and more."
    }
}
