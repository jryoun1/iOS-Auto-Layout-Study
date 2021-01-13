//
//  DetailViewController.swift
//  AutoLayoutStudy
//
//  Created by Jinho Choi on 2021/01/12.
//

import UIKit

class DetailViewController: UIViewController {
    
    let detailList: [[String]] = [["전화번호"],["메모"],["메시지 보내기", "연락처 공유","즐겨찾기에 추가"], ["긴급 연락처에 추가"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension DetailViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return detailList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SubTitleTableViewCell", for: indexPath)
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MemoTableViewCell", for: indexPath) as? MemoTableViewCell else { return UITableViewCell() }
            cell.titleLabel.text = "\(detailList[indexPath.section][indexPath.row])"
            cell.textView.text = ""
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BasicTableViewCell", for: indexPath)
            cell.textLabel?.text = "\(detailList[indexPath.section][indexPath.row])"
            cell.textLabel?.textColor = .blue
            return cell
        }
    }
}

extension DetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 {
            let height:CGFloat = 80
            return height
        }
        return 43.5
    }
}
