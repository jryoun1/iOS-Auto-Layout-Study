//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {
    let tableView: UITableView = UITableView(frame: CGRect.zero, style: .grouped)
    
    let section: [String] = ["서치바부분(프로필)", "General부분", "Passwords부분", "Safari부분"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        return section.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)

        cell.textLabel?.text = "\(indexPath.row) 번째 셀"

        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}
