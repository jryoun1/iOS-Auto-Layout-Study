
import UIKit

class DetailViewController: UIViewController {
    let section2Title = ["메세지 보내기", "연락처 공유", "즐겨찾기에 추가"]
    let section3Title = ["긴급 연락처에 추가"]
    
    @IBOutlet weak var detailTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailTableView.dataSource = self
    }
    
}

extension DetailViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 2: return 3
        default: return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let phoneNumberCell = detailTableView.dequeueReusableCell(withIdentifier: "PhoneNumberCell", for: indexPath)
            return phoneNumberCell
        case 1:
            // 임시 셀 할당
            let phoneNumberCell = detailTableView.dequeueReusableCell(withIdentifier: "PhoneNumberCell", for: indexPath)
            return phoneNumberCell
        case 2:
            let shareCell = detailTableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
            shareCell.textLabel?.text = section2Title[indexPath.row]
            return shareCell
        default:
            let extraCell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
            extraCell.textLabel?.text = section3Title[indexPath.row]
            return extraCell
        }
    }
        
}

//extension ViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 10
//    }
//}

