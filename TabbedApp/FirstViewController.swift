//
//  FirstViewController.swift
//  TabbedApp
//
//  Created by Nisum on 12/4/18.
//  Copyright © 2018 Nisum. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var list: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fillList()
        tableView.reloadData()
    }

    // MARK: UITableViewDelegate, UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellIdentifier")
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }

    func fillList() {
        for index in 0...1000 {
            if list.count == 100 {
                break
            }
            if index % 2 == 0 {
                list.append("\(index)")
            }
        }
    }
}

