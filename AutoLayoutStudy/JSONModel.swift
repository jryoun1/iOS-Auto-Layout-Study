import Foundation
import UIKit

struct Settings: Codable {
    let name: String
    let imageName: String
    
    var image: UIImage? {
        return UIImage(named: self.imageName)
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageName = "Image_name"
    }
}
