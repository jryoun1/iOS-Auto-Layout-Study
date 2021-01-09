//
//  PhonebookItem.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/09.
//

import Foundation
import UIKit

struct PhonebookItem: Codable {
    let name: String
    private let imageName: String?
    let phone: String
    let email: String?
    var image: UIImage? {
        guard let imageName = imageName else {
            return nil
        }
        return UIImage(named: imageName)
    }
    
    enum CodingKeys: String, CodingKey {
        case name, phone, email
        case imageName = "image_name"
    }
}
