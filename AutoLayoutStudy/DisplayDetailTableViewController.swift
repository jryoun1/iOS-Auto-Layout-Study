//
//  DisplayDetailTableViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/01.
//

import UIKit

class DisplayDetailTableViewController: UITableViewController {
    var displayDetailViewTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewTitle()
    }
    
    func setUpViewTitle() {
        navigationItem.title = displayDetailViewTitle
        navigationItem.largeTitleDisplayMode = .never
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
