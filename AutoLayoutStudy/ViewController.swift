//
//  ViewController.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2020/12/23.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let entries = ["General", "Accessibility", "Privacy", "Passwords", "Safari", "News", "Maps", "Shortcuts", "Health", "Siri & Search", "Photos", "Game Center", "Developer"]
    
    @IBOutlet weak var settingsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

