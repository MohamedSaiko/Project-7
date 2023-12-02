//
//  ViewController.swift
//  Project 7
//
//  Created by Mohamed Sayed on 01.12.23.
//

import UIKit

class ViewController: UITableViewController {
    var manager = Manager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.getData { [weak self] petetions in
            self?.manager.petetions = petetions.results
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manager.petetions.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let petetion = manager.petetions[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = petetion.title
        content.secondaryText = petetion.body
        cell.contentConfiguration = content
        return cell
    }
}
