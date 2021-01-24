//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {
    private let names = ["Elena Blasco, Maria Elena", "Howard Baker", "Jean Claude Van Damme", "Nanette Fabray", "Rebecca of Sunnybrook Farm", "Kimberly Williams"]
    let tableView: UITableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        setUpNavigationBar()
        setUpTableView()
    }
    
    private func setUpNavigationBar() {
        self.navigationItem.title = "Contacts List"
        let button = UIBarButtonItem(title: "About", style: .plain, target: nil, action: nil)
        self.navigationItem.leftBarButtonItem = button
    }
    
    private func setUpTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        let safeLayoutGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: safeLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeLayoutGuide.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: safeLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeLayoutGuide.bottomAnchor)
        ])
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        customCell.setUpLabelText(name: names[indexPath.row])
        customCell.accessoryType = UITableViewCell.AccessoryType.detailButton
        return customCell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? CustomTableViewCell else {
            return
        }
        cell.isDetailButtonClicked = !cell.isDetailButtonClicked
        if cell.isDetailButtonClicked {
            cell.dateLabel.text = "27-01-2021 12:27 AM"
            cell.dateLabel.isHidden = false
        }
        else {
            cell.dateLabel.text = ""
            cell.dateLabel.isHidden = true
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

