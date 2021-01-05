//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpSearchBar()
    }
    
    private func setUpSearchBar() {
        let searchBar = UISearchController()
        self.navigationItem.searchController = searchBar
        self.navigationItem.hidesSearchBarWhenScrolling = true
    }
}

