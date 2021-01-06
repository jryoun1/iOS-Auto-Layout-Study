//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class SettingsViewController: UIViewController {
    let entries = [[""], ["General", "Accessibility", "Privacy", "Display & Brightness"], ["Passwords"], ["Safari", "News", "Maps", "Shortcuts", "Health", "Siri & Search", "Photos", "Game Center"], ["Developer"]]
    
    @IBOutlet weak var settingsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 80
        }
        else {
            return UITableView.automaticDimension
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return entries.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = settingsTableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
            var cellContentConfiguration = cell.defaultContentConfiguration()
            cellContentConfiguration.text = "Sign in to your iPhone"
            cellContentConfiguration.secondaryText = "Set up iCloud, the App Store, and more."
            cellContentConfiguration.image = UIImage(systemName: "person.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: CGFloat(50)))
            cellContentConfiguration.textProperties.color = .systemBlue
            cellContentConfiguration.secondaryTextProperties.color = .systemGray
            cellContentConfiguration.imageProperties.tintColor = .systemGray
            cellContentConfiguration.imageProperties.reservedLayoutSize = CGSize(width: 60, height: 60)
            cell.contentConfiguration = cellContentConfiguration
            return cell
        } else {
            let cell = settingsTableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath)
            var cellContentConfiguration = cell.defaultContentConfiguration()
            cellContentConfiguration.text = entries[indexPath.section][indexPath.row]
            cellContentConfiguration.image = UIImage(systemName: "app")
            cell.contentConfiguration = cellContentConfiguration
            return cell
        }
    }
}

