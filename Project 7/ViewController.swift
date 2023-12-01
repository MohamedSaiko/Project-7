//
//  ViewController.swift
//  Project 7
//
//  Created by Mohamed Sayed on 01.12.23.
//

import UIKit

class ViewController: UITableViewController {
    var petetions = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petetions.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = "Title goes here"
        content.secondaryText = "Subtitle goes here"
        cell.contentConfiguration = content
        return cell
    }
}
