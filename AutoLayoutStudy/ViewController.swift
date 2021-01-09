//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {
    private var phonebookItems: [PhonebookItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        decodeDate()
        
    }
    
    private func decodeDate() {
        let jsonDecorder: JSONDecoder = JSONDecoder()
        guard let dataAsset: NSDataAsset = NSDataAsset(name: "items") else {
            return
        }
        do {
            self.phonebookItems = try jsonDecorder.decode([PhonebookItem].self, from: dataAsset.data)
        } catch {
            print(error)
        }
    }
}

