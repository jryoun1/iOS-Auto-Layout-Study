
import UIKit

class ViewController: UIViewController {
    let settingList = [["User"], ["에어플레인 모드", "Wi-Fi", "Bluetooth", "셀룰러", "개인용 핫스팟"], ["알림", "사운드 및 햅틱", "방해금지 모드", "스크린 타임"], ["일반", "제어 센터", "디스플레이 및 밝기"], ["AppStore"], ["암호", "Mail", "연락처"], ["사진", "카메라"], ["app1", "app2", "app3"] ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingList[section].count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        }
        else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "userInfoCell", for: indexPath)
            cell.imageView?.image = UIImage(systemName: "person.circle.fill")
            cell.textLabel?.text = "오동나무"
            cell.detailTextLabel?.text = "Apple ID, iCloud, 미디어 및 구입"
            return cell
        } else {
            let cell =  tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
            cell.imageView?.image = UIImage(systemName: "pencil.circle")
            cell.textLabel?.text = settingList[indexPath.section][indexPath.row]
            return cell
        }
    }
}

