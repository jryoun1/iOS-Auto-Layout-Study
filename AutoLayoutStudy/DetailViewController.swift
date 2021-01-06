//
//  DetailViewController.swift
//  AutoLayoutStudy
//
//  Created by Jinho Choi on 2021/01/06.
//

import UIKit

class DetailViewController: UIViewController {
    let tableView: UITableView = UITableView(frame: CGRect.zero, style: .grouped)
    
    let hierarchicalData: [[String]] = [["라이트 다크 모드", "자동", "옵션"],["밝기 슬라이드", "True Zone", ], ["Night Shift"], ["자동 잠금", "들어서 깨우기"], ["텍스트 크기", "볼드체 텍스트"], ["보기"]]
    let sectionHeader: [String] = ["화면스타일", "밝기", "", "", "", "디스플레이 확대/축소"]
    let sectionFooter: [String] = ["", "iPhone 디스플레이를 주변광에 맞춰 색상이 다른 환경에서도 일관적으로 보이도록 자동 조정합니다.", "", "", "", "iPhone을 보는 방식을 선택합니다. 확대의 경우 제어기가 크게 표시됩니다. 표준의 경우 더 많은 콘텐츠가 표시됩니다."]
    
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

extension DetailViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return hierarchicalData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeader[section]
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return sectionFooter[section]
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

extension DetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
