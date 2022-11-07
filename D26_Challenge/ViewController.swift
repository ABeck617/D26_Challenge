//
//  ViewController.swift
//  D26_Challenge
//
//  Created by Anthony Beckford on 11/7/22.
//


import UIKit

class ViewController: UITableViewController {
    // create a website property
    let websites = ["ign.com", "gamespot.com", "gamestop.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Broswing around"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        content.text = websites[indexPath.row]
        cell.contentConfiguration = content
        return cell
}

    
}


