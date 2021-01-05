//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {
    let tableView: UITableView = UITableView(frame: CGRect.zero, style: .grouped)
    
    let hierarchicalData: [[String]] = [["Sign in to your iPhone"],["General", "Accessibility", "Privacy"], ["Password"], ["Safari", "News", "Maps", "Shortcuts", "Health", "Siri", "Photo", "Game Center"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(hierarchicalData.count)
        print(hierarchicalData[1][2])
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        self.view.addSubview(self.tableView)
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        
        let tableViewTopAnchor = tableView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0)
        tableViewTopAnchor.isActive = true
        let tableViewLeadingAnchor = tableView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 0)
        tableViewLeadingAnchor.isActive = true
        let tableViewTrailingAnchor = tableView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: 0)
        tableViewTrailingAnchor.isActive = true
        let tableViewBottomAnchor = tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: 0)
        tableViewBottomAnchor.isActive = true
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return hierarchicalData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hierarchicalData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)

        cell.textLabel?.text = "\(hierarchicalData[indexPath.section][indexPath.row])"
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}
