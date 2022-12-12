//
//  ViewController.swift
//  CarList
//
//  Created by Antonio Vuono on 12/12/22.
//

import UIKit

class ViewController: UITableViewController {
    var carList = ["BMW", "AUDI", "JEEP", "FERRARI"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = carList[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Show my index path when a click ===> \(indexPath.row)")
    }
}

