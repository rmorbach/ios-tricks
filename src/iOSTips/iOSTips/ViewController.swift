//
//  ViewController.swift
//  iOSTips
//
//  Created by Rodrigo Morbach on 22/07/19.
//  Copyright © 2019 Morbach Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.dataSource = self
        tableView?.tableFooterView = UIView(frame: .zero)
    }

}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell") else {
            return UITableViewCell(style: .default, reuseIdentifier: "defaultCell")
        }
        cell.textLabel?.text = "This is row \(indexPath.row)"
        return cell
    }
}

