//
//  DisplayDetailTableViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/01.
//

import UIKit

final class DisplayDetailTableViewController: UITableViewController {
    var displayDetailViewTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewTitle()
    }
    
    func setUpViewTitle() {
        navigationItem.title = displayDetailViewTitle
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 50
        case 1:
            return 50
        case 2:
            return 20
        case 5:
            return 50
        default:
            return 30
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        switch section {
        case 1:
            return 50
        case 5:
            return 50
        default:
            return CGFloat.leastNormalMagnitude
        }
    }
}
