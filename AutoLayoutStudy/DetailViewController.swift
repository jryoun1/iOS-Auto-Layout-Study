
import UIKit

class DetailViewController: UIViewController {
    let section2Title = ["메세지 보내기", "연락처 공유", "즐겨찾기에 추가"]
    let section3Title = ["긴급 연락처에 추가"]
    
    @IBOutlet weak var detailTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension DetailViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
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
            
        case 1:
            
        case 2:
            
        default:
            
        }
    }
    
    
}
