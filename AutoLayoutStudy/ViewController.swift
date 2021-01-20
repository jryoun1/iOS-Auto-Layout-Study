//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var phonebookTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        phonebookTableView.dataSource = self
        phonebookTableView.delegate = self
        setUpSearchBar()
    }
    
    func setUpSearchBar() {
        let searchBar = UISearchController(searchResultsController: nil)
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.searchController = searchBar
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController: DetailViewController = segue.destination as? DetailViewController else {
            return
        }
        guard let indexPath = sender as? IndexPath else {
            return
        }
        detailViewController.name = data[datas[indexPath.section - 1]]![indexPath.row].name
        detailViewController.phoneNumber = data[datas[indexPath.section - 1]]![indexPath.row].phone
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return datas.count + 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case datas.count + 1:
            return 1
        default:
            return data[datas[section - 1]]!.count
        }
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return datas
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return nil
        case datas.count + 1:
            return nil
        default:
            return datas[section - 1]
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MycardTableViewCell", for: indexPath)
            return cell
        case datas.count + 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TotalPhoneCountTableViewCell", for: indexPath) as! TotalPhoneCountTableViewCell
            var totalDataCount = 0
            for index in 0...datas.count - 1 {
                totalDataCount += data[datas[index]]!.count
            }
            cell.setCountLabel(data: totalDataCount)
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "NameCellTableViewCell", for: indexPath)
            cell.textLabel?.text = data[datas[indexPath.section - 1]]![indexPath.row].name
            return cell
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "detailView", sender: indexPath)
    }
}

