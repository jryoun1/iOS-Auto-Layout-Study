//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ContactsViewController: UIViewController {
    @IBOutlet weak var contactsTableView: UITableView!
    let contactsData = [["section":"ㄱ", "data": ["가", "가가"]], ["section":"ㄴ", "data": ["나", "나나"]], ["section":"ㄷ", "data": ["다", "다다"]], ["section":"ㄹ", "data": ["라", "라라"]], ["section":"ㅁ", "data": ["마", "마마"]], ["section":"ㅂ", "data": ["바", "바바"]]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSearchBar()
        setTableFooterView()
    }
    
    func setTableFooterView() {
        let contactsCount = contactsData.map {
            ($0["data"] as! [String]).count
        }.reduce(0) {
            $0 + $1
        }
        
        let tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: contactsTableView.frame.width, height: 100))
        contactsTableView.tableFooterView = tableFooterView
        contactsTableView.scrollRectToVisible(tableFooterView.frame, animated: false)
        let label = UILabel()
        label.text = "\(contactsCount)개의 연락처"
        label.textColor = .systemGray
        tableFooterView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: tableFooterView.topAnchor, constant: 0).isActive = true
        label.centerXAnchor.constraint(equalTo: tableFooterView.centerXAnchor).isActive = true
    }
}

extension ContactsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return contactsData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        guard let sectionTitle = self.contactsData[section]["section"] as? String else {
            return nil
        }
        return sectionTitle
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let data = self.contactsData[section]["data"] as? [String] else {
            return 0
        }
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell") else {
            return UITableViewCell()
        }
        guard let data = self.contactsData[indexPath.section]["data"] as? [String] else {
            return UITableViewCell()
        }
        
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        let sectionIndexTitles: [String] = contactsData.map {
            $0["section"] as! String
        }
        
        return sectionIndexTitles
    }
}

extension ContactsViewController: UISearchBarDelegate, UISearchControllerDelegate {
    func setSearchBar() {
        let searchController = UISearchController(searchResultsController: nil)
        
        searchController.searchBar.delegate = self
        searchController.delegate = self
        searchController.searchBar.placeholder = "검색"
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
}

