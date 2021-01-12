import UIKit

class NameListViewController: UIViewController {

    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var callView: UIView!
    @IBOutlet weak var facetimeView: UIView!
    @IBOutlet weak var mmsView: UIView!
    @IBOutlet weak var phoneNumberView: UIView!
    @IBOutlet weak var memoView: UIView!
    @IBOutlet weak var emergencyView: UIView!
    @IBOutlet weak var tableView: UIView!
    
    var infoText: [String] = ["메시지 보내기", "연락처 공유", "즐겨찾기에 추가"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeRoundCorner()
    }
    
    func makeRoundCorner() {
        messageView.layer.cornerRadius = 10
        callView.layer.cornerRadius = 10
        facetimeView.layer.cornerRadius = 10
        mmsView.layer.cornerRadius = 10
        phoneNumberView.layer.cornerRadius = 10
        memoView.layer.cornerRadius = 10
        emergencyView.layer.cornerRadius = 10
        tableView.layer.cornerRadius = 10
    }
}

extension NameListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath)
        
        cell.textLabel?.text = infoText[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
