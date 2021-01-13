//
//  TestViewController.swift
//  AutoLayoutStudy
//
//  Created by Jinho Choi on 2021/01/13.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let titleView = UIView()
//
//        let image = UIImage(named: "swift")
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        imageView.contentMode = .scaleAspectFit
//        imageView.image = image
//
//
//        let label = UILabel()
//        label.text = "swift"
//        label.sizeToFit()
//        label.center  = titleView.center
//        label.textAlignment = NSTextAlignment.center
//
//        titleView.addSubview(imageView)
//        titleView.addSubview(label)
//        titleView.sizeToFit()
//
//        self.navigationItem.titleView = titleView
//        self.navigationController?.navigationBar.
        self.navigationItem.titleView?.sizeThatFits(CGSize(width: self.view.frame.width, height: 70))
        
        self.navigationItem.titleView = testView

    }
}
