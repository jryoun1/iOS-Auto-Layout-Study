import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var numberOfNameList: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var items: [String] = ["Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot", "Golf", "Hotel", "India", "Juliet", "Kilo", "Lima", "Mike", "November", "Oscar", "Papa", "Quebec", "Romeo", "Sierra", "Tango", "Uniform", "Victor", "Whiskey", "X-ray", "Yankee", "Zulu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        numberOfNameList.text = "\(items.count)개의 연락처"
        
        self.reload()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        if self.searchBar.text?.isEmpty == true {
            return Array(Set(self.items.map{ $0.first! })).count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if self.searchBar.text?.isEmpty == true {
            return String(Array(Set(self.items.map{ $0.first! })).sorted()[section])
        } else {
            return String(Array(Set(self.items.filter{ $0.contains(self.searchBar.text!) }.map{ $0.first! })).sorted()[section])
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let charactor = Array(Set(self.items.map{ $0.first! })).sorted()[section]
        
        if self.searchBar.text?.isEmpty == true {
            return self.items.filter{ $0.first! == charactor }.count
        }
        return self.items.filter{ $0.first! == charactor }.filter{ $0.contains(self.searchBar.text!) }.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let charactor = Array(Set(self.items.map{ $0.first! })).sorted()[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCellList", for: indexPath)
        
        if self.searchBar.text?.isEmpty == true {
            cell.textLabel?.text = self.items.filter{ $0.first! == charactor }[indexPath.row]
        } else {
            cell.textLabel?.text = self.items.filter{ $0.first! == charactor }.filter{ $0.contains(self.searchBar.text!) }[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func reload() {
        self.tableView.reloadData()
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.reload()
    }
}
