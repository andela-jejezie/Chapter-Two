//
//  ListViewController.swift
//  tvzone
//
//  Created by Johnson on 8/27/16.
//  Copyright © 2016 johnsonejezie. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    let names = [
        "Candra Casteel",
        "Natividad Corl",
        "Candyce Leverich",
        "Alene Segawa",
        "Vilma Hammell",
        "Joni Bostwick",
        "Hester Dubuc",
        "Antoinette Aoki",
        "Kitty Dankert",
        "Shavonda Walz",
        "Marisol Predmore",
        "Chiquita Hower",
        "Breanne Dufner"
    ]
}

extension ListViewController:UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = self.names[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.imageView?.image = UIImage(named: "messi")
        }else {
            cell.imageView?.image = UIImage(named: "ronaldo")
        }
        
        return cell
    }
    
}
