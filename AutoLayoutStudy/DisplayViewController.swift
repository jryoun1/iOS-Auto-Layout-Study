//
//  DisplayViewController.swift
//  AutoLayoutStudy
//
//  Created by Wonhee on 2021/01/03.
//

import UIKit

class DisplayViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationItem()
    }

    private func setUpNavigationItem() {
        self.navigationItem.title = "디스플레이 및 밝기"
        self.navigationItem.largeTitleDisplayMode = .never
    }
}
