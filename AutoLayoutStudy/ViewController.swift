//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var settingTableView: UITableView!
    
    private let personalInformation = ["Sign in to your iPhone"]
    private let setting = ["General", "Accessibility", "Privacy", "Display & Brightness"]
    private let passwords = ["Passwords"]
    private let applications = ["Safari", "News", "Maps", "Shortcuts", "Health", "Siri & Search", "Photos", "Game Center"]
    private let developer = ["Developer"]
    
    private lazy var sections = [personalInformation, setting, passwords, applications, developer]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingTableView.dataSource = self
        settingTableView.delegate = self
        setUpSearchBar()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let displayDetailTableViewController = segue.destination as? DisplayDetailTableViewController else {
            return
        }
        guard let cell = sender as? OtherSettingTableViewCell else {
            return
        }
        displayDetailTableViewController.displayDetailViewTitle = cell.settingTitle.text
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        for index in 0..<sections.count {
            if section == index {
                return sections[index].count
            }
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return .leastNormalMagnitude
        }
        else if section == 4{
            return 40
        }
        else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = selectLoadCell(by: indexPath)
        return cell
    }
    
    func selectLoadCell(by indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section, indexPath.row) {
        case (0, 0):
            let personalInfoCell = settingTableView.dequeueReusableCell(withIdentifier: "PersonInfoCell", for: indexPath) as! PersonInfoTableViewCell
            personalInfoCell.setLabel(data: sections[indexPath.section][indexPath.row])
            return personalInfoCell
        default:
            let otherSettingCell = settingTableView.dequeueReusableCell(withIdentifier: "OtherSettingCell", for: indexPath) as! OtherSettingTableViewCell
            otherSettingCell.accessoryType = .disclosureIndicator
            otherSettingCell.setLabel(data: sections[indexPath.section][indexPath.row])
            return otherSettingCell
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        settingTableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController {
    func setUpSearchBar() {
        let searchBarController = UISearchController(searchResultsController: nil)
        searchBarController.hidesNavigationBarDuringPresentation = true
        searchBarController.obscuresBackgroundDuringPresentation = true
        navigationItem.hidesSearchBarWhenScrolling = true
        
        searchBarController.searchBar.placeholder = "검색"
        navigationItem.searchController = searchBarController
    }
}
