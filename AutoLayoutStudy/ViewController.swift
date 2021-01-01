//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var settingTableView: UITableView!
    
    private let personalInformation = ["Sign in to your iPhone"]
    private let setting = ["General", "Accessibility", "Privacy", "Display & Brightness"]
    private let passwords = ["Passwords"]
    private let applications = ["Safari", "News", "Maps", "Shortcuts", "Health", "Siri & Search", "Photos", "Game Center"]
    private let developer = ["Developer"]
    
    private lazy var sections = [personalInformation, setting, passwords, applications, developer]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

