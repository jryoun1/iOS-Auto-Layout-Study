import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var items: [String] = ["Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot", "Golf", "Hotel", "India", "Juliet", "Kilo", "Lima", "Mike", "November", "Oscar", "Papa", "Quebec", "Romeo", "Sierra", "Tango", "Uniform", "Victor", "Whiskey", "X-ray", "Yankee", "Zulu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return Array(Set(self.items.map{ $0.first! })).count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(Array(Set(self.items.map{ $0.first! })).sorted()[section])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let charactor = Array(Set(self.items.map{ $0.first! })).sorted()[section]
        return self.items.filter{ $0.first! == charactor }.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let charactor = Array(Set(self.items.map{ $0.first! })).sorted()[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCellList", for: indexPath)
        cell.textLabel?.text = self.items.filter{ $0.first == charactor }[indexPath.row]
        return cell
    }
}

