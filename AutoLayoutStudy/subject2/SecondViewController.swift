//
//  SecondViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/26.
//

import Foundation
import UIKit

class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionView: UICollectionView!
    private let images: [String] = ["Image1", "Image2", "Image3", "Image4", "Image5", "Image6", "Image7", "Image8", "Image9", "Image10", "Image11","Image12"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.imageView.image = UIImage(named: images[indexPath.item])
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        //self.collectionView.delegate = self
        
        let flowLayout: UICollectionViewFlowLayout  = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        flowLayout.minimumLineSpacing = 45
        flowLayout.minimumInteritemSpacing = 10
        
        let cellWidth: CGFloat = UIScreen.main.bounds.width / 3.0
        flowLayout.itemSize = CGSize(width: cellWidth - 20, height: 100)
        self.collectionView.collectionViewLayout = flowLayout
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//         let cellWidth = (collectionView.frame.width / 3) - 1
//
//          return CGSize(width: cellWidth, height: cellWidth)
//     }
//
//
//      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//         return 45
//     }
//
//      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//         return 10
//     }
}

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
}

