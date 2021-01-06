
import UIKit

class DisplayAndBrightnessViewController: UITableViewController {
    
    var userAppList = [1, 2, 3, 4, 5, 6, 7, 8]
    
//    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.dataSource = self
//        tableView.delegate = self
    }
}

//extension DisplayAndBrightnessViewController: UITableViewDataSource {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 6
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section {
//        case 0: return 2
//        case 1: return 2
//        case 2: return 1
//        case 3: return 3
//        case 4: return 2
//        case 5: return 1
//        default:
//            return 0
//        }
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = "Hellow \(indexPath.section), row: \(indexPath.row)"
//        return cell
//    }
//}
//
//extension DisplayAndBrightnessViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section {
//        case 0: return "화면 스타일"
//        case 1: return "밝기"
//        case 2: return " "
//        case 3: return " "
//        case 4: return " "
//        case 5: return "디스플레이 확대/축소"
//        default:
//            return nil
//        }
//    }
    
    // 헤더 높이
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        if section == 1 {
//            let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 100))
//            header.backgroundColor = .systemGray
//            return header
//        }
//        
//        return nil
//    }

//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 100
//    }
//}
