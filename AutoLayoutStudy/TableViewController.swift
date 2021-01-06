//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setSearchBar()
    }

    private func setSearchBar() {
        self.navigationItem.searchController = UISearchController()
        self.navigationItem.hidesSearchBarWhenScrolling = true
    }

}

