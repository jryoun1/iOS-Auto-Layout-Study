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
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerLabel = UILabel()
        footerLabel.frame = CGRect(x: 20, y: 0, width: view.frame.width - 20, height: 50)
        footerLabel.font = UIFont.boldSystemFont(ofSize: 12.5)
        footerLabel.text = self.tableView(tableView, titleForFooterInSection: section)
        footerLabel.textColor = .gray
        footerLabel.numberOfLines = 0
        
        let footerView = UIView()
        footerView.addSubview(footerLabel)
        
        return footerView
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else {
            return
        }
        header.textLabel?.textColor = UIColor.gray
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        header.textLabel?.frame = header.frame
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
