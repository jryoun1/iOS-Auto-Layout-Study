//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {
    private let firstLetterArray = ["ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ", "ㅂ", "ㅅ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    private var people = [["고구마", "고랭지배추", "가나초콜릿"], ["나무", "노고지리", "누텔라", "네네치킨"], ["다다익선", "도롱뇽", "두부", "다이소"], ["라면", "리어카"], [], ["바이크", "복권", "비빔밥"], ["사랑", "상처", "수영장", "세탁소"], ["아저씨"], ["제이크", "제이콥", "준스"], ["차두리"], [], [], [], ["학교", "힌두교"], ["Alex", "AutoLayout"], ["Bruce"], ["Cat", "CookBook", "Cake", "Cocoatouch"], [], [], [], ["Group", "Google"], [], [], [], [], ["Lina"], ["Mino", "Moo"], ["Naver", "Never", "Newspaper"], [], [], [], [], ["Star", "Strawberry", "Sing"], [], [], ["Vlog", "Victory"], [], [], ["YG"], ["Zero"]]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        setNavigationSearchBar()
        setNavigationTitle()
    }


}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return firstLetterArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let basicCell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        basicCell.textLabel?.text = people[indexPath.section][indexPath.row]
        
        return basicCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return firstLetterArray[section]
    }
    
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return index
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return firstLetterArray
    }
}

// MARK: NavigationBar
extension ViewController {
    func setNavigationSearchBar() {
        let searchBarController = UISearchController()
        searchBarController.searchBar.placeholder = "검색"
        
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.searchController = searchBarController
    }
    
    func setNavigationTitle() {
        navigationItem.title = "연락처"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
