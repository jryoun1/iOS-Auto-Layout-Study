//
//  MainViewController.swift
//  AutoLayoutStudy
//
//  Created by Jinho Choi on 2021/01/12.
//

import UIKit

class MainViewController: UIViewController {
    let sectionHeader: [String] = ["ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ"]
    let phoneNumberList: [[String]] = [["강아지", "개나리", "곰돌이"], ["나비", "나", "나침반", "나영석"], ["다치지말고", "두근두근"], ["라면", "러브", "라일락", "라디오", "레스고"], ["마음", "맴돌아", "매미", "메밀묵", "마차", "마징가", "물"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MainViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return phoneNumberList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeader[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneNumberList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "MainViewCell", for: indexPath)
        cell.textLabel?.text = "\(phoneNumberList[indexPath.section][indexPath.row])"
        
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    
}
