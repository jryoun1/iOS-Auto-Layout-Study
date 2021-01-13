//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var countLable: UILabel!
    
    // 친구 이름을 넣어준다.
    var friends = ["Bam","Kim Tae Hyeong", "Jake", "lasagna", "green", "OdongNamu", "Lina", "Lee Joong Seok", "Park Jae Hyeon", "Lee Woon Sik", "YaGom", "zziro", "김태태", "Glenn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.reload()
    }
    
    func reload() {
        self.tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // Set을 사용하면 중복되는 값이 사라지기 때문에 먼저 중복 값을 제외한 수를 리턴
        return Set(self.friends.map { $0.first! }).count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // section이름이 중복되지 않게 Set으로 중복값을 제거해주고, 정렬
        let charactor = Array(Set(self.friends.map { $0.first! })).sorted()[section]
        
        // 해당 section의 charactor과 이름의 첫글자가 일치하는 것만 리턴
        return self.friends.filter { $0.first! == charactor }.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 각 섹션의 첫 문자를 charactor로 선언
        let charactor = Array(Set(self.friends.map { $0.first! })).sorted()[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! NameCell
        cell.nameLabel.text = self.friends.filter { $0.first! == charactor }[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // 각 Section의 이름은 item의 첫 글자로 설정
        return String(Array(Set(friends.map { $0.first! })).sorted()[section])
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == Set(self.friends.map { $0.first! }).count - 1 {
            let footerLabel = UILabel()

            footerLabel.frame = CGRect(x: 20, y: 0, width: view.frame.width - 20, height: 50)
            footerLabel.font = UIFont.systemFont(ofSize: 20)
            footerLabel.textAlignment = .center
            footerLabel.text = "\(self.friends.count)개의 연락처"
            footerLabel.textColor = .gray
            footerLabel.numberOfLines = 0

            let footerView = UIView()
            footerView.addSubview(footerLabel)
            return footerView
        }
        return nil
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        switch section {
        case Set(self.friends.map { $0.first! }).count - 1:
            return 50
        default:
            return CGFloat.leastNormalMagnitude
        }
    }
}
